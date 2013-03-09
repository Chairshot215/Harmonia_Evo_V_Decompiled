.class public Lcom/htc/clock/util/location/LocationCtrl;
.super Ljava/lang/Object;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/clock/util/location/LocationCtrl$BGHandler;,
        Lcom/htc/clock/util/location/LocationCtrl$UIHandler;,
        Lcom/htc/clock/util/location/LocationCtrl$LocationState;,
        Lcom/htc/clock/util/location/LocationCtrl$State;
    }
.end annotation


# static fields
.field public static final APP_LOCATION_SERVICE:Ljava/lang/String; = "com.htc.htclocationservice"

.field private static final CATEGORY_NAME:Ljava/lang/String; = "WeatherClock"

.field public static final CURRENT_LOCATION_AVAIABLE:Ljava/lang/String; = "com.htc.Weather.location.avaiable"

.field public static final CURRENT_LOCATION_KEY:Ljava/lang/String; = "cur"

.field private static final DEGREE:Ljava/lang/String; = "\u00b0"

.field public static final MAX_RETRY_CNT:I = 0xa

.field public static final MAX_RETRY_CNT_IMMEDIATE:I = 0x2

.field private static final OVERDUE_OFFSET:J = 0x2bf20L

.field public static final WHAT_ON_CONNECTION_UPDATE:I = 0x2

.field public static final WHAT_ON_WEATHER_DELETE:I = 0x4

.field public static final WHAT_ON_WEATHER_FORCE_UPDATE:I = 0x3

.field public static final WHAT_ON_WEATHER_UPDATE:I = 0x1

.field public static final WHAT_UI_CITY_CHANGED:I = 0x3e9

.field public static final WHAT_UI_TEMP_CHANGED:I = 0x3eb

.field public static final WHAT_UI_WEATHER_CHANGED:I = 0x3ea

.field private static final sRetryTimes:[J


# instance fields
.field public mBOnReceiveWeatherData:Z

.field private mConnectChangeRec:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsWithCurLocation:Z

.field private mLastForceSyncTime:J

.field private mListener:Lcom/htc/clock/util/location/LocationListener;

.field private mLocDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/clock/util/location/LocationData;",
            ">;"
        }
    .end annotation
.end field

.field private mLocKey:Ljava/lang/String;

.field private mLocationAvailable:Z

.field private mLocationEnable:Z

.field private mRetryEnable:Z

.field private mRetryForceCnt:I

.field public mSOnReceiveLog:Ljava/lang/StringBuffer;

.field private mState:Lcom/htc/clock/util/location/LocationCtrl$State;

.field private mTempUnitEnable:Z

.field private mTempUnitReceiver:Landroid/content/BroadcastReceiver;

.field private mUIHandler:Landroid/os/Handler;

.field private mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

.field private mWSPReqList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/weather/WSPRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mWeatherApReceiver:Landroid/content/BroadcastReceiver;

.field private mWeatherReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/clock/util/location/LocationCtrl;->sRetryTimes:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x98t 0x3at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0x27t 0x9t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mBOnReceiveWeatherData:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    .line 67
    iput-boolean v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mIsWithCurLocation:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    .line 70
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$State;->NONE:Lcom/htc/clock/util/location/LocationCtrl$State;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mState:Lcom/htc/clock/util/location/LocationCtrl$State;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    .line 73
    sget-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    .line 76
    iput-boolean v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryEnable:Z

    .line 77
    iput-boolean v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mTempUnitEnable:Z

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLastForceSyncTime:J

    .line 183
    iput v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryForceCnt:I

    .line 656
    new-instance v0, Lcom/htc/clock/util/location/LocationCtrl$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/clock/util/location/LocationCtrl$UIHandler;-><init>(Lcom/htc/clock/util/location/LocationCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUIHandler:Landroid/os/Handler;

    .line 887
    iput-boolean v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocationAvailable:Z

    .line 901
    iput-boolean v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocationEnable:Z

    .line 80
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/htc/clock/util/location/LocationCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/clock/util/location/LocationCtrl;)Lcom/htc/clock/util/location/WeatherForecast$UNIT;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/clock/util/location/LocationCtrl;Lcom/htc/clock/util/location/WeatherForecast$UNIT;)Lcom/htc/clock/util/location/WeatherForecast$UNIT;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/clock/util/location/LocationCtrl;)Lcom/htc/clock/util/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mListener:Lcom/htc/clock/util/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/clock/util/location/LocationCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/clock/util/location/LocationCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mIsWithCurLocation:Z

    return v0
.end method

