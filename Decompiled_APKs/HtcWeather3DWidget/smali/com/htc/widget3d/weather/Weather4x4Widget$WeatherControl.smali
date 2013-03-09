.class Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
.super Ljava/lang/Object;
.source "Weather4x4Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/Weather4x4Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeatherControl"
.end annotation


# instance fields
.field btnFooter:Lcom/htc/fusion/fx/controls/FxButton;

.field mMainSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

.field mMainScene:Lcom/htc/fusion/fx/FxScene;

.field mMainStatePlaybackListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;",
            ">;"
        }
    .end annotation
.end field

.field mWeatherIndex:I

.field m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

.field m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field m_nForcastIdleFrame:I

.field m_nMainIdleFrame:I

.field m_nMainSceneIdleFrame:I

.field m_nTiltEndFrame:I

.field m_nTiltStartFrame:I

.field final synthetic this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

.field tlCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field tlCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field tlCurTemp_small:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field tlCurrHi:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field tlCurrLow:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field tlDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

.field tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

.field tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

.field tlIndex:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 1
    .parameter

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mWeatherIndex:I

    .line 1048
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$900(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v0

    new-array v0, v0, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1060
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$900(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v0

    new-array v0, v0, [Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1063
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$900(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v0

    new-array v0, v0, [Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1064
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$900(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v0

    new-array v0, v0, [Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1074
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$1;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainStatePlaybackListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1094
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl$2;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mRefreshClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1121
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1042
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setToIdleState()V

    return-void
.end method

.method private setToIdleState()V
    .locals 3

    .prologue
    .line 1363
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 1365
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1366
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_nMainIdleFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1369
    :cond_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_1

    .line 1371
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 1372
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_nMainSceneIdleFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->setFrame(F)V

    .line 1375
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1376
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 1378
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1379
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_nForcastIdleFrame:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1375
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1382
    :cond_3
    return-void
.end method


# virtual methods
.method public HandleTiltChange(F)V
    .locals 3
    .parameter "fTilt"

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_nTiltStartFrame:I

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_nTiltEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 1244
    :cond_0
    return-void
.end method

.method public Init(Lcom/htc/fusion/fx/FxTimelineControl;)Z
    .locals 12
    .parameter "fxParent"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1125
    if-nez p1, :cond_0

    move v4, v5

    .line 1237
    :goto_0
    return v4

    .line 1130
    :cond_0
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1132
    const/16 v4, 0x1b

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v7, 0x7f06000a

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "timeline.forecast_01_first"

    aput-object v4, v3, v6

    const-string v4, "timeline.forecast_02_first"

    aput-object v4, v3, v9

    const-string v4, "timeline.forecast_03_first"

    aput-object v4, v3, v10

    const-string v4, "timeline.forecast_04_first"

    aput-object v4, v3, v11

    const/4 v4, 0x5

    const-string v7, "dynamicimage.weather_s_01"

    aput-object v7, v3, v4

    const/4 v4, 0x6

    const-string v7, "dynamicimage.weather_s_02"

    aput-object v7, v3, v4

    const/4 v4, 0x7

    const-string v7, "dynamicimage.weather_s_03"

    aput-object v7, v3, v4

    const/16 v4, 0x8

    const-string v7, "dynamicimage.weather_s_04"

    aput-object v7, v3, v4

    const/16 v4, 0x9

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f06000f

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0xa

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f060010

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0xb

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f060009

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0xc

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f060006

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0xd

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f06000e

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0xe

    const-string v7, "button.footer"

    aput-object v7, v3, v4

    const/16 v4, 0xf

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f060007

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x10

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f060008

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x11

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f060012

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x12

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f060013

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x13

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f060016

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x14

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f060017

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x15

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f06001b

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x16

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f06001a

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x17

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f06001e

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x18

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f06001f

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x19

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v8, 0x7f060004

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/16 v4, 0x1a

    const-string v7, "textlabel.citytemp_02"

    aput-object v7, v3, v4

    .line 1162
    .local v3, szChild:[Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v4, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 1163
    .local v1, itemArray:[Lcom/htc/fusion/fx/FxObject;
    aget-object v4, v1, v5

    check-cast v4, Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    .line 1164
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v4, v1, v6

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v4, v7, v5

    .line 1165
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v4, v1, v9

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v4, v7, v6

    .line 1166
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v4, v1, v10

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v4, v7, v9

    .line 1167
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v4, v1, v11

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    aput-object v4, v7, v10

    .line 1168
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v4, 0x5

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v4, v7, v5

    .line 1169
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v4, 0x6

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v4, v7, v6

    .line 1170
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/4 v4, 0x7

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v4, v7, v9

    .line 1171
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const/16 v4, 0x8

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v4, v7, v10

    .line 1172
    const/16 v4, 0x9

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1173
    const/16 v4, 0xa

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1174
    const/16 v4, 0xb

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1175
    const/16 v4, 0xc

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlIndex:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1176
    const/16 v4, 0xd

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1177
    const/16 v4, 0xe

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->btnFooter:Lcom/htc/fusion/fx/controls/FxButton;

    .line 1178
    const/16 v4, 0xf

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrHi:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1179
    const/16 v4, 0x10

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrLow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1180
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/16 v4, 0x11

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v4, v7, v5

    .line 1181
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/16 v4, 0x12

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v4, v7, v5

    .line 1182
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/16 v4, 0x13

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v4, v7, v6

    .line 1183
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/16 v4, 0x14

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v4, v7, v6

    .line 1184
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/16 v4, 0x15

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v4, v7, v9

    .line 1185
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/16 v4, 0x16

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v4, v7, v9

    .line 1186
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/16 v4, 0x17

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v4, v7, v10

    .line 1187
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/16 v4, 0x18

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    aput-object v4, v7, v10

    .line 1188
    const/16 v4, 0x19

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1189
    const/16 v4, 0x1a

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp_small:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1192
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_1

    .line 1193
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1194
    :cond_1
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_2

    .line 1195
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1196
    :cond_2
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_3

    .line 1197
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1198
    :cond_3
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp_small:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_4

    .line 1199
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp_small:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1200
    :cond_4
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlIndex:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_5

    .line 1201
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlIndex:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1202
    :cond_5
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_6

    .line 1203
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1204
    :cond_6
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrHi:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_7

    .line 1205
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrHi:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1206
    :cond_7
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrLow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_8

    .line 1207
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrLow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1208
    :cond_8
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_9

    .line 1209
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1211
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I
    invoke-static {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$900(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 1213
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v4, v4, v0

    if-eqz v4, :cond_a

    .line 1214
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v4, v4, v0

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1215
    :cond_a
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v4, v4, v0

    if-eqz v4, :cond_b

    .line 1216
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v4, v4, v0

    const-string v7, ""

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1211
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1220
    :cond_c
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v7, "LoopIn"

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    .line 1221
    .local v2, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v2, :cond_d

    .line 1222
    iget v4, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_nMainIdleFrame:I

    .line 1223
    :cond_d
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v4, v4, v5

    if-eqz v4, :cond_e

    .line 1225
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v4, v4, v5

    const-string v5, "Idle"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    .line 1226
    if-eqz v2, :cond_e

    .line 1227
    iget v4, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_nForcastIdleFrame:I

    .line 1230
    :cond_e
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "tilt"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v2

    .line 1231
    if-eqz v2, :cond_f

    .line 1233
    iget v4, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_nTiltStartFrame:I

    .line 1234
    iget v4, v2, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_nTiltEndFrame:I

    :cond_f
    move v4, v6

    .line 1237
    goto/16 :goto_0
.end method

.method public getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/fusion/fx/IMessageSource",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public playFadeOutMarker()V
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "Exit"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "Exit"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 1283
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playForecastOutAnimation()V

    .line 1284
    return-void
.end method

.method public playForecastInAnimation()V
    .locals 4

    .prologue
    .line 1319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1321
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1322
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    const-string v2, "Build"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1319
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1324
    :cond_0
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tlForecast["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] == null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1333
    :cond_1
    return-void
.end method

.method public playForecastOutAnimation()V
    .locals 3

    .prologue
    .line 1294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1295
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlForecast:[Lcom/htc/fusion/fx/FxTimelineControl;

    aget-object v1, v1, v0

    const-string v2, "Exit"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1304
    :cond_1
    return-void
.end method

.method public playMainInAnimation()V
    .locals 4

    .prologue
    .line 1308
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    monitor-enter v1

    .line 1309
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v3, 0x7f060043

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 1311
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1200(Lcom/htc/widget3d/weather/Weather4x4Widget;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mWeatherIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget3d/weather/WeatherInfo;

    iget v0, v0, Lcom/htc/widget3d/weather/WeatherInfo;->mMainIcon:I

    invoke-virtual {v1, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->playSoundEffect(I)V

    .line 1315
    return-void

    .line 1311
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public playMarker(Ljava/lang/String;)V
    .locals 1
    .parameter "szMarker"

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;)V

    .line 1290
    :cond_1
    return-void
.end method

.method public playMarker(Ljava/lang/String;IFZ)V
    .locals 1
    .parameter "szMarker"
    .parameter "nPlaybackMode"
    .parameter "fPlaybackSpeed"
    .parameter "bTriggerEvent"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 1355
    return-void
.end method

.method public setNoCityView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1385
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setNoCityView"

    invoke-static {v3, v4}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_0

    .line 1388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v5, 0x7f060052

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v5, 0x7f06005a

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1389
    .local v1, nocity_msg:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setWarningMessage(Ljava/lang/String;)V

    .line 1390
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1393
    .end local v1           #nocity_msg:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v3, :cond_1

    .line 1394
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 1396
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I
    invoke-static {v3}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$900(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1398
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 1399
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1396
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1403
    :cond_3
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_4

    .line 1404
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1407
    :cond_4
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlIndex:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_5

    .line 1408
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlIndex:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1411
    :cond_5
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_6

    .line 1412
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1415
    :cond_6
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp_small:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_7

    .line 1417
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1418
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp_small:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1421
    :cond_7
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrHi:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_8

    .line 1422
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrHi:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1424
    :cond_8
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrLow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_9

    .line 1425
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrLow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1428
    :cond_9
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    .line 1429
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v3, v3, v0

    if-eqz v3, :cond_a

    .line 1430
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v3, v3, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1432
    :cond_a
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v3, v3, v0

    if-eqz v3, :cond_b

    .line 1433
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v3, v3, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1428
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1437
    :cond_c
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v3, :cond_d

    .line 1439
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getRefreshString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    .line 1440
    .local v2, update:Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v3, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 1443
    .end local v2           #update:Landroid/text/SpannableString;
    :cond_d
    return-void
.end method

.method public setRefreshListener()V
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->btnFooter:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->btnFooter:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1266
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mRefreshClickListener:Lcom/htc/fusion/fx/MessageListener;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->btnFooter:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mRefreshClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1272
    :goto_0
    return-void

    .line 1269
    :cond_0
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerRefreshListener - mRefreshClickListener null"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :cond_1
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerRefreshListener - btnFooter null"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVisilbe(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1277
    :cond_0
    return-void
.end method

.method public setWarningMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "szMsg"

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1253
    :cond_0
    return-void
.end method

.method public setWarningMsgVisbile(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1259
    :cond_0
    return-void
.end method

.method public declared-synchronized setWeatherInfo(Lcom/htc/widget3d/weather/WeatherInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    .line 1446
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setWeatherInfo"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    if-nez p1, :cond_0

    .line 1448
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setWeatherInfo info == null!!"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1629
    :goto_0
    monitor-exit p0

    return-void

    .line 1452
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setWeatherInfo start"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mIndex:I

    iput v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mWeatherIndex:I

    .line 1456
    iget-boolean v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->hasData:Z

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mDescription:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1458
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cur="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurTemp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Hi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurHitemp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Lo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurLowtemp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->hasData:Z

    .line 1462
    const-string v7, ""

    iput-object v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurHitemp:Ljava/lang/String;

    .line 1463
    const-string v7, ""

    iput-object v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurLowtemp:Ljava/lang/String;

    .line 1464
    const-string v7, ""

    iput-object v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurTemp:Ljava/lang/String;

    .line 1465
    const-string v7, ""

    iput-object v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mUpdateTime:Ljava/lang/String;

    .line 1466
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No weather condition, City = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :cond_1
    iget-boolean v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->hasData:Z

    if-eqz v7, :cond_b

    .line 1471
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v7, :cond_2

    .line 1472
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1497
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v7, :cond_3

    .line 1498
    iget-object v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCity:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v9, 0x7f060067

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1500
    iget-object v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCity:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    const v10, 0x7f060067

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1502
    .local v2, city_name:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-virtual {v7, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getCityString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    .line 1503
    .local v1, city:Landroid/text/SpannableString;
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v7, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 1509
    .end local v1           #city:Landroid/text/SpannableString;
    .end local v2           #city_name:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlIndex:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v7, :cond_4

    .line 1510
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlIndex:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mPageNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1513
    :cond_4
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v7, :cond_5

    .line 1514
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlDescription:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1517
    :cond_5
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp_small:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v7, :cond_6

    .line 1519
    iget-object v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurTemp:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_11

    .line 1521
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp_small:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1522
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp_small:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurTemp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1523
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1533
    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrHi:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v7, :cond_7

    .line 1534
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrHi:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurHitemp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1536
    :cond_7
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrLow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v7, :cond_8

    .line 1537
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurrLow:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurLowtemp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1540
    :cond_8
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    array-length v7, v7

    if-ge v3, v7, :cond_12

    .line 1541
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v7, v7, v3

    if-eqz v7, :cond_9

    .line 1542
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFTempHL:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v7, v7, v3

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->arrHLTemperature:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1544
    :cond_9
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v7, v7, v3

    if-eqz v7, :cond_a

    .line 1545
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlFCurrTemp:[Lcom/htc/fusion/fx/controls/FxTextLabel;

    aget-object v7, v7, v3

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->arrWeekDay:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1540
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1475
    .end local v3           #i:I
    :cond_b
    iget-object v8, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1477
    :try_start_2
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v7, :cond_c

    .line 1478
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlNoData:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1480
    :cond_c
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v7, :cond_d

    .line 1481
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v9, "enter removeScene"

    invoke-static {v7, v9}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->removeScene(Lcom/htc/fusion/fx/FxObject;)V

    .line 1483
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v9, "leave removeScene"

    invoke-static {v7, v9}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    :cond_d
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I
    invoke-static {v7}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$900(Lcom/htc/widget3d/weather/Weather4x4Widget;)I

    move-result v7

    if-ge v3, v7, :cond_f

    .line 1488
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v7, v7, v3

    if-eqz v7, :cond_e

    .line 1489
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v7, v7, v3

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1486
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1492
    :cond_f
    monitor-exit v8

    goto/16 :goto_1

    .end local v3           #i:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1446
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1505
    :cond_10
    :try_start_4
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCity:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCity:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1527
    :cond_11
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1528
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurTemp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1529
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlCurTemp_small:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_3

    .line 1549
    .restart local v3       #i:I
    :cond_12
    iget-boolean v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->hasData:Z

    if-eqz v7, :cond_19

    .line 1551
    iget-object v8, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    monitor-enter v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1552
    :try_start_5
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWeatherInfo enter(4x4), mFxCurWeatherCtr = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v10}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$400(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Main scene: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mMainIcon:I

    sget-boolean v11, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isPortrait:Z

    invoke-static {v10, v11}, Lcom/htc/widget3d/weather/util/WeatherUtil;->getMainScenePath(IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    sget-boolean v7, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isPortrait:Z

    if-eqz v7, :cond_17

    .line 1563
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Port/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mMainIcon:I

    sget-boolean v10, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isPortrait:Z

    invoke-static {v9, v10}, Lcom/htc/widget3d/weather/util/WeatherUtil;->getMainScenePath(IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    .line 1570
    :goto_6
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainSC:Lcom/htc/fusion/fx/controls/FxSceneContainer;

    iget-object v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v7, v9}, Lcom/htc/fusion/fx/controls/FxSceneContainer;->setScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 1573
    :cond_13
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v7, :cond_18

    .line 1574
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v7}, Lcom/htc/fusion/fx/FxScene;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v7

    iget-object v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainStatePlaybackListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v7, v9}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1575
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    const-string v9, "timeline.rain"

    invoke-virtual {v7, v9}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1576
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v7, :cond_14

    .line 1577
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 1580
    :cond_14
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    const-string v9, "LoopIn"

    invoke-virtual {v7, v9}, Lcom/htc/fusion/fx/FxScene;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    .line 1581
    .local v4, marker:Lcom/htc/fusion/fx/Marker;
    if-eqz v4, :cond_15

    .line 1582
    iget v7, v4, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_nMainSceneIdleFrame:I

    .line 1587
    .end local v4           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_15
    :goto_7
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setWeatherInfo leave(4x4), mFxCurWeatherCtr = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #getter for: Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    invoke-static {v10}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$400(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    move-result-object v10

    invoke-virtual {p0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1593
    :goto_8
    :try_start_6
    iget-boolean v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->hasData:Z

    if-eqz v7, :cond_1b

    .line 1594
    const/4 v3, 0x0

    :goto_9
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    array-length v7, v7

    if-ge v3, v7, :cond_1b

    .line 1596
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mForecastIcon:[I

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getForecastImg(I)I

    move-result v5

    .line 1598
    .local v5, nImgID:I
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v7, v7, v3

    if-eqz v7, :cond_16

    .line 1600
    iget-object v7, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mForecastIcon:[I

    aget v7, v7, v3

    if-eqz v7, :cond_1a

    .line 1603
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v7, v7, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1604
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;
    invoke-static {v7}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$1300(Lcom/htc/widget3d/weather/Weather4x4Widget;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1605
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_16

    .line 1607
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v7, v7, v3

    invoke-virtual {v7, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1594
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_16
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1567
    .end local v5           #nImgID:I
    :cond_17
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Land/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mMainIcon:I

    sget-boolean v10, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isPortrait:Z

    invoke-static {v9, v10}, Lcom/htc/widget3d/weather/util/WeatherUtil;->getMainScenePath(IZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    goto/16 :goto_6

    .line 1588
    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1585
    :cond_18
    :try_start_9
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v9, "mMainScene null , can\'t set playback complete listener."

    invoke-static {v7, v9}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_7

    .line 1590
    :cond_19
    :try_start_a
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "info.hasData = false!!"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1612
    .restart local v5       #nImgID:I
    :cond_1a
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_ArrfxImg:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v7, v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_a

    .line 1619
    .end local v5           #nImgID:I
    :cond_1b
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v7, :cond_1c

    .line 1621
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->this$0:Lcom/htc/widget3d/weather/Weather4x4Widget;

    iget-object v8, p1, Lcom/htc/widget3d/weather/WeatherInfo;->mUpdateTime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getRefreshString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    .line 1622
    .local v6, update:Landroid/text/SpannableString;
    iget-object v7, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v7, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 1628
    .end local v6           #update:Landroid/text/SpannableString;
    :goto_b
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "setWeatherInfo end"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1625
    :cond_1c
    invoke-static {}, Lcom/htc/widget3d/weather/Weather4x4Widget;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tlUpdateTime == null ! isPortrait="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isPortrait:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_b
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1337
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 1345
    :cond_1
    return-void
.end method
