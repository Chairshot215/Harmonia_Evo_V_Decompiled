.class public Lcom/htc/weatheridlescreen/data/WeatherDataLoader;
.super Ljava/lang/Object;
.source "WeatherDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"

.field private static final PREFIX:Ljava/lang/String; = "[WeatherDaraLoader] "


# instance fields
.field private final DECODE_WEATHER_DATA:I

.field private final REQUEST_WEATHER_DATA:I

.field private final TEMPERATURE_UNIT_CHANGE:I

.field private mContext:Landroid/content/Context;

.field private mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field private mIsCurrentCityMode:Z

.field protected mLooper:Landroid/os/Looper;

.field private mMinRequestTime:J

.field private mNonUIHandler:Landroid/os/Handler;

.field private mRequestTime:J

.field private mServerUpdatetDate:J

.field private mStateResources:Lcom/htc/weather/StateResources;

.field private mTempUnitReceiver:Landroid/content/BroadcastReceiver;

.field private mWeatherCity:Ljava/lang/String;

.field private mWeatherDataReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    .line 30
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 31
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mLooper:Landroid/os/Looper;

    .line 32
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;

    .line 33
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mStateResources:Lcom/htc/weather/StateResources;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mIsCurrentCityMode:Z

    .line 36
    iput-wide v3, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mServerUpdatetDate:J

    .line 37
    iput-wide v3, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mRequestTime:J

    .line 38
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mMinRequestTime:J

    .line 40
    iput v5, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->REQUEST_WEATHER_DATA:I

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->DECODE_WEATHER_DATA:I

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->TEMPERATURE_UNIT_CHANGE:I

    .line 264
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    const-string v1, "CurrentCity"

    invoke-static {v0, v5, v1}, Lcom/htc/weatheridlescreen/WISPreference;->getStringSharePreference(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_1
    const-string v0, "CurrentCity"

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    .line 66
    :cond_2
    new-instance v0, Lcom/htc/weather/StateResources;

    invoke-direct {v0}, Lcom/htc/weather/StateResources;-><init>()V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mStateResources:Lcom/htc/weather/StateResources;

    .line 67
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mStateResources:Lcom/htc/weather/StateResources;

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mStateResources:Lcom/htc/weather/StateResources;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 69
    :cond_3
    iput-wide v3, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mServerUpdatetDate:J

    .line 70
    iput-wide v3, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mRequestTime:J

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mRequestTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mServerUpdatetDate:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mIsCurrentCityMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initTempUnitReceiver()V
    .locals 3

    .prologue
    .line 320
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, wspIntentFilter:Landroid/content/IntentFilter;
    if-eqz v0, :cond_0

    .line 327
    const-string v1, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v1, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2

    .line 331
    new-instance v1, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$3;

    invoke-direct {v1, p0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$3;-><init>(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private initWeatherDataReceiver()V
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .local v0, wspIntentFilter:Landroid/content/IntentFilter;
    if-eqz v0, :cond_0

    .line 276
    const-string v1, "com.htc.sync.provider.weather.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "WIS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    const-string v2, "CurrentCity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 283
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mIsCurrentCityMode:Z

    .line 284
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 292
    :goto_1
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    .line 294
    new-instance v1, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$2;

    invoke-direct {v1, p0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$2;-><init>(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 311
    :cond_3
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 289
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mIsCurrentCityMode:Z

    .line 290
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public initHandler()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WeatherDaraLoader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 85
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mLooper:Landroid/os/Looper;

    .line 89
    :cond_0
    new-instance v0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$1;-><init>(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;

    .line 219
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->initWeatherDataReceiver()V

    .line 222
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->initTempUnitReceiver()V

    .line 223
    return-void
.end method

.method public requestWeatherData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 75
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    :cond_0
    return-void
.end method

.method public resetCityForWeatherDataReceiver()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "CurrentCity"

    invoke-static {v0, v1, v2}, Lcom/htc/weatheridlescreen/WISPreference;->getStringSharePreference(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    :cond_1
    const-string v0, "CurrentCity"

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherCity:Ljava/lang/String;

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->initWeatherDataReceiver()V

    .line 259
    return-void
.end method

.method public setDataUpdateCallback(Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mDataUpdateCallback:Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;

    .line 54
    return-void
.end method

.method public unInitHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mTempUnitReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 245
    :cond_3
    return-void
.end method
