.class public Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;
.super Ljava/lang/Object;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;,
        Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$UIHandler;,
        Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;,
        Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;
    }
.end annotation


# static fields
.field public static final APP_LOCATION_SERVICE:Ljava/lang/String; = "com.htc.htclocationservice"

.field private static final CATEGORY_NAME:Ljava/lang/String; = "idlescreen_base"

.field public static final CURRENT_LOCATION_AVAIABLE:Ljava/lang/String; = "com.htc.Weather.location.avaiable"

.field public static final CURRENT_LOCATION_KEY:Ljava/lang/String; = "cur"

.field private static final DEGREE:Ljava/lang/String; = "\u00b0"

.field private static final LOG_PREFIX:Ljava/lang/String; = "LocationCtrl"

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

.field private mListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

.field private mLocDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/idlescreen/base/ctrl/weather/LocationData;",
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

.field private mState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

.field private mTempUnitEnable:Z

.field private mTempUnitReceiver:Landroid/content/BroadcastReceiver;

.field private mUIHandler:Landroid/os/Handler;

.field private mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

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
    .line 185
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->sRetryTimes:[J

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

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mBOnReceiveWeatherData:Z

    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    .line 68
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mIsWithCurLocation:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    .line 71
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;->NONE:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    .line 74
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    .line 77
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryEnable:Z

    .line 78
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mTempUnitEnable:Z

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLastForceSyncTime:J

    .line 184
    iput v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryForceCnt:I

    .line 651
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$UIHandler;-><init>(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUIHandler:Landroid/os/Handler;

    .line 881
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocationAvailable:Z

    .line 895
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocationEnable:Z

    .line 81
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;)Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mIsWithCurLocation:Z

    return v0
.end method

.method private addLoc(Lcom/htc/idlescreen/base/ctrl/weather/LocationData;)Z
    .locals 5
    .parameter "locData"

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, addRet:Z
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getLocCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    .line 122
    .local v1, wasReq:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {p0, v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->addWSPReq(Lcom/htc/util/weather/WSPRequest;)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getLocCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v1           #wasReq:Lcom/htc/util/weather/WSPRequest;
    :cond_0
    :goto_0
    return v0

    .line 126
    .restart local v1       #wasReq:Lcom/htc/util/weather/WSPRequest;
    :cond_1
    const-string v2, "LocationCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addLoc~ fail, locData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getLocCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private allowBackgroundData(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 918
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 920
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    .line 925
    :goto_0
    return v1

    .line 924
    :cond_0
    const-string v1, "LocationCtrl"

    const-string v2, "allowBackgroundData can\'t get Connectivity Manager"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTemp(I)Ljava/lang/String;
    .locals 2
    .parameter "temp"

    .prologue
    .line 633
    const/16 v1, -0x1f4

    if-ne p1, v1, :cond_0

    .line 634
    const-string v1, ""

    .line 639
    :goto_0
    return-object v1

    .line 636
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 637
    .local v0, strBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 638
    const-string v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getWeatheApCityName(Lcom/htc/util/weather/WeatherLocation;)Ljava/lang/String;
    .locals 3
    .parameter "weatherLoc"

    .prologue
    .line 851
    const-string v0, ""

    .line 852
    .local v0, cityName:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 853
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 856
    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 858
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

    .line 863
    :cond_1
    :goto_0
    return-object v0

    .line 859
    :cond_2
    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 861
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
    .line 294
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$1;

    invoke-direct {v1, p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$1;-><init>(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    .line 304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    return-void
.end method

.method private initTempUnitReceiver()V
    .locals 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 339
    const-string v1, "LocationCtrl"

    const-string v2, "initTempUnitReceiver~"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$2;

    invoke-direct {v1, p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$2;-><init>(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 369
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v1, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private initWeatherReceiver()V
    .locals 7

    .prologue
    .line 377
    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_1

    .line 378
    const-string v4, "LocationCtrl"

    const-string v5, "initWeatherReceiver~ init weatherReceiver"

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v4, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$3;

    invoke-direct {v4, p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$3;-><init>(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V

    iput-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    .line 422
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 423
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.sync.provider.weather.result"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v4, "idlescreen_base"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 427
    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

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

    .line 428
    .local v3, wspReq:Lcom/htc/util/weather/WSPRequest;
    const-string v4, "LocationCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initWeatherReceiver~ wspReq.toString():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    .end local v3           #wspReq:Lcom/htc/util/weather/WSPRequest;
    :cond_0
    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_2

    .line 435
    const-string v4, "LocationCtrl"

    const-string v5, "initWeatherReceiver~ init mWeatherApReceiver"

    invoke-static {v4, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "com.htc.Weather.delete_current_location"

    .line 440
    .local v0, DELETE_LOCATION_CUR_CHANGED:Ljava/lang/String;
    new-instance v4, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$4;

    invoke-direct {v4, p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$4;-><init>(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V

    iput-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    .line 457
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 458
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.Weather.delete_current_location"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 461
    .end local v0           #DELETE_LOCATION_CUR_CHANGED:Ljava/lang/String;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method public static isUseWirelessNetworks(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 913
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
    .line 842
    const/4 v0, 0x1

    .line 843
    .local v0, bUseTempC:Z
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/weather/WSPUtility;->getTemperatureUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, tempUnit:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 845
    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 847
    :cond_0
    return v0
.end method

.method private setHandler(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 709
    const/4 v0, 0x0

    .line 711
    .local v0, looper:Landroid/os/Looper;
    if-eqz p1, :cond_0

    .line 712
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 715
    :cond_0
    if-nez v0, :cond_1

    .line 716
    const-string v1, "LocationCtrl"

    const-string v2, "setHandler~ no looper"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_1
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;-><init>(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;

    .line 719
    return-void
.end method


# virtual methods
.method public addCurLoc()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 133
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v4

    .line 134
    .local v4, wasReq:Lcom/htc/util/weather/WSPRequest;
    invoke-virtual {p0, v4}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->addWSPReq(Lcom/htc/util/weather/WSPRequest;)Z

    move-result v0

    .line 136
    .local v0, bRet:Z
    if-eqz v0, :cond_1

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, curLocData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    iget-object v6, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.htc.htclocationservice"

    invoke-static {v6, v7}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    .line 140
    .local v3, locs:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v5, 0x0

    .line 141
    .local v5, wthLoc:Lcom/htc/util/weather/WeatherLocation;
    sget-object v2, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    .line 142
    .local v2, locState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 143
    const/4 v6, 0x0

    aget-object v5, v3, v6

    .line 144
    sget-object v2, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->ONLY_LOC:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    .line 151
    :goto_0
    new-instance v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .end local v1           #curLocData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    iget-object v6, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, v5, v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;-><init>(Landroid/content/Context;Lcom/htc/util/weather/WeatherLocation;Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;)V

    .line 152
    .restart local v1       #curLocData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    iput-boolean v8, v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->mIsCurLocation:Z

    .line 153
    iput-boolean v8, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mIsWithCurLocation:Z

    .line 154
    iget-object v6, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    const-string v7, "cur"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v1           #curLocData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    .end local v2           #locState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;
    .end local v3           #locs:[Lcom/htc/util/weather/WeatherLocation;
    .end local v5           #wthLoc:Lcom/htc/util/weather/WeatherLocation;
    :goto_1
    return v0

    .line 146
    .restart local v1       #curLocData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    .restart local v2       #locState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;
    .restart local v3       #locs:[Lcom/htc/util/weather/WeatherLocation;
    .restart local v5       #wthLoc:Lcom/htc/util/weather/WeatherLocation;
    :cond_0
    new-instance v5, Lcom/htc/util/weather/WeatherLocation;

    .end local v5           #wthLoc:Lcom/htc/util/weather/WeatherLocation;
    invoke-direct {v5}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 147
    .restart local v5       #wthLoc:Lcom/htc/util/weather/WeatherLocation;
    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 148
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    .end local v1           #curLocData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    .end local v2           #locState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;
    .end local v3           #locs:[Lcom/htc/util/weather/WeatherLocation;
    .end local v5           #wthLoc:Lcom/htc/util/weather/WeatherLocation;
    :cond_1
    const-string v6, "LocationCtrl"

    const-string v7, "addCurLoc~ fail"

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addLoc(Lcom/htc/util/weather/WeatherLocation;)Z
    .locals 2
    .parameter "wthLoc"

    .prologue
    .line 107
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;-><init>(Landroid/content/Context;Lcom/htc/util/weather/WeatherLocation;)V

    .line 108
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->addLoc(Lcom/htc/idlescreen/base/ctrl/weather/LocationData;)Z

    move-result v1

    return v1
.end method

.method public addLoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "locCode"
    .parameter "locName"
    .parameter "timezoneid"

    .prologue
    .line 112
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    invoke-direct {p0, v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->addLoc(Lcom/htc/idlescreen/base/ctrl/weather/LocationData;)Z

    move-result v1

    return v1
.end method

.method public addWSPReq(Lcom/htc/util/weather/WSPRequest;)Z
    .locals 3
    .parameter "wspReq"

    .prologue
    const/4 v0, 0x0

    .line 170
    if-nez p1, :cond_0

    .line 171
    const-string v1, "LocationCtrl"

    const-string v2, "addWSPReq~ the WSPReq is wrong"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    sget-object v2, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;->START:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    if-ne v1, v2, :cond_1

    .line 176
    const-string v1, "LocationCtrl"

    const-string v2, "addWSPReq~ the WSPReq is wrong becasue start"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkLocEnable()Z
    .locals 5

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocationEnable:Z

    .line 899
    .local v0, bOrg:Z
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    .line 900
    .local v1, listener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;->isHelpTurnOnLoc()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isUseWirelessNetworks(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocationEnable:Z

    .line 903
    :cond_0
    const-string v2, "LocationCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLocEnable enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocationEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocationEnable:Z

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

    .line 884
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    .line 885
    .local v0, listener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;->isChinaLocationService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.htc.Weather.location.avaiable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocationAvailable:Z

    .line 889
    :cond_0
    return-void

    .line 886
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkTempUnit()Z
    .locals 2

    .prologue
    .line 867
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    .line 868
    .local v0, unit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isUsedTempC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    .line 874
    :goto_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    if-eq v0, v1, :cond_1

    .line 875
    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    .line 876
    const/4 v1, 0x1

    .line 878
    :goto_1
    return v1

    .line 871
    :cond_0
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_F:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    goto :goto_0

    .line 878
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public forceRetryWeather()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 312
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v6}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 314
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    move-result-object v3

    sget-object v4, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;->START:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    if-eq v3, v4, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isNeedUpdate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getRetryCnt()I

    move-result v0

    .line 321
    .local v0, cnt:I
    const-string v3, "LocationCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceRetryWeather~ cnt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isForceUpdateAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->forceUpdateIfNoData()V

    .line 326
    if-ge v0, v6, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getRetryPendingTime()J

    move-result-wide v1

    .line 329
    .local v1, pending:J
    const-string v3, "LocationCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceRetryWeather~ schedule pending:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v6, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method

.method public forceToSync()V
    .locals 8

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isForceUpdateAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 209
    .local v0, currentTime:J
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getRetryPendingTime()J

    move-result-wide v2

    .line 210
    .local v2, retryPending:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_2

    .line 211
    iput-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLastForceSyncTime:J

    .line 212
    iget v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryForceCnt:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryForceCnt:I

    .line 213
    const-string v5, "LocationCtrl"

    const-string v6, "forceToSync~"

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWSPReqList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/htc/util/weather/WSPRequest;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/util/weather/WSPRequest;

    .line 217
    .local v4, wspReqArray:[Lcom/htc/util/weather/WSPRequest;
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    const-string v6, "idlescreen_base"

    invoke-static {v5, v6, v4}, Lcom/htc/util/weather/WSPUtility;->triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;)V

    goto :goto_0

    .line 221
    .end local v4           #wspReqArray:[Lcom/htc/util/weather/WSPRequest;
    :cond_2
    const-string v5, "LocationCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceToSync~ wait retryPending:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public forceUpdateIfNoData()V
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;->START:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    if-eq v0, v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string v0, "LocationCtrl"

    const-string v1, "forceUpdateIfNoData~"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isNeedUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->forceToSync()V

    goto :goto_0
.end method

.method public getHTemp()Ljava/lang/String;
    .locals 5

    .prologue
    .line 606
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 607
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    if-nez v0, :cond_0

    .line 608
    const-string v3, ""

    .line 615
    :goto_0
    return-object v3

    .line 610
    :cond_0
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getForecast()Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;

    move-result-object v2

    .line 611
    .local v2, weatherForecast:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;
    if-nez v2, :cond_1

    .line 612
    const-string v3, ""

    goto :goto_0

    .line 614
    :cond_1
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getForecast()Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    invoke-virtual {v3, v4}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->getHigh(Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;)I

    move-result v1

    .line 615
    .local v1, temp:I
    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getTemp(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getLTemp()Ljava/lang/String;
    .locals 5

    .prologue
    .line 620
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 621
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    if-nez v0, :cond_0

    .line 622
    const-string v3, ""

    .line 629
    :goto_0
    return-object v3

    .line 624
    :cond_0
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getForecast()Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;

    move-result-object v2

    .line 625
    .local v2, weatherForecast:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;
    if-nez v2, :cond_1

    .line 626
    const-string v3, ""

    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getForecast()Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    invoke-virtual {v3, v4}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->getLow(Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;)I

    move-result v1

    .line 629
    .local v1, temp:I
    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getTemp(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getLastUpdateTime()J
    .locals 3

    .prologue
    .line 770
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 771
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getLastUpdateTime()J

    move-result-wide v1

    .line 774
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getLocCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 791
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 792
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getLocCode()Ljava/lang/String;

    move-result-object v1

    .line 795
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocConditionId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, locConditon:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 570
    .local v1, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    const/4 v2, 0x0

    .line 571
    .local v2, weatherForecast:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;
    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getForecast()Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;

    move-result-object v2

    .line 574
    :cond_0
    if-eqz v2, :cond_1

    .line 575
    invoke-virtual {v2}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->getCondition()Ljava/lang/String;

    move-result-object v0

    .line 578
    :cond_1
    if-nez v0, :cond_2

    .line 579
    const-string v0, ""

    .line 581
    :cond_2
    return-object v0
.end method

.method public getLocConditionIdInt()I
    .locals 6

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocConditionId()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, conditionId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 588
    .local v2, id:I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 593
    :goto_0
    return v2

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LocationCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLocConditionIdInt~ exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLocKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLocName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, locName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 560
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getLocName()Ljava/lang/String;

    move-result-object v1

    .line 563
    :cond_0
    const-string v2, "LocationCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationCtrl~ getLocName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-object v1
.end method

.method public getLocState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;
    .locals 3

    .prologue
    .line 722
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 723
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    if-nez v0, :cond_0

    .line 724
    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    .line 726
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->mState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    goto :goto_0
.end method

.method public getLocTemp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 597
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 598
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    if-nez v0, :cond_0

    .line 599
    const-string v2, ""

    .line 602
    :goto_0
    return-object v2

    .line 601
    :cond_0
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getForecast()Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    invoke-virtual {v2, v3}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;->getCur(Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;)I

    move-result v1

    .line 602
    .local v1, temp:I
    invoke-direct {p0, v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getTemp(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRetryCnt()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryForceCnt:I

    return v0
.end method

.method public getRetryPendingTime()J
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 226
    const-wide/16 v7, 0x0

    .line 227
    .local v7, waitTime:J
    sget-object v9, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->sRetryTimes:[J

    array-length v2, v9

    .line 228
    .local v2, maxSize:I
    iget v9, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryForceCnt:I

    add-int/lit8 v10, v2, -0x1

    if-le v9, v10, :cond_1

    .line 229
    sget-object v9, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->sRetryTimes:[J

    add-int/lit8 v10, v2, -0x1

    aget-wide v7, v9, v10

    .line 234
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 235
    .local v0, currentTime:J
    const-wide/16 v3, 0x0

    .line 236
    .local v3, pending:J
    iget-wide v9, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLastForceSyncTime:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    iget v9, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryForceCnt:I

    if-nez v9, :cond_2

    .line 238
    iput-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLastForceSyncTime:J

    .line 239
    move-wide v3, v7

    .line 249
    :cond_0
    :goto_1
    return-wide v3

    .line 231
    .end local v0           #currentTime:J
    .end local v3           #pending:J
    :cond_1
    sget-object v9, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->sRetryTimes:[J

    iget v10, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryForceCnt:I

    aget-wide v7, v9, v10

    goto :goto_0

    .line 241
    .restart local v0       #currentTime:J
    .restart local v3       #pending:J
    :cond_2
    iget-wide v9, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLastForceSyncTime:J

    add-long v5, v9, v7

    .line 242
    .local v5, startSyncTime:J
    sub-long v3, v5, v0

    .line 243
    cmp-long v9, v3, v7

    if-lez v9, :cond_3

    .line 244
    move-wide v3, v7

    goto :goto_1

    .line 245
    :cond_3
    cmp-long v9, v3, v11

    if-gez v9, :cond_0

    .line 246
    const-wide/16 v3, 0x0

    goto :goto_1
.end method

.method public getState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    return-object v0
.end method

.method public getTimeZoneId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 807
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 808
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getLocTimeZoneId()Ljava/lang/String;

    move-result-object v1

    .line 811
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;
    .locals 3

    .prologue
    .line 799
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 800
    .local v0, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getWeatherLocation()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 803
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCurrentLocation()Z
    .locals 2

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mIsWithCurLocation:Z

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    const-string v1, "cur"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    const/4 v0, 0x1

    .line 787
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

    .line 191
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isLocServiceEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isWithCurrentLocation()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move v0, v2

    .line 192
    .local v0, isLocationEnable:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->allowBackgroundData(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/http/NetworkUtil;->isActiveNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 196
    :cond_1
    const-string v2, "LocationCtrl"

    const-string v3, "forceToSync~ no way to update"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 199
    :cond_2
    return v2

    .end local v0           #isLocationEnable:Z
    :cond_3
    move v0, v1

    .line 191
    goto :goto_0
.end method

.method public isLocServiceAvailable()Z
    .locals 1

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocationAvailable:Z

    return v0
.end method

.method public isLocServiceEnable()Z
    .locals 3

    .prologue
    .line 908
    const-string v0, "LocationCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocServiceEnable enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocationEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocationEnable:Z

    return v0
.end method

.method public isNeedUpdate()Z
    .locals 14

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    move-result-object v10

    sget-object v11, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->OK:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    if-eq v10, v11, :cond_0

    .line 733
    const-string v10, "LocationCtrl"

    const-string v11, "isNeedUpdate~ no weather"

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/4 v10, 0x1

    .line 766
    :goto_0
    return v10

    .line 736
    :cond_0
    iget-object v10, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/util/weather/WSPUtility;->getAutoSyncFrequency(Landroid/content/Context;)J

    move-result-wide v10

    const-wide/32 v12, 0x2bf20

    add-long v6, v10, v12

    .line 738
    .local v6, updateInterval:J
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLastUpdateTime()J

    move-result-wide v8

    .line 739
    .local v8, updateTime:J
    add-long v3, v8, v6

    .line 740
    .local v3, nextAutoSyncTime:J
    invoke-static {}, Lcom/htc/idlescreen/base/MyLog;->IsDebugLog()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 741
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 742
    .local v5, time:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 743
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 744
    .local v0, day:I
    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 745
    .local v1, hour:I
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 746
    .local v2, min:I
    const-string v10, "LocationCtrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isNeedUpdate~ updateInterval:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/32 v12, 0xea60

    div-long v12, v6, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v10, "LocationCtrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isNeedUpdate~ current):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v5, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 749
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 750
    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 751
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 752
    const-string v10, "LocationCtrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isNeedUpdate~ updateTime):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-virtual {v5, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 755
    const/4 v10, 0x5

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 756
    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 757
    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 758
    const-string v10, "LocationCtrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isNeedUpdate~ nextAutoSyncTime):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
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

    .line 762
    const-string v10, "LocationCtrl"

    const-string v11, "isNeedUpdate~ true"

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 765
    :cond_2
    const-string v10, "LocationCtrl"

    const-string v11, "isNeedUpdate~ false"

    invoke-static {v10, v11}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public isWithCurrentLocation()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mIsWithCurLocation:Z

    return v0
.end method

.method public onReceiverForceRetWeatherData(ZLcom/htc/util/weather/WSPData;)V
    .locals 0
    .parameter "bForceRet"
    .parameter "data"

    .prologue
    .line 491
    return-void
.end method

.method public onReceiverWeatherData(Lcom/htc/util/weather/WSPData;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 494
    if-nez p1, :cond_1

    .line 495
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    const-string v4, "onReceiverWeatherData~ data is null\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    const-string v6, "onReceiverWeatherData~ data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->toDebugInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    const/4 v2, 0x0

    .line 506
    .local v2, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getType()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v1, v3

    .line 507
    .local v1, isCurData:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 508
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    const-string v6, "cur"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    check-cast v2, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 512
    .restart local v2       #locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    :goto_2
    if-nez v2, :cond_4

    .line 513
    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mSOnReceiveLog:Ljava/lang/StringBuffer;

    const-string v4, "onReceiverWeatherData~ locData == null\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v1           #isCurData:Z
    :cond_2
    move v1, v4

    .line 506
    goto :goto_1

    .line 510
    .restart local v1       #isCurData:Z
    :cond_3
    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getLocCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    check-cast v2, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .restart local v2       #locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    goto :goto_2

    .line 516
    :cond_4
    invoke-virtual {v2, p1, v4}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->setupByWSPData(Lcom/htc/util/weather/WSPData;Z)Z

    move-result v0

    .line 518
    .local v0, change:Z
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getLocCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isCurrentLocation()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 520
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->sendWSPUpdateMessage(Z)V

    goto :goto_0

    .line 521
    :cond_6
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPData;->getType()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 522
    iget-object v3, v2, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->mState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    sget-object v4, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    if-eq v3, v4, :cond_0

    .line 523
    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->sendWSPUpdateMessage(Z)V

    goto :goto_0
.end method

.method public register(Landroid/os/Handler;Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;)V
    .locals 2
    .parameter "handler"
    .parameter "listener"

    .prologue
    .line 262
    const-string v0, "LocationCtrl"

    const-string v1, "register"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iput-object p2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    .line 264
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->setHandler(Landroid/os/Handler;)V

    .line 265
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->initWeatherReceiver()V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mTempUnitEnable:Z

    if-eqz v0, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->initTempUnitReceiver()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryEnable:Z

    if-eqz v0, :cond_2

    .line 272
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->initConnReceiver()V

    .line 274
    :cond_2
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;->START:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    .line 275
    invoke-direct {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isUsedTempC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->updateWeatherData()V

    .line 281
    return-void

    .line 278
    :cond_3
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_F:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    goto :goto_0
.end method

.method public requestCurData()Lcom/htc/util/weather/WSPData;
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v0

    .line 96
    .local v0, data:Lcom/htc/util/weather/WSPData;
    return-object v0
.end method

.method public requestLocData(Ljava/lang/String;)Lcom/htc/util/weather/WSPData;
    .locals 3
    .parameter "locCode"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, data:Lcom/htc/util/weather/WSPData;
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v0

    .line 103
    return-object v0
.end method

.method public sendWSPUpdateMessage(Z)V
    .locals 2
    .parameter "bCityChanged"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    if-nez v0, :cond_0

    .line 820
    const-string v0, "sendWSPUpdateMessage~ listener is null"

    invoke-static {v0}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;)V

    .line 839
    :goto_0
    return-void

    .line 824
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    move-result-object v0

    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->OK:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    if-ne v0, v1, :cond_1

    .line 825
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->setRetryCntBack()V

    .line 828
    :cond_1
    if-eqz p1, :cond_3

    .line 831
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    move-result-object v0

    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    if-ne v0, v1, :cond_2

    .line 832
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->checkLocService()V

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public setLocKey(Ljava/lang/String;)V
    .locals 0
    .parameter "locKey"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setRetryCntBack()V
    .locals 2

    .prologue
    .line 257
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLastForceSyncTime:J

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryForceCnt:I

    .line 259
    return-void
.end method

.method public setRetryEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mRetryEnable:Z

    .line 87
    return-void
.end method

.method public setTempUnitEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mTempUnitEnable:Z

    .line 91
    return-void
.end method

.method public unRegister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 464
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 465
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 466
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 467
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 469
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 471
    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherReceiver:Landroid/content/BroadcastReceiver;

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 475
    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 479
    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mWeatherApReceiver:Landroid/content/BroadcastReceiver;

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 483
    iput-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mConnectChangeRec:Landroid/content/BroadcastReceiver;

    .line 485
    :cond_3
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;->STOP:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    iput-object v0, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$State;

    .line 486
    return-void
.end method

.method public updateDataByForeCast()Z
    .locals 4

    .prologue
    .line 643
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 644
    .local v1, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    const/4 v0, 0x0

    .line 645
    .local v0, bUpdate:Z
    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->updateForecastDateNow()Z

    move-result v0

    .line 648
    :cond_0
    return v0
.end method

.method public updateWeatherData()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    .line 529
    const/4 v6, 0x0

    .line 530
    .local v6, wspData:Lcom/htc/util/weather/WSPData;
    const/4 v4, 0x0

    .line 531
    .local v4, locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    const/4 v0, 0x0

    .line 532
    .local v0, bCityChanged:Z
    const/4 v1, 0x0

    .line 533
    .local v1, bwithCurData:Z
    iget-object v8, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

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

    .line 534
    .local v5, locKey:Ljava/lang/String;
    const-string v8, "LocationCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWeatherData~ locKey:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v8, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocDataMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    check-cast v4, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;

    .line 536
    .restart local v4       #locData:Lcom/htc/idlescreen/base/ctrl/weather/LocationData;
    const-string v8, "cur"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 537
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->requestCurData()Lcom/htc/util/weather/WSPData;

    move-result-object v6

    .line 541
    :goto_1
    const-string v8, "LocationCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateWeatherData~ wspData:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v4, v6, v7}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->setupByWSPData(Lcom/htc/util/weather/WSPData;Z)Z

    move-result v2

    .line 543
    .local v2, change:Z
    const-string v8, "cur"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isCurrentLocation()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->isCurrentLocation()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 546
    move v0, v2

    .line 548
    :cond_1
    iget-object v8, v4, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->mState:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    sget-object v9, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    if-eq v8, v9, :cond_3

    move v1, v7

    :goto_2
    goto :goto_0

    .line 539
    .end local v2           #change:Z
    :cond_2
    invoke-virtual {v4}, Lcom/htc/idlescreen/base/ctrl/weather/LocationData;->getLocCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->requestLocData(Ljava/lang/String;)Lcom/htc/util/weather/WSPData;

    move-result-object v6

    goto :goto_1

    .line 548
    .restart local v2       #change:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 551
    .end local v2           #change:Z
    .end local v5           #locKey:Ljava/lang/String;
    :cond_4
    const-string v7, "cur"

    iget-object v8, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mLocKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v1, :cond_5

    .line 552
    const/4 v0, 0x1

    .line 554
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->sendWSPUpdateMessage(Z)V

    .line 555
    return-void
.end method
