.class public Lcom/htc/dockmode/weather/WeatherControl;
.super Ljava/lang/Object;
.source "WeatherControl.java"

# interfaces
.implements Lcom/htc/dockmode/utils/ControlInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;
    }
.end annotation


# static fields
.field private static final APP_LOCATION_SERVICE:Ljava/lang/String; = "com.htc.htclocationservice"

.field protected static DEGREE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field private final FETCH_WEATHER_DELAY:J

.field private mActivity:Landroid/app/Activity;

.field private mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

.field private mCentigrate:Z

.field protected mCityChangeObserver:Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;

.field private mCityChanged:Z

.field private mCityUpdate:Ljava/lang/Runnable;

.field private mConditionPath:Ljava/lang/String;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mFetchWeatherDataUpdate:Ljava/lang/Runnable;

.field private mHighIndicatorString:Ljava/lang/String;

.field private mHighLow:Landroid/widget/TextView;

.field private mHighLowString:Ljava/lang/String;

.field private mHighTemperatureString:Ljava/lang/String;

.field private mInformation:Landroid/widget/TextView;

.field private mInformationString:Ljava/lang/String;

.field private mLayoutId:I

.field private mLocation:Landroid/widget/TextView;

.field private mLocationString:Ljava/lang/String;

.field private mLowIndicatorString:Ljava/lang/String;

.field private mLowTemperatureString:Ljava/lang/String;

.field private mNetworkTimeZoneCity:Ljava/lang/String;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mOnWeatherUpdate:Ljava/lang/Runnable;

.field private mResId:Lcom/htc/dockmode/weather/WeatherRes;

.field private mStateRes:Lcom/htc/weather/StateResources;

.field private mStopped:Z

.field private mTemperature:Landroid/widget/TextView;

.field private mTemperatureString:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private mViewClick:Landroid/view/View$OnClickListener;

.field private mWeatherClickListener:Landroid/view/View$OnClickListener;

.field private mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

.field private mWeatherReceiver:Landroid/content/BroadcastReceiver;

