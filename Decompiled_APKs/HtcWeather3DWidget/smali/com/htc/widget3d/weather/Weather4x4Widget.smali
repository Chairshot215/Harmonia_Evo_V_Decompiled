.class public Lcom/htc/widget3d/weather/Weather4x4Widget;
.super Lcom/htc/widget3d/weather/WeatherWidgetBase;
.source "Weather4x4Widget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget3d/weather/Weather4x4Widget$SwitchWeatherCtl;,
        Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;,
        Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;,
        Lcom/htc/widget3d/weather/Weather4x4Widget$InitModel;,
        Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;,
        Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;,
        Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;,
        Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;,
        Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    }
.end annotation


# static fields
.field private static final DEFAULT_OVER_TIME:J = 0x493e0L

.field private static final DEFAULT_UPDATE_TIME:J = 0x708L

.field private static final SZ_DEFAULT_M10PATH_LAND:Ljava/lang/String; = "Land/"

.field private static final SZ_DEFAULT_M10PATH_PORT:Ljava/lang/String; = "Port/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private WEATHER_COUNT:I

.field private final _day:I

.field private final _night:I

.field private final _rain:I

.field private isNeedInitState:Z

.field private isWeatherDataAvalible:Z

.field private landScene:Lcom/htc/fusion/fx/FxScene;

.field private mBoolSyncWhenOpen:Z

.field private mCouldyFly:Lcom/htc/fusion/fx/FxTimelineControl;

.field public mCurrIndex:I

.field private mDataReceiver:Landroid/content/BroadcastReceiver;

.field private mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

.field private mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

.field private mGetFxControls:Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;

.field private mInitModelRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitModel;

.field private mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

.field private mIsCityChanged:Z

.field private mNextIndex:I

.field private mPlaybackListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;",
            ">;"
        }
    .end annotation
.end field

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

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

.field private mUpdateWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;

.field private mUpdatedCurrentCityRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;

.field private mWeatherInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/widget3d/weather/WeatherInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private m_TimelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

.field private m_bAddCity:Z

.field private m_bInitial:Z

.field private m_bSwipeCity:Z

.field private m_fxScene:Lcom/htc/fusion/fx/FxScene;

.field private m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private m_nTiltEndFrame:I

.field private m_nTiltStartFrame:I

.field private numberOfForecaseDay:I

.field private portScene:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/htc/widget3d/weather/Weather4x4Widget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;-><init>()V

    .line 61
    iput v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->WEATHER_COUNT:I

    .line 62
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I

    .line 81
    iput v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->_day:I

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->_night:I

    .line 83
    iput v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->_rain:I

    .line 85
    iput-boolean v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bInitial:Z

    .line 86
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->isWeatherDataAvalible:Z

    .line 87
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->isNeedInitState:Z

    .line 96
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mIsCityChanged:Z

    .line 100
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bAddCity:Z

    .line 102
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mBoolSyncWhenOpen:Z

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUIHandler:Landroid/os/Handler;

    .line 1780
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$4;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$4;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/widget3d/weather/Weather4x4Widget;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatedCurrentCityRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/widget3d/weather/Weather4x4Widget;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget3d/weather/Weather4x4Widget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->initWeatherInfo()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->updateWeatherInfo()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->playCurrUI()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->initWeatherControl()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/widget3d/weather/Weather4x4Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->resetUpdateTime()V

    return-void
.end method