.method private addLoc(Lcom/htc/clock/util/location/LocationData;)Z
    .locals 4
    .parameter "locData"

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, addRet:Z
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/htc/clock/util/location/LocationData;->getLocCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    .line 121
    .local v1, wasReq:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {p0, v1}, Lcom/htc/clock/util/location/LocationCtrl;->addWSPReq(Lcom/htc/util/weather/WSPRequest;)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/clock/util/location/LocationData;->getLocCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v1           #wasReq:Lcom/htc/util/weather/WSPRequest;
    :cond_0
    :goto_0
    return v0

    .line 125
    .restart local v1       #wasReq:Lcom/htc/util/weather/WSPRequest;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addLoc~ fail, locData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/clock/util/location/LocationData;->getLocCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private allowBackgroundData(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 924
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 926
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    .line 931
    :goto_0
    return v1

    .line 930
    :cond_0
    const-string v1, "allowBackgroundData can\'t get Connectivity Manager"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    .line 931
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTemp(I)Ljava/lang/String;
    .locals 2
    .parameter "temp"

    .prologue
    .line 638
    const/16 v1, -0x1f4

    if-ne p1, v1, :cond_0

    .line 639
    const-string v1, ""

    .line 644
    :goto_0
    return-object v1

    .line 641
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 642
    .local v0, strBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 643
    const-string v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getWeatheApCityName(Lcom/htc/util/weather/WeatherLocation;)Ljava/lang/String;
    .locals 3
    .parameter "weatherLoc"

    .prologue
    .line 857
    const-string v0, ""

    .line 858
    .local v0, cityName:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 864
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

    .line 869
    :cond_1
    :goto_0
    return-object v0

    .line 865
    :cond_2
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 867
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

.method private initConnReceiver()V
    .locals 3

    .prologue
    .line 296
    new-instance v1, Lcom/htc/clock/util/location/LocationCtrl$1;

    invoke-direct {v1, p0}, Lcom/htc/clock/util/location/LocationCtrl$1;-><init>(Lcom/htc/clock/util/location/LocationCtrl;)V

    iput-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    return-void
.end method