.field private mWeatherUpdate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/htc/dockmode/weather/WeatherControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/weather/WeatherControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;I)V
    .locals 2
    .parameter "activity"
    .parameter "uiHander"
    .parameter "nonUIHandler"
    .parameter "layoutId"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mConditionPath:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mStopped:Z

    .line 74
    iput-boolean v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityChanged:Z

    .line 77
    iput-boolean v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCentigrate:Z

    .line 78
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->FETCH_WEATHER_DELAY:J

    .line 127
    new-instance v0, Lcom/htc/dockmode/weather/WeatherControl$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/weather/WeatherControl$1;-><init>(Lcom/htc/dockmode/weather/WeatherControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mOnWeatherUpdate:Ljava/lang/Runnable;

    .line 171
    new-instance v0, Lcom/htc/dockmode/weather/WeatherControl$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/weather/WeatherControl$2;-><init>(Lcom/htc/dockmode/weather/WeatherControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mFetchWeatherDataUpdate:Ljava/lang/Runnable;

    .line 246
    new-instance v0, Lcom/htc/dockmode/weather/WeatherControl$3;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/weather/WeatherControl$3;-><init>(Lcom/htc/dockmode/weather/WeatherControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mViewClick:Landroid/view/View$OnClickListener;

    .line 292
    new-instance v0, Lcom/htc/dockmode/weather/WeatherControl$4;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/weather/WeatherControl$4;-><init>(Lcom/htc/dockmode/weather/WeatherControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherClickListener:Landroid/view/View$OnClickListener;

    .line 387
    new-instance v0, Lcom/htc/dockmode/weather/WeatherControl$5;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/weather/WeatherControl$5;-><init>(Lcom/htc/dockmode/weather/WeatherControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityUpdate:Ljava/lang/Runnable;

    .line 561
    new-instance v0, Lcom/htc/dockmode/weather/WeatherControl$6;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/weather/WeatherControl$6;-><init>(Lcom/htc/dockmode/weather/WeatherControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherUpdate:Ljava/lang/Runnable;

    .line 569
    new-instance v0, Lcom/htc/dockmode/weather/WeatherControl$7;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/weather/WeatherControl$7;-><init>(Lcom/htc/dockmode/weather/WeatherControl;)V

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mUIHandler:Landroid/os/Handler;

    .line 87
    iput-object p3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mNonUIHandler:Landroid/os/Handler;

    .line 88
    iput p4, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLayoutId:I

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/weather/WeatherControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mStopped:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/dockmode/weather/WeatherControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->loadFormatAndScale()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/dockmode/weather/WeatherControl;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/htc/dockmode/weather/WeatherControl;->scheduleWeatherFetchDelayed(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/dockmode/weather/WeatherControl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityUpdate:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dockmode/weather/WeatherControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mNonUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/dockmode/weather/WeatherControl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/dockmode/weather/WeatherControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->goToWeather()V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/dockmode/weather/WeatherControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/dockmode/weather/WeatherControl;Lcom/htc/util/weather/WSPPData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/dockmode/weather/WeatherControl;->updateWeatherData(Lcom/htc/util/weather/WSPPData;)V

    return-void
.end method

.method private addCityName(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLocationString:Ljava/lang/String;

    .line 464
    return-void
.end method

.method private getDayDiff(Lcom/htc/util/weather/WSPPData;)I
    .locals 4
    .parameter "data"

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, index:I
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/htc/dockmode/weather/WeatherUtils;->isOverdue(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurLocTimezoneId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dockmode/weather/WeatherUtils;->getDayDiff(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 552
    if-gez v0, :cond_1

    .line 553
    const/4 v0, 0x0

    .line 558
    :cond_0
    :goto_0
    return v0

    .line 554
    :cond_1
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 555
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getNetworkTimeZoneCity()Lcom/htc/util/weather/WeatherLocation;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.htclocationservice"

    invoke-static {v3, v4}, Lcom/htc/util/weather/WeatherUtility;->loadLocationsForWorldClock(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 437
    .local v1, locs:[Lcom/htc/util/weather/WeatherLocation;
    array-length v3, v1

    if-eqz v3, :cond_0

    .line 438
    aget-object v3, v1, v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    .line 441
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    iput-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mNetworkTimeZoneCity:Ljava/lang/String;

    .line 443
    aget-object v0, v1, v5

    .line 446
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getWeatheApCityName(Lcom/htc/util/weather/WeatherLocation;)Ljava/lang/String;
    .locals 3
    .parameter "weatherLoc"

    .prologue
    .line 299
    const-string v0, ""

    .line 300
    .local v0, cityName:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_1
    :goto_0
    return-object v0

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getWeather(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 322
    const-string v0, "temperature"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    .line 324
    const-string v0, "high_temperature"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighTemperatureString:Ljava/lang/String;

    .line 326
    const-string v0, "low_temperature"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLowTemperatureString:Ljava/lang/String;

    .line 329
    const-string v0, "location"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLocationString:Ljava/lang/String;

    .line 331
    const-string v0, "information"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mInformationString:Ljava/lang/String;

    .line 334
    const-string v0, "condition_id"

    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/Preference;->getSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mConditionPath:Ljava/lang/String;

    .line 336
    return-void
.end method

.method private getWeatherDataByLocation()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 468
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    .line 469
    .local v2, req:Lcom/htc/util/weather/WSPRequest;
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->unRegisterWeatherReceiver()V

    .line 470
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/dockmode/weather/WeatherControl;->registerWeatherReceiver(Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x0

    .line 475
    .local v0, data:Lcom/htc/util/weather/WSPPData;
    :try_start_0
    iget-object v4, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v4

    if-nez v4, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v3

    .line 476
    :catch_0
    move-exception v1

    .line 477
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 483
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/dockmode/weather/WeatherControl;->updateWeatherData(Lcom/htc/util/weather/WSPPData;)V

    .line 490
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private goToWeather()V
    .locals 5

    .prologue
    .line 260
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.Weather.intent.action.LOCATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    const-string v3, "com.htc.Weather"

    const-string v4, "com.htc.Weather.WeatherActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    if-eqz v3, :cond_0

    .line 266
    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    invoke-static {v3}, Lcom/htc/dockmode/weather/WeatherControl;->getWeatheApCityName(Lcom/htc/util/weather/WeatherLocation;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, cityName:Ljava/lang/String;
    const-string v3, "name_"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    .end local v0           #cityName:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mActivity:Landroid/app/Activity;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 271
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 289
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 290
    return-void

    .line 273
    :pswitch_1
    const-string v3, "orientation_"

    const-string v4, "Portrait"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    sget-object v3, Lcom/htc/dockmode/weather/WeatherControl;->TAG:Ljava/lang/String;

    const-string v4, "Portrait"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :pswitch_2
    const-string v3, "orientation_"

    const-string v4, "Landscape"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    sget-object v3, Lcom/htc/dockmode/weather/WeatherControl;->TAG:Ljava/lang/String;

    const-string v4, "Landscape"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :pswitch_3
    const-string v3, "orientation_"

    const-string v4, "Landscape_Reverse"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    sget-object v3, Lcom/htc/dockmode/weather/WeatherControl;->TAG:Ljava/lang/String;

    const-string v4, "Landscape_Reverse"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mResId:Lcom/htc/dockmode/weather/WeatherRes;

    iget v1, v1, Lcom/htc/dockmode/weather/WeatherRes;->temperature:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperature:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mResId:Lcom/htc/dockmode/weather/WeatherRes;

    iget v1, v1, Lcom/htc/dockmode/weather/WeatherRes;->high_low:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighLow:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mResId:Lcom/htc/dockmode/weather/WeatherRes;

    iget v1, v1, Lcom/htc/dockmode/weather/WeatherRes;->location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLocation:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mResId:Lcom/htc/dockmode/weather/WeatherRes;

    iget v1, v1, Lcom/htc/dockmode/weather/WeatherRes;->information:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mInformation:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mResId:Lcom/htc/dockmode/weather/WeatherRes;

    iget-object v0, v0, Lcom/htc/dockmode/weather/WeatherRes;->degree:Ljava/lang/String;

    sput-object v0, Lcom/htc/dockmode/weather/WeatherControl;->DEGREE:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mResId:Lcom/htc/dockmode/weather/WeatherRes;

    iget v1, v1, Lcom/htc/dockmode/weather/WeatherRes;->view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mViewClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method private loadFormatAndScale()V
    .locals 2

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/weather/WSPPUtility;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, tempUnit:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 224
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCentigrate:Z

    .line 235
    .end local v0           #tempUnit:Ljava/lang/String;
    :goto_0
    return-void

    .line 226
    .restart local v0       #tempUnit:Ljava/lang/String;
    :cond_1
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCentigrate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v0           #tempUnit:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadHighLowString()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mResId:Lcom/htc/dockmode/weather/WeatherRes;

    iget-object v0, v0, Lcom/htc/dockmode/weather/WeatherRes;->high_Indicator:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighIndicatorString:Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mResId:Lcom/htc/dockmode/weather/WeatherRes;

    iget-object v0, v0, Lcom/htc/dockmode/weather/WeatherRes;->low_Indicator:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLowIndicatorString:Ljava/lang/String;

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighIndicatorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighTemperatureString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLowIndicatorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLowTemperatureString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighLowString:Ljava/lang/String;

    .line 545
    return-void
.end method

.method private loadPreference()V
    .locals 4

    .prologue
    .line 315
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/dockmode/weather/WeatherPref;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 317
    .local v0, settings:Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/htc/dockmode/weather/WeatherControl;->getWeather(Landroid/content/SharedPreferences;)V

    .line 318
    return-void
.end method

.method private refreshWeather()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mOnWeatherUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method private registerWeatherReceiver(Ljava/lang/String;)V
    .locals 3
    .parameter "code"

    .prologue
    .line 590
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 591
    .local v0, statusIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.sync.provider.weather.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 595
    return-void
.end method

.method private resetWeatherData()V
    .locals 1

    .prologue
    .line 450
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighLowString:Ljava/lang/String;

    .line 452
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mInformationString:Ljava/lang/String;

    .line 453
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mConditionPath:Ljava/lang/String;

    .line 454
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLocationString:Ljava/lang/String;

    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighTemperatureString:Ljava/lang/String;

    .line 457
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLowTemperatureString:Ljava/lang/String;

    .line 458
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighIndicatorString:Ljava/lang/String;

    .line 459
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLowIndicatorString:Ljava/lang/String;

    .line 460
    return-void
.end method

.method private savePreference()V
    .locals 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/dockmode/weather/WeatherPref;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    .local v0, settings:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "temperature"

    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighTemperatureString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 190
    const-string v1, "high_temperature"

    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighTemperatureString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLowTemperatureString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 195
    const-string v1, "low_temperature"

    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLowTemperatureString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLocationString:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 200
    const-string v1, "location"

    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLocationString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    :cond_3
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mInformationString:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 205
    const-string v1, "information"

    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mInformationString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mConditionPath:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 210
    const-string v1, "condition_id"

    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mConditionPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/dockmode/utils/Preference;->setSettingString(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    :cond_5
    return-void
.end method

.method private scheduleWeatherFetchDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mStopped:Z

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mFetchWeatherDataUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private unInitRegister()V
    .locals 2

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityChangeObserver:Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 367
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unRegisterWeatherReceiver()V
    .locals 2

    .prologue
    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unscheduleWeatherFetch()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mFetchWeatherDataUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method private updateWeatherData(Lcom/htc/util/weather/WSPPData;)V
    .locals 9
    .parameter "data"

    .prologue
    .line 494
    invoke-direct {p0, p1}, Lcom/htc/dockmode/weather/WeatherControl;->getDayDiff(Lcom/htc/util/weather/WSPPData;)I

    move-result v3

    .line 497
    .local v3, index:I
    :try_start_0
    iget-boolean v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCentigrate:Z

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v1

    .line 499
    .local v1, highTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/dockmode/weather/WeatherControl;->DEGREE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighTemperatureString:Ljava/lang/String;

    .line 501
    iget-boolean v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCentigrate:Z

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v6

    .line 503
    .local v6, lowTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/dockmode/weather/WeatherControl;->DEGREE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLowTemperatureString:Ljava/lang/String;

    .line 506
    if-nez v3, :cond_4

    .line 507
    iget-boolean v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCentigrate:Z

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurTempC()I

    move-result v7

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    .line 514
    :cond_0
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/dockmode/weather/WeatherControl;->DEGREE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v4

    .line 518
    .local v4, information:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, id:Ljava/lang/String;
    :goto_4
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getDayLightFlag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "True"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 523
    .local v5, isdaylight:Z
    invoke-static {v2, v5}, Lcom/htc/weather/WeatherVideo;->getVideoFilePathByIcon(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mConditionPath:Ljava/lang/String;

    .line 527
    iget-object v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mStateRes:Lcom/htc/weather/StateResources;

    invoke-virtual {v7, v2}, Lcom/htc/weather/StateResources;->getConditionText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mInformationString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->loadHighLowString()V

    .line 537
    iget-object v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mUIHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherUpdate:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    .end local v1           #highTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #id:Ljava/lang/String;
    .end local v4           #information:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #isdaylight:Z
    .end local v6           #lowTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    return-void

    .line 497
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v1

    goto/16 :goto_0

    .line 501
    .restart local v1       #highTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_1

    .line 507
    .restart local v6       #lowTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurTempF()I

    move-result v7

    goto :goto_2

    .line 509
    :cond_4
    if-lez v3, :cond_0

    .line 510
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    goto :goto_3

    .line 529
    .end local v1           #highTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #lowTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/Exception;
    goto :goto_5

    .line 518
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #highTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #information:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #lowTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v7

    goto :goto_4
.end method


# virtual methods
.method protected getAllDisplayTimeZone()V
    .locals 5

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->getNetworkTimeZoneCity()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 403
    .local v0, curLoc:Lcom/htc/util/weather/WeatherLocation;
    const/4 v2, 0x1

    .line 404
    .local v2, needUpdate:Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    if-eqz v3, :cond_0

    .line 406
    :try_start_0
    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    const/4 v2, 0x0

    .line 416
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityChanged:Z

    if-eqz v3, :cond_1

    .line 417
    const/4 v2, 0x1

    .line 419
    :cond_1
    if-nez v2, :cond_2

    .line 430
    :goto_1
    return-void

    .line 423
    :cond_2
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->resetWeatherData()V

    .line 424
    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mNetworkTimeZoneCity:Ljava/lang/String;

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    .line 425
    .local v1, locationExist:Z
    :goto_2
    if-eqz v1, :cond_3

    .line 426
    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mNetworkTimeZoneCity:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/dockmode/weather/WeatherControl;->addCityName(Ljava/lang/String;)V

    .line 428
    :cond_3
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->getWeatherDataByLocation()Z

    .line 429
    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherLoc:Lcom/htc/util/weather/WeatherLocation;

    goto :goto_1

    .line 424
    .end local v1           #locationExist:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 410
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public initRegister()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 348
    new-instance v1, Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;

    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mNonUIHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;-><init>(Lcom/htc/dockmode/weather/WeatherControl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityChangeObserver:Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;

    .line 350
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityChangeObserver:Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityChangeObserver:Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 353
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityChangeObserver:Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 356
    sget-object v1, Lcom/htc/consts/WeatherConsts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "location"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 358
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "com.htc.htclocationservice"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityChangeObserver:Lcom/htc/dockmode/weather/WeatherControl$CityChangeObserver;

    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 362
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onDoDestroy()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->unInitRegister()V

    .line 154
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->unRegisterWeatherReceiver()V

    .line 155
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->savePreference()V

    .line 156
    return-void
.end method

.method public onDoInit1()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/htc/dockmode/weather/WeatherRes;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/dockmode/weather/WeatherRes;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mResId:Lcom/htc/dockmode/weather/WeatherRes;

    .line 94
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mStateRes:Lcom/htc/weather/StateResources;

    .line 96
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mStateRes:Lcom/htc/weather/StateResources;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/htc/dockmode/utils/AutoResume;->getInstance()Lcom/htc/dockmode/utils/AutoResume;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mAutoResume:Lcom/htc/dockmode/utils/AutoResume;

    .line 99
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->loadPreference()V

    .line 100
    return-void
.end method

.method public onDoInit2()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/htc/dockmode/weather/WeatherControl;->initRegister()V

    .line 116
    return-void
.end method

.method public onDoPause()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mStopped:Z

    .line 138
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->unscheduleWeatherFetch()V

    .line 139
    return-void
.end method

.method public onDoRefresh1()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLayoutId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mView:Landroid/view/View;

    .line 106
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->initView()V

    .line 108
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->loadHighLowString()V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dockmode/weather/WeatherControl;->updateWeatherDisplay()V

    .line 112
    return-void
.end method

.method public onDoRemoveMessages()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mOnWeatherUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mFetchWeatherDataUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mWeatherUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public onDoResume()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mStopped:Z

    .line 120
    invoke-direct {p0}, Lcom/htc/dockmode/weather/WeatherControl;->refreshWeather()V

    .line 121
    return-void
.end method

.method public onDoStop()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mCityChanged:Z

    .line 143
    return-void
.end method

.method public resetLayout()V
    .locals 0

    .prologue
    .line 606
    return-void
.end method

.method public updateWeatherDisplay()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mTemperatureString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighLow:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mHighLowString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLocation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mLocationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/htc/dockmode/weather/WeatherControl;->mInformation:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/dockmode/weather/WeatherControl;->mInformationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    return-void
.end method