.method static synthetic access$1902(Lcom/htc/widget3d/weather/Weather4x4Widget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mIsCityChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/widget3d/weather/Weather4x4Widget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/widget3d/weather/Weather4x4Widget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bAddCity:Z

    return p1
.end method

.method static synthetic access$202(Lcom/htc/widget3d/weather/Weather4x4Widget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/widget3d/weather/Weather4x4Widget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/widget3d/weather/Weather4x4Widget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/widget3d/weather/Weather4x4Widget;Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/widget3d/weather/Weather4x4Widget;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/widget3d/weather/Weather4x4Widget;Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;)Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/widget3d/weather/Weather4x4Widget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget3d/weather/Weather4x4Widget;Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->switchWeatherCtl(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/widget3d/weather/Weather4x4Widget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget3d/weather/Weather4x4Widget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I

    return v0
.end method

.method private checkUpdateTime(I)Z
    .locals 8
    .parameter "currentId"

    .prologue
    const/4 v3, 0x0

    .line 314
    sget-object v4, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUpdateTime , city_idx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v3

    .line 319
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 320
    .local v1, current_time:J
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v4, p1}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v0

    .line 322
    .local v0, cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    if-eqz v0, :cond_0

    .line 323
    sget-object v4, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUpdateTime , current city ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/widget3d/weather/data/CityInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current_time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cityinfo.getUpdateTime()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getUpdateTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getUpdateTime()J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 326
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private getResString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWeatherType(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 775
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWeatherType id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x24

    if-eq p1, v0, :cond_0

    const/16 v0, 0x13

    if-ne p1, v0, :cond_1

    .line 777
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    .line 783
    :goto_0
    return v0

    .line 779
    :cond_1
    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x22

    if-eq p1, v0, :cond_2

    const/16 v0, 0x23

    if-eq p1, v0, :cond_2

    const/16 v0, 0x25

    if-eq p1, v0, :cond_2

    const/16 v0, 0x26

    if-eq p1, v0, :cond_2

    const/16 v0, 0x27

    if-eq p1, v0, :cond_2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x29

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_3

    .line 780
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    goto :goto_0

    .line 783
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initWeatherControl()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const v8, 0x7f060052

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 552
    sget-object v4, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v5, "InitWeatherControl"

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    .line 556
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v4, :cond_0

    .line 557
    sget-object v4, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v5, "getScene()==null!"

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-nez v4, :cond_1

    .line 562
    new-instance v4, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-direct {v4, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 563
    :cond_1
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-nez v4, :cond_2

    .line 564
    new-instance v4, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-direct {v4, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 566
    :cond_2
    const/4 v4, 0x5

    new-array v2, v4, [Ljava/lang/String;

    const v4, 0x7f060003

    invoke-direct {p0, v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const v4, 0x7f060021

    invoke-direct {p0, v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    const v4, 0x7f060002

    invoke-direct {p0, v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    const v4, 0x7f060001

    invoke-direct {p0, v4}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v10

    const/4 v4, 0x4

    const-string v5, "timeline.tilt_footer"

    aput-object v5, v2, v4

    .line 574
    .local v2, szArray:[Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v4, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 576
    .local v0, itemArray:[Lcom/htc/fusion/fx/FxObject;
    iget-object v5, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    aget-object v4, v0, v6

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v5, v4}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->Init(Lcom/htc/fusion/fx/FxTimelineControl;)Z

    .line 577
    iget-object v5, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    aget-object v4, v0, v7

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v5, v4}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->Init(Lcom/htc/fusion/fx/FxTimelineControl;)Z

    .line 578
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4, v7}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 579
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4, v6}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 581
    aget-object v4, v0, v9

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCouldyFly:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 582
    aget-object v4, v0, v10

    check-cast v4, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 584
    const/4 v4, 0x4

    aget-object v4, v0, v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_TimelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 586
    iput v6, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_nTiltStartFrame:I

    .line 587
    iput v6, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_nTiltEndFrame:I

    .line 589
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_TimelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v4, :cond_3

    .line 591
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_TimelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v5, "tilt"

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v3

    .line 592
    .local v3, tiltMarker:Lcom/htc/fusion/fx/Marker;
    if-eqz v3, :cond_3

    .line 594
    iget v4, v3, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_nTiltStartFrame:I

    .line 595
    iget v4, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_nTiltEndFrame:I

    .line 599
    .end local v3           #tiltMarker:Lcom/htc/fusion/fx/Marker;
    :cond_3
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->playInit()V

    .line 601
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 603
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-direct {p0, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setWarningMessage(Ljava/lang/String;)V

    .line 604
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-direct {p0, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setWarningMessage(Ljava/lang/String;)V

    .line 613
    :goto_1
    iget-boolean v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->isWeatherDataAvalible:Z

    if-nez v4, :cond_4

    .line 614
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4, v7}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setWarningMsgVisbile(Z)V

    .line 615
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4, v7}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setWarningMsgVisbile(Z)V

    .line 618
    :cond_4
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mPlaybackListener:Lcom/htc/fusion/fx/MessageListener;

    if-nez v4, :cond_5

    .line 620
    new-instance v4, Lcom/htc/widget3d/weather/Weather4x4Widget$1;

    invoke-direct {v4, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$1;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mPlaybackListener:Lcom/htc/fusion/fx/MessageListener;

    .line 646
    :cond_5
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 647
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 649
    :cond_6
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mPlaybackListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v4, v5}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 651
    invoke-direct {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->setHitBox()V

    .line 654
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setRefreshListener()V

    .line 655
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setRefreshListener()V

    .line 657
    sget-object v4, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v5, "InitWeatherControl finished"

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 608
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v8}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f06005a

    invoke-direct {p0, v5}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, nocity_msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setWarningMessage(Ljava/lang/String;)V

    .line 610
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v4, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setWarningMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initWeatherInfo()V
    .locals 6

    .prologue
    .line 499
    sget-object v3, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v4, "initWeatherInfo"

    invoke-static {v3, v4}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v3}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v3

    iput v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->WEATHER_COUNT:I

    .line 503
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 504
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    .line 506
    :cond_0
    iget-object v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 507
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 508
    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->WEATHER_COUNT:I

    if-gtz v3, :cond_1

    monitor-exit v4

    .line 540
    :goto_0
    return-void

    .line 510
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->WEATHER_COUNT:I

    if-ge v0, v3, :cond_3

    .line 511
    new-instance v1, Lcom/htc/widget3d/weather/WeatherInfo;

    invoke-direct {v1}, Lcom/htc/widget3d/weather/WeatherInfo;-><init>()V

    .line 512
    .local v1, info:Lcom/htc/widget3d/weather/WeatherInfo;
    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mIndex:I

    .line 513
    const-string v3, ""

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mCity:Ljava/lang/String;

    .line 514
    const-string v3, ""

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mPageNumber:Ljava/lang/String;

    .line 515
    const-string v3, ""

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mDescription:Ljava/lang/String;

    .line 516
    const-string v3, ""

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurTemp:Ljava/lang/String;

    .line 517
    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->arrWeekDay:[Ljava/lang/String;

    .line 518
    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->arrHLTemperature:[Ljava/lang/String;

    .line 519
    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I

    new-array v3, v3, [Lcom/htc/fusion/fx/FxScene;

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->arrSceneWeather:[Lcom/htc/fusion/fx/FxScene;

    .line 520
    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->arrControlName:[Ljava/lang/String;

    .line 521
    const-string v3, ""

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurHitemp:Ljava/lang/String;

    .line 522
    const-string v3, ""

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurLowtemp:Ljava/lang/String;

    .line 523
    const-string v3, ""

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mUpdateTime:Ljava/lang/String;

    .line 524
    const/4 v3, 0x0

    iput v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mMainIcon:I

    .line 525
    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mForecastIcon:[I

    .line 526
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurSceneWeather:Lcom/htc/fusion/fx/FxScene;

    .line 527
    const-string v3, ""

    iput-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->mCurControlName:Ljava/lang/String;

    .line 528
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->hasData:Z

    .line 529
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I

    if-ge v2, v3, :cond_2

    .line 530
    iget-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->arrWeekDay:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v3, v2

    .line 531
    iget-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->arrHLTemperature:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v3, v2

    .line 532
    iget-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->arrSceneWeather:[Lcom/htc/fusion/fx/FxScene;

    const/4 v5, 0x0

    aput-object v5, v3, v2

    .line 533
    iget-object v3, v1, Lcom/htc/widget3d/weather/WeatherInfo;->arrControlName:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v3, v2

    .line 529
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 536
    :cond_2
    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 538
    .end local v1           #info:Lcom/htc/widget3d/weather/WeatherInfo;
    .end local v2           #j:I
    :cond_3
    monitor-exit v4

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private declared-synchronized playCurrUI()V
    .locals 4

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-gtz v0, :cond_1

    .line 815
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 801
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v0, :cond_0

    .line 804
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playCurrUI(), mCurrIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 807
    :try_start_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 808
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 810
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget3d/weather/WeatherInfo;

    invoke-virtual {v2, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setWeatherInfo(Lcom/htc/widget3d/weather/WeatherInfo;)V

    .line 811
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playMainInAnimation()V

    .line 812
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playForecastInAnimation()V

    .line 813
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 799
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private playInit()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCouldyFly:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    sget-boolean v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->isWidgetOnScreen:Z

    if-eqz v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCouldyFly:Lcom/htc/fusion/fx/FxTimelineControl;

    const v1, 0x7f060042

    invoke-direct {p0, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 793
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    const v1, 0x7f060043

    invoke-direct {p0, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playSwitchCity(Z)V
    .locals 6
    .parameter "isUp"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v0, :cond_0

    .line 856
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 858
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget3d/weather/WeatherInfo;

    invoke-virtual {v2, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setWeatherInfo(Lcom/htc/widget3d/weather/WeatherInfo;)V

    .line 860
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v0, v0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v0, v0, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "Build_back"

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    if-nez v0, :cond_3

    .line 863
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    const v2, 0x7f060045

    invoke-direct {p0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playMarker(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCouldyFly:Lcom/htc/fusion/fx/FxTimelineControl;

    const v2, 0x7f060042

    invoke-direct {p0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    const v2, 0x7f060043

    invoke-direct {p0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playMarker(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playMainInAnimation()V

    .line 867
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playForecastInAnimation()V

    .line 877
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    .line 878
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 870
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    const-string v2, "Build_back"

    invoke-virtual {v0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playMarker(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCouldyFly:Lcom/htc/fusion/fx/FxTimelineControl;

    const v2, 0x7f060042

    invoke-direct {p0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, -0x4080

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 873
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    const-string v2, "ExitIn"

    invoke-virtual {v0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playMarker(Ljava/lang/String;)V

    .line 874
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playMainInAnimation()V

    .line 875
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->playForecastInAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private resetUpdateTime()V
    .locals 6

    .prologue
    .line 884
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 889
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 890
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v2, v1}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v0

    .line 891
    .local v0, cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getUpdateTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 892
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget3d/weather/WeatherInfo;

    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getUpdateTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/htc/widget3d/weather/util/RefreshUtil;->getUpdateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/widget3d/weather/WeatherInfo;->mUpdateTime:Ljava/lang/String;

    .line 889
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 894
    :cond_2
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget3d/weather/WeatherInfo;

    const-string v3, ""

    iput-object v3, v2, Lcom/htc/widget3d/weather/WeatherInfo;->mUpdateTime:Ljava/lang/String;

    goto :goto_2

    .line 898
    .end local v0           #cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    :cond_3
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_0

    .line 899
    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->setRefreshTime(I)V

    goto :goto_0
.end method

.method private setHitBox()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v0, :cond_0

    .line 670
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "Control Hitbox.weather == null !!"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 676
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 677
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mSwipeListener:Lcom/htc/fusion/fx/MessageListener;

    if-nez v0, :cond_1

    .line 678
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$2;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$2;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mSwipeListener:Lcom/htc/fusion/fx/MessageListener;

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getSwipeSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getSwipeSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getSwipeSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mSwipeListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 700
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mTapListener:Lcom/htc/fusion/fx/MessageListener;

    if-nez v0, :cond_3

    .line 701
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$3;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$3;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 734
    :cond_3
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 735
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 736
    :cond_4
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_hitBox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mTapListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0
.end method

.method private declared-synchronized switchWeatherCtl(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 742
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v3, "FxHitbox.SwipeParameters.onMessageReceived"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const/4 v0, 0x0

    .line 746
    .local v0, isUp:Z
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    .line 772
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 749
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 750
    :cond_2
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->stop()V

    .line 751
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->stop()V

    .line 753
    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    iput v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    .line 754
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 755
    .local v1, temp:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iput-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 756
    iput-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 757
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    .line 758
    sget-object v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v3, "switch current and next directly."

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .end local v1           #temp:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    :cond_3
    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;->endPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p1, Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;->startPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 762
    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->WEATHER_COUNT:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->WEATHER_COUNT:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    .line 768
    :goto_1
    sget-object v3, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mNextIndex: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ,next city: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/widget3d/weather/WeatherInfo;

    iget-object v2, v2, Lcom/htc/widget3d/weather/WeatherInfo;->mCity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-direct {p0, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->playSwitchCity(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 742
    .end local v0           #isUp:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 764
    .restart local v0       #isUp:Z
    :cond_4
    :try_start_2
    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->WEATHER_COUNT:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 765
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private declared-synchronized updateWeatherInfo()V
    .locals 12

    .prologue
    .line 905
    monitor-enter p0

    :try_start_0
    sget-object v9, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v10, "updateWeatherInfo"

    invoke-static {v9, v10}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 977
    :cond_0
    monitor-exit p0

    return-void

    .line 907
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    :try_start_1
    iget-object v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 909
    iget-object v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v9, v5}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v0

    .line 910
    .local v0, cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    iget-object v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/widget3d/weather/WeatherInfo;

    .line 912
    .local v8, weatherinfo:Lcom/htc/widget3d/weather/WeatherInfo;
    if-eqz v0, :cond_0

    .line 913
    if-eqz v8, :cond_0

    .line 914
    iput v5, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mIndex:I

    .line 915
    iget-object v9, v0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    iput-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mCity:Ljava/lang/String;

    .line 916
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->WEATHER_COUNT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mPageNumber:Ljava/lang/String;

    .line 918
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.htc.htclocationservice"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 921
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f060067

    invoke-direct {p0, v10}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, display_name:Ljava/lang/String;
    iput-object v2, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mCity:Ljava/lang/String;

    .line 925
    .end local v2           #display_name:Ljava/lang/String;
    :cond_2
    iget-boolean v9, v0, Lcom/htc/widget3d/weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v9, :cond_6

    .line 927
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->isWeatherDataAvalible:Z

    .line 928
    iget-boolean v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->isWeatherDataAvalible:Z

    iput-boolean v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->isNeedInitState:Z

    .line 930
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v9}, Lcom/htc/widget3d/weather/data/City$Condition;->today()Lcom/htc/widget3d/weather/data/DayForecast;

    move-result-object v7

    .line 932
    .local v7, today:Lcom/htc/widget3d/weather/data/DayForecast;
    invoke-virtual {v7}, Lcom/htc/widget3d/weather/data/DayForecast;->getCondition()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mDescription:Ljava/lang/String;

    .line 933
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/htc/widget3d/weather/data/DayForecast;->getCurrent()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u00b0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mCurTemp:Ljava/lang/String;

    .line 934
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/htc/widget3d/weather/data/DayForecast;->getHigh()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u00b0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mCurHitemp:Ljava/lang/String;

    .line 935
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/htc/widget3d/weather/data/DayForecast;->getLow()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u00b0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mCurLowtemp:Ljava/lang/String;

    .line 936
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getUpdateTime()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->getUpdateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mUpdateTime:Ljava/lang/String;

    .line 938
    invoke-virtual {v7}, Lcom/htc/widget3d/weather/data/DayForecast;->getForecastIcon()I

    move-result v9

    iput v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mMainIcon:I

    .line 939
    invoke-virtual {v7}, Lcom/htc/widget3d/weather/data/DayForecast;->getForecastIcon()I

    move-result v9

    invoke-static {v9}, Lcom/htc/widget3d/weather/util/WeatherUtil;->getTimelineControlNameMain(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mCurControlName:Ljava/lang/String;

    .line 943
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    iget v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->numberOfForecaseDay:I

    if-ge v6, v9, :cond_5

    .line 945
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v9

    iget v9, v9, Lcom/htc/widget3d/weather/data/City;->todayIndex:I

    add-int/2addr v9, v6

    add-int/lit8 v1, v9, 0x1

    .line 947
    .local v1, day_idx:I
    if-ltz v1, :cond_4

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v9}, Lcom/htc/widget3d/weather/data/City$Condition;->size()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 949
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v9, v1}, Lcom/htc/widget3d/weather/data/City$Condition;->get(I)Lcom/htc/widget3d/weather/data/DayForecast;

    move-result-object v4

    .line 950
    .local v4, forecast:Lcom/htc/widget3d/weather/data/DayForecast;
    if-nez v4, :cond_3

    .line 951
    sget-object v9, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "forecast null, i = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", j= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    .end local v4           #forecast:Lcom/htc/widget3d/weather/data/DayForecast;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 954
    .restart local v4       #forecast:Lcom/htc/widget3d/weather/data/DayForecast;
    :cond_3
    iget-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->arrWeekDay:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/data/DayForecast;->getWeekDay()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 955
    iget-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->arrHLTemperature:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/data/DayForecast;->getHigh()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u00b0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/data/DayForecast;->getLow()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u00b0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 956
    iget-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mForecastIcon:[I

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/data/DayForecast;->getForecastIcon()I

    move-result v10

    aput v10, v9, v6

    .line 957
    iget-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->arrControlName:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/data/DayForecast;->getForecastIcon()I

    move-result v10

    invoke-static {v10}, Lcom/htc/widget3d/weather/util/WeatherUtil;->getTimelineControlNameFs(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 905
    .end local v0           #cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    .end local v1           #day_idx:I
    .end local v4           #forecast:Lcom/htc/widget3d/weather/data/DayForecast;
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #today:Lcom/htc/widget3d/weather/data/DayForecast;
    .end local v8           #weatherinfo:Lcom/htc/widget3d/weather/WeatherInfo;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 961
    .restart local v0       #cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    .restart local v1       #day_idx:I
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v7       #today:Lcom/htc/widget3d/weather/data/DayForecast;
    .restart local v8       #weatherinfo:Lcom/htc/widget3d/weather/WeatherInfo;
    :cond_4
    :try_start_2
    sget-object v9, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OutOfDate:Total:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v11

    iget-object v11, v11, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v11}, Lcom/htc/widget3d/weather/data/City$Condition;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Day index:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->mForecastIcon:[I

    const/4 v10, 0x0

    aput v10, v9, v6

    goto/16 :goto_2

    .line 966
    .end local v1           #day_idx:I
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/widget3d/weather/WeatherInfo;->hasData:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 968
    :try_start_3
    iget-object v9, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 907
    .end local v6           #j:I
    .end local v7           #today:Lcom/htc/widget3d/weather/data/DayForecast;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 969
    .restart local v6       #j:I
    .restart local v7       #today:Lcom/htc/widget3d/weather/data/DayForecast;
    :catch_0
    move-exception v3

    .line 970
    .local v3, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    sget-object v9, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v10, "get WeatherInfo error"

    invoke-static {v9, v10}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 974
    .end local v3           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #j:I
    .end local v7           #today:Lcom/htc/widget3d/weather/data/DayForecast;
    :cond_6
    sget-object v9, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v10, "cityinfo.hasWeatherData == false"

    invoke-static {v9, v10}, Lcom/htc/widget3d/weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
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
    .line 352
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 353
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "mem : finalize called"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public getCityString(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6
    .parameter "info_string"

    .prologue
    const/4 v5, 0x0

    .line 1032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1033
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1034
    .local v2, update:Landroid/text/SpannableString;
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1036
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1037
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 1038
    .local v1, span:Landroid/text/style/ImageSpan;
    const/16 v3, 0x11

    invoke-virtual {v2, v1, v5, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1039
    return-object v2
.end method

.method public getForecastImg(I)I
    .locals 1
    .parameter "nID"

    .prologue
    .line 1777
    const v0, 0x7f020007

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRefreshString(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6
    .parameter "info_string"

    .prologue
    const/4 v5, 0x0

    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1022
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1023
    .local v2, update:Landroid/text/SpannableString;
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1025
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1026
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 1027
    .local v1, span:Landroid/text/style/ImageSpan;
    const/16 v3, 0x11

    invoke-virtual {v2, v1, v5, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1028
    return-object v2
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 3

    .prologue
    .line 358
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScene() , isPortrait="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->isPortrait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-boolean v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->isPortrait:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->portScene:Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->landScene:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 437
    invoke-super {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->initData()V

    .line 438
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "initData"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setNoCityView()V

    .line 444
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "setNoCityView finished and play default background."

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    if-nez v0, :cond_2

    .line 451
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    invoke-virtual {p0, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->postToWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected initWidget()V
    .locals 1

    .prologue
    .line 425
    invoke-super {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->initWidget()V

    .line 426
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    invoke-virtual {p0, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->postToWorkerThread(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfiguration"

    .prologue
    const/4 v0, 0x1

    .line 365
    invoke-super {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 366
    sget-object v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->isPortrait:Z

    .line 371
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mGetFxControls:Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    .line 376
    :goto_1
    return-void

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :cond_1
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "cancel fail cause mWorker null"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "saved"

    .prologue
    const/4 v3, 0x1

    .line 107
    invoke-super {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget-object v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 112
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    const-string v2, "Port/Weather_4x4.m10"

    invoke-interface {v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->portScene:Lcom/htc/fusion/fx/FxScene;

    .line 116
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    const-string v2, "Land/Weather_4x4_land.m10"

    invoke-interface {v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->landScene:Lcom/htc/fusion/fx/FxScene;

    .line 119
    new-instance v1, Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;

    invoke-direct {v1, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mGetFxControls:Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;

    .line 120
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mGetFxControls:Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;

    invoke-virtual {p0, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->postToWorkerThread(Ljava/lang/Runnable;)V

    .line 124
    new-instance v1, Lcom/htc/widget3d/weather/Weather4x4Widget$InitModel;

    invoke-direct {v1, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$InitModel;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitModelRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitModel;

    .line 125
    new-instance v1, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;

    invoke-direct {v1, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatedCurrentCityRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, dataIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.Weather.add_location_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "com.htc.Weather.delete_location_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "com.htc.Weather.rearrange_list_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "com.htc.sync.provider.weather.setting.soundeffect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 135
    const-string v1, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    sget-object v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v2, "registerReceiver : mDataReceiver"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-super {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->onDestroy()V

    .line 335
    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitModelRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitModel;

    .line 336
    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    .line 337
    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdateWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;

    .line 338
    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    .line 339
    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatedCurrentCityRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;

    .line 340
    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->portScene:Lcom/htc/fusion/fx/FxScene;

    .line 341
    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->landScene:Lcom/htc/fusion/fx/FxScene;

    .line 342
    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 344
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 345
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 346
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "mem : onDestroy"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 381
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 419
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->onHostMessage(Landroid/os/Message;)V

    .line 420
    :cond_0
    return-void

    .line 390
    :pswitch_0
    iget-boolean v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    if-eqz v1, :cond_2

    .line 392
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->stop()V

    .line 396
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->stop()V

    .line 398
    iget v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    iput v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    .line 399
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 400
    .local v0, temp:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iput-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 401
    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 403
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v1, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 404
    iput-boolean v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    .line 405
    sget-object v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v2, "Change current and next when switch orientation"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .end local v0           #temp:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mGetFxControls:Lcom/htc/widget3d/weather/Weather4x4Widget$GetFxControls;

    invoke-virtual {p0, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->postToWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v1, :cond_3

    .line 408
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->stop()V

    .line 410
    :cond_3
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->stop()V

    goto :goto_1

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onModelUpdated()V
    .locals 2

    .prologue
    .line 1763
    invoke-super {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->onModelUpdated()V

    .line 1764
    sget-boolean v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->isWidgetOnScreen:Z

    if-eqz v0, :cond_0

    .line 1765
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "onModelUpdated Widget state - resume(use Run) "

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitModelRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitModel;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$InitModel;->run()V

    .line 1774
    :goto_0
    return-void

    .line 1771
    :cond_0
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "onModelUpdated , not on screen"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-super {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->onPause()V

    .line 146
    sget-object v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v3, "onPause"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sput-boolean v4, Lcom/htc/widget3d/weather/Weather4x4Widget;->isWidgetOnScreen:Z

    .line 149
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 152
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 157
    :cond_0
    sget-object v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v3, "stop Current mMainScene"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    if-eqz v2, :cond_4

    .line 162
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-nez v2, :cond_3

    .line 192
    :cond_2
    :goto_0
    return-void

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->stop()V

    .line 166
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->stop()V

    .line 168
    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    iput v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    .line 169
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 170
    .local v1, temp:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iput-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 171
    iput-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 173
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v2, v4}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 174
    iput-boolean v4, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    .line 176
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    #calls: Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setToIdleState()V
    invoke-static {v2}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->access$000(Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;)V

    .line 178
    sget-object v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v3, "Change current and next when pause"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v1           #temp:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->releaseSoundEffect()V

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.WeatherWidget"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "_playSound"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    sget-object v2, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v3, "onPause Cancel force update wheather info"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatedCurrentCityRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCurrentCity;

    invoke-interface {v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onReceiveCurrentCityData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "onReceiveCurrentCityData"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    invoke-virtual {p0, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->postToWorkerThread(Ljava/lang/Runnable;)V

    .line 469
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdateWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;

    if-nez v0, :cond_1

    .line 470
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdateWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdateWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;

    invoke-virtual {p0, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->postToWorkerThread(Ljava/lang/Runnable;)V

    .line 475
    iput v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    .line 476
    iput v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    .line 477
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget3d/weather/WeatherInfo;

    invoke-virtual {v1, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setWeatherInfo(Lcom/htc/widget3d/weather/WeatherInfo;)V

    .line 479
    return-void
.end method

.method protected onResume()V
    .locals 17

    .prologue
    .line 197
    invoke-super/range {p0 .. p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->onResume()V

    .line 198
    sget-object v12, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v13, "onResume"

    invoke-static {v12, v13}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v12, 0x1

    sput-boolean v12, Lcom/htc/widget3d/weather/Weather4x4Widget;->isWidgetOnScreen:Z

    .line 205
    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.htc.WeatherWidget"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v7, intent:Landroid/content/Intent;
    const-string v12, "_playSound"

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    if-eqz v12, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v12, :cond_1

    .line 214
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    .line 216
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 217
    .local v8, temp:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 218
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    .line 219
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->setVisilbe(Z)V

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxNextWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v12}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->stop()V

    .line 224
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mDoLoading:Z

    if-eqz v12, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/htc/widget3d/weather/Weather4x4Widget;->stopLoading(IZ)V

    .line 227
    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    .line 229
    sget-object v12, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v13, "Change current and next when resume "

    invoke-static {v12, v13}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v8           #temp:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v12, v12, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v12, :cond_2

    .line 235
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v12, v12, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_fxTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 237
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v12, v12, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v12, :cond_4

    .line 238
    sget-object v12, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resume, Current mainScene isPlaying :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v14, v14, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v14}, Lcom/htc/fusion/fx/FxScene;->isPlaying()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v12, v12, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v12}, Lcom/htc/fusion/fx/FxScene;->isPlaying()Z

    move-result v12

    if-nez v12, :cond_4

    .line 240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v12, v12, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    const v13, 0x7f060044

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    const/high16 v15, 0x3f80

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Lcom/htc/fusion/fx/FxScene;->playMarker(Ljava/lang/String;IFZ)V

    .line 241
    sget-object v12, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "visibility :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v14, v14, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->mMainScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v14}, Lcom/htc/fusion/fx/FxScene;->getVisibility()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v12, v12, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v12, :cond_3

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v12, v12, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/htc/fusion/fx/FxTimelineControl;->setAsync(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v12, v12, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->m_TimelineRain:Lcom/htc/fusion/fx/FxTimelineControl;

    const v13, 0x7f060044

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/high16 v15, 0x3f80

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 248
    :cond_3
    sget-object v12, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v13, "play Current mMainScene"

    invoke-static {v12, v13}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mIsCityChanged:Z

    if-eqz v12, :cond_7

    .line 253
    sget-object v12, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "city changed - update citylist , m_bAddCity="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bAddCity:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v11, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bAddCity:Z

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;Z)V

    .line 256
    .local v11, updatedCityListRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUIHandler:Landroid/os/Handler;

    if-eqz v12, :cond_6

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v12, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    :goto_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mIsCityChanged:Z

    .line 311
    .end local v11           #updatedCityListRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;
    :cond_5
    :goto_1
    return-void

    .line 259
    .restart local v11       #updatedCityListRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;
    :cond_6
    sget-object v12, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v13, "mUIHandler null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    .end local v11           #updatedCityListRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;
    :cond_7
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 264
    .local v9, today:Ljava/util/Date;
    const-string v4, "M/d/yyyy"

    .line 265
    .local v4, format:Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 266
    .local v5, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 268
    .local v10, today_string:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v12}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 270
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v3

    .line 271
    .local v3, cityinfo_first:Lcom/htc/widget3d/weather/data/CityInfo;
    if-eqz v3, :cond_5

    iget-boolean v12, v3, Lcom/htc/widget3d/weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v12, :cond_5

    .line 272
    invoke-virtual {v3}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v12

    iget-object v12, v12, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v12}, Lcom/htc/widget3d/weather/data/City$Condition;->today()Lcom/htc/widget3d/weather/data/DayForecast;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/widget3d/weather/data/DayForecast;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, city_date:Ljava/lang/String;
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 274
    sget-object v12, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "city date match, today ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",City date ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_8
    sget-object v12, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "city date Not match, today ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",City date ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v6, 0x0

    .local v6, idx:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v12}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v12

    if-ge v6, v12, :cond_a

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v12, v6}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v2

    .line 281
    .local v2, cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    if-eqz v2, :cond_9

    iget-boolean v12, v2, Lcom/htc/widget3d/weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v12, :cond_9

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/htc/widget3d/weather/data/CityInfo;->changeOffsetOfToday(Landroid/content/Context;)Z

    .line 279
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 285
    .end local v2           #cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    if-nez v12, :cond_b

    .line 286
    new-instance v12, Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    .line 289
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mInitWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$InitWeatherInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget3d/weather/Weather4x4Widget;->postToWorkerThread(Ljava/lang/Runnable;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    if-nez v12, :cond_c

    .line 292
    new-instance v12, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    .line 295
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/widget3d/weather/Weather4x4Widget;->postToWorkerThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method public onTiltChanged(F)V
    .locals 3
    .parameter "fTilt"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_TimelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_TimelineTilt:Lcom/htc/fusion/fx/FxTimelineControl;

    iget v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_nTiltStartFrame:I

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_nTiltEndFrame:I

    invoke-static {p1, v1, v2}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 547
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->m_bSwipeCity:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    invoke-virtual {v0, p1}, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->HandleTiltChange(F)V

    .line 549
    :cond_1
    return-void
.end method

.method protected onUpdateCityModelList()V
    .locals 3

    .prologue
    .line 483
    sget-object v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v2, "onUpdateCityModelList"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-boolean v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->isWidgetOnScreen:Z

    if-eqz v1, :cond_1

    .line 486
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;Z)V

    .line 488
    .local v0, updatedCityListRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    .end local v0           #updatedCityListRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;
    :goto_0
    return-void

    .line 491
    .restart local v0       #updatedCityListRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;
    :cond_0
    sget-object v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v2, "onUpdateCityModelList - mUIHandler null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    .end local v0           #updatedCityListRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatedCityList;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mIsCityChanged:Z

    .line 494
    sget-object v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v2, "onUpdateCityModelList - not on Screen."

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected postToWorkerThread(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "thread"

    .prologue
    .line 1634
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postToWorkerThread on thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, p1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    .line 1643
    :goto_0
    return-void

    .line 1639
    :cond_0
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postToWorkerThread FAIL on thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected setRefreshTime(I)V
    .locals 4
    .parameter "city_idx"

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_0

    .line 1002
    iget v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    if-eq v1, p1, :cond_1

    .line 1003
    sget-object v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRefreshTime not current, mCurrIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", updated idx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 1008
    :cond_2
    sget-object v1, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRefreshTime:mWeatherInfoList , city_idx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    :cond_3
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mWeatherInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget3d/weather/WeatherInfo;

    .line 1013
    .local v0, info:Lcom/htc/widget3d/weather/WeatherInfo;
    if-eqz v0, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v1, v1, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v2, v0, Lcom/htc/widget3d/weather/WeatherInfo;->mUpdateTime:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getRefreshString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateCityData(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 823
    iget v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    iget v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    if-eq v0, v1, :cond_3

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdateWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;

    if-nez v0, :cond_1

    .line 825
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdateWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdateWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdateWeatherInfo;

    invoke-virtual {p0, v0}, Lcom/htc/widget3d/weather/Weather4x4Widget;->postToWorkerThread(Ljava/lang/Runnable;)V

    .line 830
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCityData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mCurrIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    iget v1, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    if-eq v0, v1, :cond_2

    .line 832
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrIndex not equal mNextIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mNextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_2
    :goto_0
    return-void

    .line 835
    :cond_3
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    if-nez v0, :cond_4

    .line 836
    new-instance v0, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;-><init>(Lcom/htc/widget3d/weather/Weather4x4Widget;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    .line 838
    :cond_4
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    if-eqz v0, :cond_5

    .line 839
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "before mUpdatePlayWeatherInfoRunnable.run"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mUpdatePlayWeatherInfoRunnable:Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/Weather4x4Widget$UpdatePlayWeatherInfo;->run()V

    .line 844
    :goto_1
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current:updateCityData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mCurrIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mCurrIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :cond_5
    sget-object v0, Lcom/htc/widget3d/weather/Weather4x4Widget;->TAG:Ljava/lang/String;

    const-string v1, "updateCityData, mUpdatePlayWeatherInfoThread null"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected updateTaskBarInfo(ILjava/lang/String;)V
    .locals 4
    .parameter "city_idx"
    .parameter "post_string"

    .prologue
    .line 983
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v2, :cond_0

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f060060

    invoke-direct {p0, v3}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, updating_msg:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/widget3d/weather/Weather4x4Widget;->getRefreshString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 992
    .local v0, update:Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/htc/widget3d/weather/Weather4x4Widget;->mFxCurWeatherCtr:Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;

    iget-object v2, v2, Lcom/htc/widget3d/weather/Weather4x4Widget$WeatherControl;->tlUpdateTime:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setContent(Ljava/lang/CharSequence;)V

    .line 994
    .end local v0           #update:Landroid/text/SpannableString;
    .end local v1           #updating_msg:Ljava/lang/String;
    :cond_0
    return-void
.end method