.method private initTempUnitReceiver()V
    .locals 3

    .prologue
    .line 340
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 341
    const-string v1, "initTempUnitReceiver~"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 342
    new-instance v1, Lcom/htc/clock/util/location/LocationCtrl$2;

    invoke-direct {v1, p0}, Lcom/htc/clock/util/location/LocationCtrl$2;-><init>(Lcom/htc/clock/util/location/LocationCtrl;)V

    iput-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 371
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    const-string v1, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private initWeatherReceiver()V
    .locals 6

    .prologue
    .line 379
    iget-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_1

    .line 380
    const-string v4, "initWeatherReceiver~ init weatherReceiver"

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 381
    new-instance v4, Lcom/htc/clock/util/location/LocationCtrl$3;

    invoke-direct {v4, p0}, Lcom/htc/clock/util/location/LocationCtrl$3;-><init>(Lcom/htc/clock/util/location/LocationCtrl;)V

    iput-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 425
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.sync.provider.weather.result"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v4, "WeatherClock"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/weather/WSPRequest;

    .line 430
    .local v3, wspReq:Lcom/htc/util/weather/WSPRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initWeatherReceiver~ wspReq.toString():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v3}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    .end local v3           #wspReq:Lcom/htc/util/weather/WSPRequest;
    :cond_0
    iget-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_2

    .line 437
    const-string v4, "initWeatherReceiver~ init mWeatherApReceiver"

    invoke-static {v4}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 440
    const-string v0, "com.htc.Weather.delete_current_location"

    .line 442
    .local v0, DELETE_LOCATION_CUR_CHANGED:Ljava/lang/String;
    new-instance v4, Lcom/htc/clock/util/location/LocationCtrl$4;

    invoke-direct {v4, p0}, Lcom/htc/clock/util/location/LocationCtrl$4;-><init>(Lcom/htc/clock/util/location/LocationCtrl;)V

    iput-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    .line 459
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 460
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.Weather.delete_current_location"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    iget-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 463
    .end local v0           #DELETE_LOCATION_CUR_CHANGED:Ljava/lang/String;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method public static isNetworkActive(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 935
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 936
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 937
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isUseWirelessNetworks(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 919
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isUsedTempC()Z
    .locals 3

    .prologue
    .line 848
    const/4 v0, 0x1

    .line 849
    .local v0, bUseTempC:Z
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/weather/WSPUtility;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 850
    .local v1, tempUnit:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 851
    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 853
    :cond_0
    return v0
.end method

.method private setHandler(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 716
    .local v0, looper:Landroid/os/Looper;
    if-eqz p1, :cond_0

    .line 717
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 720
    :cond_0
    if-nez v0, :cond_1

    .line 721
    const-string v1, "setHandler~ no looper"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 723
    :cond_1
    new-instance v1, Lcom/htc/clock/util/location/LocationCtrl$BGHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/clock/util/location/LocationCtrl$BGHandler;-><init>(Lcom/htc/clock/util/location/LocationCtrl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;

    .line 724
    return-void
.end method


# virtual methods
.method public addCurLoc()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 132
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v4

    .line 133
    .local v4, wasReq:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {p0, v4}, Lcom/htc/clock/util/location/LocationCtrl;->addWSPReq(Lcom/htc/util/weather/WSPRequest;)Z

    move-result v0

    .line 135
    .local v0, bRet:Z
    if-eqz v0, :cond_1

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, curLocData:Lcom/htc/clock/util/location/LocationData;
    iget-object v6, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.htc.htclocationservice"

    invoke-static {v6, v7}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    .line 139
    .local v3, locs:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v5, 0x0

    .line 140
    .local v5, wthLoc:Lcom/htc/util/weather/WeatherLocation;
    sget-object v2, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 141
    .local v2, locState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 142
    const/4 v6, 0x0

    aget-object v5, v3, v6

    .line 143
    sget-object v2, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->ONLY_LOC:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 150
    :goto_0
    new-instance v1, Lcom/htc/clock/util/location/LocationData;

    .end local v1           #curLocData:Lcom/htc/clock/util/location/LocationData;
    iget-object v6, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, v5, v2}, Lcom/htc/clock/util/location/LocationData;-><init>(Landroid/content/Context;Lcom/htc/util/weather/WeatherLocation;Lcom/htc/clock/util/location/LocationCtrl$LocationState;)V

    .line 151
    .restart local v1       #curLocData:Lcom/htc/clock/util/location/LocationData;
    iput-boolean v8, v1, Lcom/htc/clock/util/location/LocationData;->mIsCurLocation:Z

    .line 152
    iput-boolean v8, p0, Lcom/htc/clock/util/location/LocationCtrl;->mIsWithCurLocation:Z

    .line 153
    iget-object v6, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    const-string v7, "cur"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v1           #curLocData:Lcom/htc/clock/util/location/LocationData;
    .end local v2           #locState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;
    .end local v3           #locs:[Lcom/htc/util/weather/WeatherLocation;
    .end local v5           #wthLoc:Lcom/htc/util/weather/WeatherLocation;
    :goto_1
    return v0

    .line 145
    .restart local v1       #curLocData:Lcom/htc/clock/util/location/LocationData;
    .restart local v2       #locState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;
    .restart local v3       #locs:[Lcom/htc/util/weather/WeatherLocation;
    .restart local v5       #wthLoc:Lcom/htc/util/weather/WeatherLocation;
    :cond_0
    new-instance v5, Lcom/htc/util/weather/WeatherLocation;

    .end local v5           #wthLoc:Lcom/htc/util/weather/WeatherLocation;
    invoke-direct {v5}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 146
    .restart local v5       #wthLoc:Lcom/htc/util/weather/WeatherLocation;
    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 147
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v1           #curLocData:Lcom/htc/clock/util/location/LocationData;
    .end local v2           #locState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;
    .end local v3           #locs:[Lcom/htc/util/weather/WeatherLocation;
    .end local v5           #wthLoc:Lcom/htc/util/weather/WeatherLocation;
    :cond_1
    const-string v6, "addCurLoc~ fail"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addLoc(Lcom/htc/util/weather/WeatherLocation;)Z
    .locals 2
    .parameter "wthLoc"

    .prologue
    .line 106
    new-instance v0, Lcom/htc/clock/util/location/LocationData;

    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/htc/clock/util/location/LocationData;-><init>(Landroid/content/Context;Lcom/htc/util/weather/WeatherLocation;)V

    .line 107
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    invoke-direct {p0, v0}, Lcom/htc/clock/util/location/LocationCtrl;->addLoc(Lcom/htc/clock/util/location/LocationData;)Z

    move-result v1

    return v1
.end method

.method public addLoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "locCode"
    .parameter "locName"
    .parameter "timezoneid"

    .prologue
    .line 111
    new-instance v0, Lcom/htc/clock/util/location/LocationData;

    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/htc/clock/util/location/LocationData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    invoke-direct {p0, v0}, Lcom/htc/clock/util/location/LocationCtrl;->addLoc(Lcom/htc/clock/util/location/LocationData;)Z

    move-result v1

    return v1
.end method

.method public addWSPReq(Lcom/htc/util/weather/WSPRequest;)Z
    .locals 3
    .parameter "wspReq"

    .prologue
    const/4 v0, 0x0

    .line 169
    if-nez p1, :cond_0

    .line 170
    const-string v1, "addWSPReq~ the WSPReq is wrong"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 179
    :goto_0
    return v0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mState:Lcom/htc/clock/util/location/LocationCtrl$State;

    sget-object v2, Lcom/htc/clock/util/location/LocationCtrl$State;->START:Lcom/htc/clock/util/location/LocationCtrl$State;

    if-ne v1, v2, :cond_1

    .line 175
    const-string v1, "addWSPReq~ the WSPReq is wrong becasue start"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLocEnable()Z
    .locals 4

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocationEnable:Z

    .line 905
    .local v0, bOrg:Z
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mListener:Lcom/htc/clock/util/location/LocationListener;

    .line 906
    .local v1, listener:Lcom/htc/clock/util/location/LocationListener;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/clock/util/location/LocationListener;->isHelpTurnOnLoc()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 907
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/clock/util/location/LocationCtrl;->isUseWirelessNetworks(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocationEnable:Z

    .line 909
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLocEnable enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocationEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 910
    iget-boolean v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocationEnable:Z

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkLocService()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 890
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mListener:Lcom/htc/clock/util/location/LocationListener;

    .line 891
    .local v0, listener:Lcom/htc/clock/util/location/LocationListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/clock/util/location/LocationListener;->isChinaLocationService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.Weather.location.avaiable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocationAvailable:Z

    .line 895
    :cond_0
    return-void

    .line 892
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkTempUnit()Z
    .locals 2

    .prologue
    .line 873
    sget-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    .line 874
    .local v0, unit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;
    invoke-direct {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isUsedTempC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    sget-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    .line 880
    :goto_0
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    if-eq v0, v1, :cond_1

    .line 881
    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    .line 882
    const/4 v1, 0x1

    .line 884
    :goto_1
    return v1

    .line 877
    :cond_0
    sget-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_F:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    goto :goto_0

    .line 884
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public forceRetryWeather()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 314
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5}, Lcom/htc/clock/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 316
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->getState()Lcom/htc/clock/util/location/LocationCtrl$State;

    move-result-object v3

    sget-object v4, Lcom/htc/clock/util/location/LocationCtrl$State;->START:Lcom/htc/clock/util/location/LocationCtrl$State;

    if-eq v3, v4, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isNeedUpdate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->getRetryCnt()I

    move-result v0

    .line 323
    .local v0, cnt:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRetryWeather~ cnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isForceUpdateAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->forceUpdateIfNoData()V

    .line 328
    if-ge v0, v5, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->getRetryPendingTime()J

    move-result-wide v1

    .line 331
    .local v1, pending:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRetryWeather~ schedule pending:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v5, v1, v2}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method

.method public forceToSync()V
    .locals 8

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isForceUpdateAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 208
    .local v0, currentTime:J
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->getRetryPendingTime()J

    move-result-wide v3

    .line 209
    .local v3, retryPending:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gtz v6, :cond_2

    .line 210
    iput-wide v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLastForceSyncTime:J

    .line 211
    iget v6, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryForceCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryForceCnt:I

    .line 212
    const-string v6, "forceToSync~"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 213
    iget-object v6, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 214
    iget-object v6, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/htc/util/weather/WSPRequest;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/htc/util/weather/WSPRequest;

    .line 217
    .local v5, wspReqArray:[Lcom/htc/util/weather/WSPRequest;
    :try_start_0
    iget-object v6, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    const-string v7, "WeatherClock"

    invoke-static {v6, v7, v5}, Lcom/htc/util/weather/WSPUtility;->triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v2

    .line 219
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceToSync~ triggerSyncService fail, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #wspReqArray:[Lcom/htc/util/weather/WSPRequest;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceToSync~ wait retryPending:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public forceUpdateIfNoData()V
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$State;->START:Lcom/htc/clock/util/location/LocationCtrl$State;

    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mState:Lcom/htc/clock/util/location/LocationCtrl$State;

    if-eq v0, v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const-string v0, "forceUpdateIfNoData~"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isNeedUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->forceToSync()V

    goto :goto_0
.end method

.method public getHTemp()Ljava/lang/String;
    .locals 5

    .prologue
    .line 611
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/location/LocationData;

    .line 612
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    if-nez v0, :cond_0

    .line 613
    const-string v3, ""

    .line 620
    :goto_0
    return-object v3

    .line 615
    :cond_0
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationData;->getForecast()Lcom/htc/clock/util/location/WeatherForecast;

    move-result-object v2

    .line 616
    .local v2, weatherForecast:Lcom/htc/clock/util/location/WeatherForecast;
    if-nez v2, :cond_1

    .line 617
    const-string v3, ""

    goto :goto_0

    .line 619
    :cond_1
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    invoke-virtual {v2, v3}, Lcom/htc/clock/util/location/WeatherForecast;->getHigh(Lcom/htc/clock/util/location/WeatherForecast$UNIT;)I

    move-result v1

    .line 620
    .local v1, temp:I
    invoke-direct {p0, v1}, Lcom/htc/clock/util/location/LocationCtrl;->getTemp(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getLTemp()Ljava/lang/String;
    .locals 5

    .prologue
    .line 625
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/location/LocationData;

    .line 626
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    if-nez v0, :cond_0

    .line 627
    const-string v3, ""

    .line 634
    :goto_0
    return-object v3

    .line 629
    :cond_0
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationData;->getForecast()Lcom/htc/clock/util/location/WeatherForecast;

    move-result-object v2

    .line 630
    .local v2, weatherForecast:Lcom/htc/clock/util/location/WeatherForecast;
    if-nez v2, :cond_1

    .line 631
    const-string v3, ""

    goto :goto_0

    .line 633
    :cond_1
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    invoke-virtual {v2, v3}, Lcom/htc/clock/util/location/WeatherForecast;->getLow(Lcom/htc/clock/util/location/WeatherForecast$UNIT;)I

    move-result v1

    .line 634
    .local v1, temp:I
    invoke-direct {p0, v1}, Lcom/htc/clock/util/location/LocationCtrl;->getTemp(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getLastUpdateTime()J
    .locals 3

    .prologue
    .line 776
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/location/LocationData;

    .line 777
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationData;->getLastUpdateTime()J

    move-result-wide v1

    .line 780
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getLocCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 797
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/location/LocationData;

    .line 798
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationData;->getLocCode()Ljava/lang/String;

    move-result-object v1

    .line 801
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocConditionId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, locConditon:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/clock/util/location/LocationData;

    .line 571
    .local v1, locData:Lcom/htc/clock/util/location/LocationData;
    const/4 v2, 0x0

    .line 572
    .local v2, weatherForecast:Lcom/htc/clock/util/location/WeatherForecast;
    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationData;->getForecast()Lcom/htc/clock/util/location/WeatherForecast;

    move-result-object v2

    .line 575
    :cond_0
    if-eqz v2, :cond_1

    .line 576
    invoke-virtual {v2}, Lcom/htc/clock/util/location/WeatherForecast;->getCondition()Ljava/lang/String;

    move-result-object v0

    .line 579
    :cond_1
    if-nez v0, :cond_2

    .line 580
    const-string v0, ""

    .line 582
    :cond_2
    return-object v0
.end method

.method public getLocConditionIdInt()I
    .locals 5

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->getLocConditionId()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, conditionId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 589
    .local v2, id:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 594
    :goto_0
    return v2

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocConditionIdInt~ exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 592
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLocKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLocName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, locName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/location/LocationData;

    .line 561
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationData;->getLocName()Ljava/lang/String;

    move-result-object v1

    .line 564
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocationCtrl~ getLocName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 565
    return-object v1
.end method

.method public getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;
    .locals 3

    .prologue
    .line 727
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/location/LocationData;

    .line 728
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    if-nez v0, :cond_0

    .line 729
    sget-object v1, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    .line 731
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    goto :goto_0
.end method

.method public getLocTemp()Ljava/lang/String;
    .locals 5

    .prologue
    .line 598
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/location/LocationData;

    .line 599
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    if-nez v0, :cond_0

    .line 600
    const-string v3, ""

    .line 607
    :goto_0
    return-object v3

    .line 602
    :cond_0
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationData;->getForecast()Lcom/htc/clock/util/location/WeatherForecast;

    move-result-object v2

    .line 603
    .local v2, weatherForecast:Lcom/htc/clock/util/location/WeatherForecast;
    if-nez v2, :cond_1

    .line 604
    const-string v3, ""

    goto :goto_0

    .line 606
    :cond_1
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    invoke-virtual {v2, v3}, Lcom/htc/clock/util/location/WeatherForecast;->getCur(Lcom/htc/clock/util/location/WeatherForecast$UNIT;)I

    move-result v1

    .line 607
    .local v1, temp:I
    invoke-direct {p0, v1}, Lcom/htc/clock/util/location/LocationCtrl;->getTemp(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getRetryCnt()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryForceCnt:I

    return v0
.end method

.method public getRetryPendingTime()J
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 228
    const-wide/16 v7, 0x0

    .line 229
    .local v7, waitTime:J
    sget-object v9, Lcom/htc/clock/util/location/LocationCtrl;->sRetryTimes:[J

    array-length v2, v9

    .line 230
    .local v2, maxSize:I
    iget v9, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryForceCnt:I

    add-int/lit8 v10, v2, -0x1

    if-le v9, v10, :cond_1

    .line 231
    sget-object v9, Lcom/htc/clock/util/location/LocationCtrl;->sRetryTimes:[J

    add-int/lit8 v10, v2, -0x1

    aget-wide v7, v9, v10

    .line 236
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 237
    .local v0, currentTime:J
    const-wide/16 v3, 0x0

    .line 238
    .local v3, pending:J
    iget-wide v9, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLastForceSyncTime:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    iget v9, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryForceCnt:I

    if-nez v9, :cond_2

    .line 240
    iput-wide v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLastForceSyncTime:J

    .line 241
    move-wide v3, v7

    .line 251
    :cond_0
    :goto_1
    return-wide v3

    .line 233
    .end local v0           #currentTime:J
    .end local v3           #pending:J
    :cond_1
    sget-object v9, Lcom/htc/clock/util/location/LocationCtrl;->sRetryTimes:[J

    iget v10, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryForceCnt:I

    aget-wide v7, v9, v10

    goto :goto_0

    .line 243
    .restart local v0       #currentTime:J
    .restart local v3       #pending:J
    :cond_2
    iget-wide v9, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLastForceSyncTime:J

    add-long v5, v9, v7

    .line 244
    .local v5, startSyncTime:J
    sub-long v3, v5, v0

    .line 245
    cmp-long v9, v3, v7

    if-lez v9, :cond_3

    .line 246
    move-wide v3, v7

    goto :goto_1

    .line 247
    :cond_3
    cmp-long v9, v3, v11

    if-gez v9, :cond_0

    .line 248
    const-wide/16 v3, 0x0

    goto :goto_1
.end method

.method public getState()Lcom/htc/clock/util/location/LocationCtrl$State;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mState:Lcom/htc/clock/util/location/LocationCtrl$State;

    return-object v0
.end method

.method public getTimeZoneId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 813
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/location/LocationData;

    .line 814
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationData;->getLocTimeZoneId()Ljava/lang/String;

    move-result-object v1

    .line 817
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;
    .locals 3

    .prologue
    .line 805
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/clock/util/location/LocationData;

    .line 806
    .local v0, locData:Lcom/htc/clock/util/location/LocationData;
    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {v0}, Lcom/htc/clock/util/location/LocationData;->getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 809
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCurrentLocation()Z
    .locals 2

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mIsWithCurLocation:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    const-string v1, "cur"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const/4 v0, 0x1

    .line 793
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceUpdateAvailable()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isLocServiceEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isWithCurrentLocation()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move v0, v2

    .line 191
    .local v0, isLocationEnable:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/htc/clock/util/location/LocationCtrl;->allowBackgroundData(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/clock/util/location/LocationCtrl;->isNetworkActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 195
    :cond_1
    const-string v2, "forceToSync~ no way to update"

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    move v2, v1

    .line 198
    :cond_2
    return v2

    .end local v0           #isLocationEnable:Z
    :cond_3
    move v0, v1

    .line 190
    goto :goto_0
.end method

.method public isLocServiceAvailable()Z
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocationAvailable:Z

    return v0
.end method

.method public isLocServiceEnable()Z
    .locals 2

    .prologue
    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLocServiceEnable enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocationEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 915
    iget-boolean v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocationEnable:Z

    return v0
.end method

.method public isNeedUpdate()Z
    .locals 14

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v10

    sget-object v11, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->OK:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    if-eq v10, v11, :cond_0

    .line 738
    const-string v10, "isNeedUpdate~ no weather"

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 739
    const/4 v10, 0x1

    .line 772
    :goto_0
    return v10

    .line 741
    :cond_0
    iget-object v10, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/util/weather/WSPUtility;->getAutoSyncFrequency(Landroid/content/Context;)J

    move-result-wide v10

    const-wide/32 v12, 0x2bf20

    add-long v6, v10, v12

    .line 743
    .local v6, updateInterval:J
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->getLastUpdateTime()J

    move-result-wide v8

    .line 744
    .local v8, updateTime:J
    add-long v3, v8, v6

    .line 745
    .local v3, nextAutoSyncTime:J
    invoke-static {}, Lcom/htc/clock/util/MyLog;->IsDebugLog()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 746
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 747
    .local v5, time:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 748
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 749
    .local v0, day:I
    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 750
    .local v1, hour:I
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 751
    .local v2, min:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isNeedUpdate~ updateInterval:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/32 v11, 0xea60

    div-long v11, v6, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 752
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isNeedUpdate~ current):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 753
    invoke-virtual {v5, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 754
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 755
    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 756
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 757
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isNeedUpdate~ updateTime):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 761
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 762
    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 763
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 764
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isNeedUpdate~ nextAutoSyncTime):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 767
    .end local v0           #day:I
    .end local v1           #hour:I
    .end local v2           #min:I
    .end local v5           #time:Ljava/util/Calendar;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_2

    .line 768
    const-string v10, "isNeedUpdate~ true"

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 769
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 771
    :cond_2
    const-string v10, "isNeedUpdate~ false"

    invoke-static {v10}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 772
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public isWithCurrentLocation()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mIsWithCurLocation:Z

    return v0
.end method

.method public onReceiverForceRetWeatherData(ZLcom/htc/util/weather/WSPData;)V
    .locals 0
    .parameter "bForceRet"
    .parameter "data"

    .prologue
    .line 493
    return-void
.end method

.method public onReceiverWeatherData(Lcom/htc/util/weather/WSPData;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 496
    if-nez p1, :cond_1

    .line 497
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    const-string v4, "onReceiverWeatherData~ data is null\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v5, p0, Lcom/htc/clock/util/location/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    const-string v6, "onReceiverWeatherData~ data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->toDebugInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    const/4 v2, 0x0

    .line 508
    .local v2, locData:Lcom/htc/clock/util/location/LocationData;
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getType()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 509
    .local v1, isCurData:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 510
    iget-object v5, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    const-string v6, "cur"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #locData:Lcom/htc/clock/util/location/LocationData;
    check-cast v2, Lcom/htc/clock/util/location/LocationData;

    .line 514
    .restart local v2       #locData:Lcom/htc/clock/util/location/LocationData;
    :goto_2
    if-nez v2, :cond_4

    .line 515
    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    const-string v4, "onReceiverWeatherData~ locData == null\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v1           #isCurData:Z
    :cond_2
    move v1, v4

    .line 508
    goto :goto_1

    .line 512
    .restart local v1       #isCurData:Z
    :cond_3
    iget-object v5, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getLocCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #locData:Lcom/htc/clock/util/location/LocationData;
    check-cast v2, Lcom/htc/clock/util/location/LocationData;

    .restart local v2       #locData:Lcom/htc/clock/util/location/LocationData;
    goto :goto_2

    .line 518
    :cond_4
    invoke-virtual {v2, p1, v4}, Lcom/htc/clock/util/location/LocationData;->setupByWSPData(Lcom/htc/util/weather/WSPData;Z)Z

    move-result v0

    .line 520
    .local v0, change:Z
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getLocCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isCurrentLocation()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 522
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/clock/util/location/LocationCtrl;->sendWSPUpdateMessage(Z)V

    goto :goto_0

    .line 523
    :cond_6
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getType()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 524
    iget-object v3, v2, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    sget-object v4, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    if-eq v3, v4, :cond_0

    .line 525
    invoke-virtual {p0, v0}, Lcom/htc/clock/util/location/LocationCtrl;->sendWSPUpdateMessage(Z)V

    goto :goto_0
.end method

.method public register(Landroid/os/Handler;Lcom/htc/clock/util/location/LocationListener;)V
    .locals 1
    .parameter "handler"
    .parameter "listener"

    .prologue
    .line 264
    const-string v0, "register"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 265
    iput-object p2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mListener:Lcom/htc/clock/util/location/LocationListener;

    .line 266
    invoke-direct {p0, p1}, Lcom/htc/clock/util/location/LocationCtrl;->setHandler(Landroid/os/Handler;)V

    .line 267
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/htc/clock/util/location/LocationCtrl;->initWeatherReceiver()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mTempUnitEnable:Z

    if-eqz v0, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/htc/clock/util/location/LocationCtrl;->initTempUnitReceiver()V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryEnable:Z

    if-eqz v0, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/htc/clock/util/location/LocationCtrl;->initConnReceiver()V

    .line 276
    :cond_2
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$State;->START:Lcom/htc/clock/util/location/LocationCtrl$State;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mState:Lcom/htc/clock/util/location/LocationCtrl$State;

    .line 277
    invoke-direct {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isUsedTempC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    sget-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    .line 282
    :goto_0
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->updateWeatherData()V

    .line 283
    return-void

    .line 280
    :cond_3
    sget-object v0, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_F:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    goto :goto_0
.end method

.method public requestCurData()Lcom/htc/util/weather/WSPData;
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v0

    .line 95
    .local v0, data:Lcom/htc/util/weather/WSPData;
    return-object v0
.end method

.method public requestLocData(Ljava/lang/String;)Lcom/htc/util/weather/WSPData;
    .locals 3
    .parameter "locCode"

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, data:Lcom/htc/util/weather/WSPData;
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method public sendWSPUpdateMessage(Z)V
    .locals 2
    .parameter "bCityChanged"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mListener:Lcom/htc/clock/util/location/LocationListener;

    if-nez v0, :cond_0

    .line 826
    const-string v0, "sendWSPUpdateMessage~ listener is null"

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 845
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v0

    sget-object v1, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->OK:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    if-ne v0, v1, :cond_1

    .line 831
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->setRetryCntBack()V

    .line 834
    :cond_1
    if-eqz p1, :cond_3

    .line 837
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v0

    sget-object v1, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    if-ne v0, v1, :cond_2

    .line 838
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->checkLocService()V

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 843
    :cond_3
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public setLocKey(Ljava/lang/String;)V
    .locals 0
    .parameter "locKey"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setRetryCntBack()V
    .locals 2

    .prologue
    .line 259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLastForceSyncTime:J

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryForceCnt:I

    .line 261
    return-void
.end method

.method public setRetryEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mRetryEnable:Z

    .line 86
    return-void
.end method

.method public setTempUnitEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mTempUnitEnable:Z

    .line 90
    return-void
.end method

.method public unRegister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/clock/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 467
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/clock/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 468
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/htc/clock/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 469
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/clock/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 471
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 473
    iput-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 477
    iput-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 481
    iput-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 485
    iput-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    .line 487
    :cond_3
    sget-object v0, Lcom/htc/clock/util/location/LocationCtrl$State;->STOP:Lcom/htc/clock/util/location/LocationCtrl$State;

    iput-object v0, p0, Lcom/htc/clock/util/location/LocationCtrl;->mState:Lcom/htc/clock/util/location/LocationCtrl$State;

    .line 488
    return-void
.end method

.method public updateDataByForeCast()Z
    .locals 4

    .prologue
    .line 648
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/clock/util/location/LocationData;

    .line 649
    .local v1, locData:Lcom/htc/clock/util/location/LocationData;
    const/4 v0, 0x0

    .line 650
    .local v0, bUpdate:Z
    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationData;->updateForecastDateNow()Z

    move-result v0

    .line 653
    :cond_0
    return v0
.end method

.method public updateWeatherData()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 531
    const/4 v6, 0x0

    .line 532
    .local v6, wspData:Lcom/htc/util/weather/WSPData;
    const/4 v4, 0x0

    .line 533
    .local v4, locData:Lcom/htc/clock/util/location/LocationData;
    const/4 v0, 0x0

    .line 534
    .local v0, bCityChanged:Z
    const/4 v1, 0x0

    .line 535
    .local v1, bwithCurData:Z
    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 536
    .local v5, locKey:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateWeatherData~ locKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 537
    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #locData:Lcom/htc/clock/util/location/LocationData;
    check-cast v4, Lcom/htc/clock/util/location/LocationData;

    .line 538
    .restart local v4       #locData:Lcom/htc/clock/util/location/LocationData;
    const-string v8, "cur"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->requestCurData()Lcom/htc/util/weather/WSPData;

    move-result-object v6

    .line 543
    :goto_1
    invoke-virtual {v4, v6, v7}, Lcom/htc/clock/util/location/LocationData;->setupByWSPData(Lcom/htc/util/weather/WSPData;Z)Z

    move-result v2

    .line 544
    .local v2, change:Z
    const-string v8, "cur"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isCurrentLocation()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/htc/clock/util/location/LocationCtrl;->isCurrentLocation()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 547
    move v0, v2

    .line 549
    :cond_1
    iget-object v8, v4, Lcom/htc/clock/util/location/LocationData;->mState:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    sget-object v9, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    if-eq v8, v9, :cond_3

    move v1, v7

    :goto_2
    goto :goto_0

    .line 541
    .end local v2           #change:Z
    :cond_2
    invoke-virtual {v4}, Lcom/htc/clock/util/location/LocationData;->getLocCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/clock/util/location/LocationCtrl;->requestLocData(Ljava/lang/String;)Lcom/htc/util/weather/WSPData;

    move-result-object v6

    goto :goto_1

    .line 549
    .restart local v2       #change:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 552
    .end local v2           #change:Z
    .end local v5           #locKey:Ljava/lang/String;
    :cond_4
    const-string v7, "cur"

    iget-object v8, p0, Lcom/htc/clock/util/location/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v1, :cond_5

    .line 553
    const/4 v0, 0x1

    .line 555
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/clock/util/location/LocationCtrl;->sendWSPUpdateMessage(Z)V

    .line 556
    return-void
.end method
