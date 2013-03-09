.class public Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;
    }
.end annotation


# static fields
.field private static final DECODE_WEATHER_DATA:I = 0x2

.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field private static final PREFIX:Ljava/lang/String; = "[DataHandler]: "

.field private static final REQUEST_WEATHER_DATA:I = 0x1


# instance fields
.field private mCityCode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLooper:Landroid/os/Looper;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mWeatherDataReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    .line 29
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 30
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mLooper:Landroid/os/Looper;

    .line 31
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mCityCode:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->getCityCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mCityCode:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->onInit()V

    .line 54
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 97
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->requestWSPPData()V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    move-object v0, v1

    check-cast v0, Landroid/content/Intent;

    .line 105
    .local v0, data:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->decodeIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private callbackForUpdatingData(ZLcom/htc/android/WeatherLiveWallpaper/data/WeatherData;)V
    .locals 2
    .parameter "hasData"
    .parameter "data"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mDataUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;

    if-eqz v0, :cond_0

    .line 228
    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mDataUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;

    invoke-interface {v0, p2}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;->onDataUpdate(Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mDataUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;->onDataUpdate(Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;)V

    goto :goto_0
.end method

.method private decodeIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 139
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const-string v3, "WeatherLiveWallpaper"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/util/weather/WSPPData;

    .line 145
    .local v1, data:Lcom/htc/util/weather/WSPPData;
    invoke-direct {p0, v1}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->decodeWSPPData(Lcom/htc/util/weather/WSPPData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1           #data:Lcom/htc/util/weather/WSPPData;
    :catch_0
    move-exception v2

    .line 148
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "WeatherLiveWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DataHandler]: decodeIntent() - Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private decodeWSPPData(Lcom/htc/util/weather/WSPPData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mCityCode:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;-><init>(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;Ljava/lang/String;)V

    .line 157
    .local v0, mData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->callbackForUpdatingData(ZLcom/htc/android/WeatherLiveWallpaper/data/WeatherData;)V

    .line 162
    .end local v0           #mData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->callbackForUpdatingData(ZLcom/htc/android/WeatherLiveWallpaper/data/WeatherData;)V

    goto :goto_0
.end method

.method private onInit()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WeatherDataHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mLooper:Landroid/os/Looper;

    .line 64
    :cond_0
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$1;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$1;-><init>(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    .line 71
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mCityCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->onInitWeatherDataReceiver(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private onInitWeatherDataReceiver(Ljava/lang/String;)V
    .locals 3
    .parameter "code"

    .prologue
    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v0, wspIntentFilter:Landroid/content/IntentFilter;
    if-eqz v0, :cond_0

    .line 170
    const-string v1, "com.htc.sync.provider.weather.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "WeatherLiveWallpaper"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 172
    const-string v1, "CurrentCity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 179
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    :cond_1
    new-instance v1, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$2;

    invoke-direct {v1, p0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$2;-><init>(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;)V

    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    :cond_2
    return-void

    .line 176
    :cond_3
    invoke-static {p1}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestWSPPData()V
    .locals 6

    .prologue
    .line 114
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mCityCode:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v0, ""

    .line 115
    .local v0, code:Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    new-array v3, v4, [Lcom/htc/util/weather/WSPRequest;

    .line 116
    .local v3, req:[Lcom/htc/util/weather/WSPRequest;
    const-string v4, "CurrentCity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v5

    aput-object v5, v3, v4

    .line 121
    :goto_1
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v4, v5}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v1

    .line 123
    .local v1, data:Lcom/htc/util/weather/WSPPData;
    invoke-direct {p0, v1}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->decodeWSPPData(Lcom/htc/util/weather/WSPPData;)V

    .line 129
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #data:Lcom/htc/util/weather/WSPPData;
    .end local v3           #req:[Lcom/htc/util/weather/WSPRequest;
    :cond_0
    :goto_2
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mCityCode:Ljava/lang/String;

    goto :goto_0

    .line 119
    .restart local v0       #code:Ljava/lang/String;
    .restart local v3       #req:[Lcom/htc/util/weather/WSPRequest;
    :cond_2
    const/4 v4, 0x0

    invoke-static {v0}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    .end local v0           #code:Ljava/lang/String;
    .end local v3           #req:[Lcom/htc/util/weather/WSPRequest;
    :catch_0
    move-exception v2

    .line 127
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 84
    :cond_1
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mLooper:Landroid/os/Looper;

    .line 85
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 86
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    .line 88
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    :cond_2
    iput-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public requestWeatherData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 218
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :cond_0
    return-void
.end method

.method public resetCityForWeatherDataReceiver()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->getCityCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mCityCode:Ljava/lang/String;

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mCityCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->onInitWeatherDataReceiver(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public setDataUpdateCallback(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mDataUpdateCallback:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;

    .line 46
    return-void
.end method
