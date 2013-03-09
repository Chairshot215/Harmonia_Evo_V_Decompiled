.class public Lcom/htc/Weather/data/DataProcesser;
.super Ljava/lang/Thread;
.source "DataProcesser.java"

# interfaces
.implements Lcom/htc/Weather/WeatherModel$WeatherModelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/data/DataProcesser$DataHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataProcesser"

.field public static final WHAT_ADD_CITY_FROM_RESULT:I = 0x1

.field public static final WHAT_LOAD_WALLPAPER_SET_WINDOW_BACKGROUND:I = 0x5

.field public static final WHAT_PARSE_DATA_PACKET:I = 0x2

.field public static final WHAT_RE_FATCH_DATA:I = 0x3

.field public static final WHAT_START_FATCH_DATA:I = 0x0

.field public static final WHAT_UPDATE_DATA_MODEL:I = 0x4

.field private static final sDaysMedium:[I


# instance fields
.field private final FETCH_DATA_WHEN_INIT:I

.field private final FETCH_DATA_WHEN_REFRESH:I

.field private final FETCH_DATA_WHEN_RE_FATCH:I

.field private mContext:Landroid/content/Context;

.field private mDataHandler:Landroid/os/Handler;

.field private mModel:Lcom/htc/Weather/WeatherModel;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/Weather/data/DataProcesser;->sDaysMedium:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x60t 0x0t 0x4t 0x1t
        0x61t 0x0t 0x4t 0x1t
        0x62t 0x0t 0x4t 0x1t
        0x63t 0x0t 0x4t 0x1t
        0x64t 0x0t 0x4t 0x1t
        0x65t 0x0t 0x4t 0x1t
        0x66t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/htc/Weather/WeatherModel;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "model"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/Weather/data/DataProcesser;->FETCH_DATA_WHEN_INIT:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/data/DataProcesser;->FETCH_DATA_WHEN_REFRESH:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/Weather/data/DataProcesser;->FETCH_DATA_WHEN_RE_FATCH:I

    .line 59
    iput-object p1, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    .line 60
    iput-object p2, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/data/DataProcesser;)Lcom/htc/Weather/WeatherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/data/DataProcesser;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/Weather/data/DataProcesser;->startFetchData(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/Weather/data/DataProcesser;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/Weather/data/DataProcesser;ILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/Weather/data/DataProcesser;->parseDataPacket(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/Weather/data/DataProcesser;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkNetworkActivate(Z)Z
    .locals 4
    .parameter "popDialog"

    .prologue
    .line 611
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/htc/Weather/data/DataProcesser;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 612
    .local v0, mBoolHaveActiveNetwork:Z
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/htc/Weather/data/DataProcesser;->checkRoamingStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 619
    :cond_0
    :goto_0
    const-string v1, "DataProcesser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActiveNetwork in reFetchData --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return v0

    .line 616
    :cond_1
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkRoamingStatus()Z
    .locals 6

    .prologue
    .line 624
    const/4 v1, 0x0

    .line 627
    .local v1, isRoaming:Z
    iget-object v4, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 628
    .local v3, tm:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 629
    .local v0, isNetworkRoaming:Z
    if-eqz v3, :cond_0

    .line 630
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 632
    :cond_0
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 634
    const-string v4, "DataProcesser"

    const-string v5, "Device is under roaming!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v4, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/htc/Weather/data/DataProcesser;->isNetworkActive(Landroid/content/Context;)Z

    move-result v2

    .line 638
    .local v2, mBoolHaveActiveNetwork:Z
    if-nez v2, :cond_1

    .line 639
    const-string v4, "DataProcesser"

    const-string v5, "Device is no wifi connection!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v1, 0x1

    .line 651
    .end local v2           #mBoolHaveActiveNetwork:Z
    :goto_0
    return v1

    .line 643
    .restart local v2       #mBoolHaveActiveNetwork:Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 647
    .end local v2           #mBoolHaveActiveNetwork:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCityCache(Lcom/htc/Weather/data/DCSResult;I)Z
    .locals 4
    .parameter "ret"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 248
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v3, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt p2, v3, :cond_0

    iget-object v3, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3, p2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v2

    .line 255
    :cond_1
    const/4 v1, 0x0

    .line 257
    .local v1, city:Lcom/htc/Weather/data/City;
    iget-object v3, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3, p2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/htc/Weather/data/DataProcesser;->getForecastData(Lcom/htc/Weather/data/DCSResult;Lcom/htc/Weather/data/CityInfo;)Lcom/htc/Weather/data/City;

    move-result-object v1

    .line 259
    iget-object v3, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3, p2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2, p2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    .line 261
    .local v0, ci:Lcom/htc/Weather/data/CityInfo;
    invoke-virtual {v0, v1}, Lcom/htc/Weather/data/CityInfo;->setCity(Lcom/htc/Weather/data/City;)V

    .line 262
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/htc/Weather/data/CityInfo;->changeOffsetOfToday(Landroid/content/Context;)Z

    .line 263
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getCityDataFromAgent(IZ)V
    .locals 12
    .parameter "index"
    .parameter "bForceUpdate"

    .prologue
    .line 440
    const-string v8, "DataProcesser"

    const-string v9, "getCityDataFromAgent"

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v8, p1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    .line 442
    .local v0, cityinfo:Lcom/htc/Weather/data/CityInfo;
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/Weather/util/WeatherUtil;->isNetworkActive(Landroid/content/Context;)Z

    move-result v3

    .line 445
    .local v3, isNetworkActive:Z
    :try_start_0
    invoke-static {v0}, Lcom/htc/Weather/util/WeatherUtil;->makeRequest(Lcom/htc/Weather/data/CityInfo;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v6

    .line 446
    .local v6, req:Lcom/htc/util/weather/WSPRequest;
    if-nez v6, :cond_1

    .line 495
    .end local v6           #req:Lcom/htc/util/weather/WSPRequest;
    :cond_0
    :goto_0
    return-void

    .line 448
    .restart local v6       #req:Lcom/htc/util/weather/WSPRequest;
    :cond_1
    if-eqz p2, :cond_3

    .line 451
    if-nez v3, :cond_2

    .line 452
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    .end local v6           #req:Lcom/htc/util/weather/WSPRequest;
    :catch_0
    move-exception v2

    .line 492
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    const-string v8, "DataProcesser"

    const-string v9, "above exception has been catched"

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #req:Lcom/htc/util/weather/WSPRequest;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    const-string v9, "sync_data_category"

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/htc/util/weather/WSPRequest;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v8, v9, v10}, Lcom/htc/util/weather/WSPPUtility;->triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;)V

    goto :goto_0

    .line 459
    :cond_3
    const-string v8, "DataProcesser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bForceUpdate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " WSPPUtility.request()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v1

    .line 462
    .local v1, data:Lcom/htc/util/weather/WSPPData;
    if-eqz v1, :cond_5

    .line 463
    new-instance v7, Lcom/htc/Weather/data/DCSResult;

    invoke-direct {v7, v1}, Lcom/htc/Weather/data/DCSResult;-><init>(Lcom/htc/util/weather/WSPPData;)V

    .line 465
    .local v7, ret:Lcom/htc/Weather/data/DCSResult;
    invoke-virtual {v0}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v8

    iget-wide v8, v8, Lcom/htc/Weather/data/City;->update_time:J

    invoke-virtual {v7}, Lcom/htc/Weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 468
    invoke-virtual {v7}, Lcom/htc/Weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/htc/Weather/data/CityInfo;->setUpdateTime(J)V

    .line 471
    invoke-virtual {v0}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.htclocationservice"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 472
    const-string v8, "DataProcesser"

    const-string v9, "update Current location city name"

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.htc.htclocationservice"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "com.htc.elroy.Weather"

    aput-object v9, v5, v8

    .line 474
    .local v5, pkgname:[Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocationsFilterByApp(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    .line 475
    .local v4, locs:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v4, :cond_4

    array-length v8, v4

    if-lez v8, :cond_4

    const/4 v8, 0x0

    aget-object v8, v4, v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.htclocationservice"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 476
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 479
    .end local v4           #locs:[Lcom/htc/util/weather/WeatherLocation;
    .end local v5           #pkgname:[Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v7, p1}, Lcom/htc/Weather/data/DataProcesser;->getCityCache(Lcom/htc/Weather/data/DCSResult;I)Z

    goto/16 :goto_0

    .line 488
    .end local v7           #ret:Lcom/htc/Weather/data/DCSResult;
    :cond_5
    const-string v8, "DataProcesser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no cache data in Agent for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private getForecastData(Lcom/htc/Weather/data/DCSResult;Lcom/htc/Weather/data/CityInfo;)Lcom/htc/Weather/data/City;
    .locals 13
    .parameter "ret"
    .parameter "ci"

    .prologue
    .line 269
    new-instance v0, Lcom/htc/Weather/data/City;

    invoke-direct {v0}, Lcom/htc/Weather/data/City;-><init>()V

    .line 271
    .local v0, city:Lcom/htc/Weather/data/City;
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/htc/Weather/data/City;->overdue:Z

    .line 273
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/htc/Weather/data/City;->update_time:J

    .line 276
    sget-object v11, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    iput-object v11, v0, Lcom/htc/Weather/data/City;->unit:Lcom/htc/Weather/data/City$UNIT;

    .line 279
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getTotalForecast()I

    move-result v1

    .line 281
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 284
    new-instance v2, Lcom/htc/Weather/data/DayForecast;

    iget-object v11, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-direct {v2, v11}, Lcom/htc/Weather/data/DayForecast;-><init>(Landroid/content/Context;)V

    .line 286
    .local v2, dayF:Lcom/htc/Weather/data/DayForecast;
    if-nez v3, :cond_4

    .line 289
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentTempF()I

    move-result v4

    .line 290
    .local v4, nCurTemp:I
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getForecastHighTempF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    .line 291
    .local v5, nHiTemp:I
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getForecastLowTempF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v8

    .line 293
    .local v8, nLoTemp:I
    invoke-virtual {v2, v4}, Lcom/htc/Weather/data/DayForecast;->setCurrentF(I)V

    .line 294
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentRealFeelF()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setCurrentRealFeelF_(I)V

    .line 295
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentRealFeelC()I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setCurrentRealFeelC_(I)V

    .line 299
    if-le v4, v5, :cond_0

    .line 300
    invoke-virtual {v2, v4}, Lcom/htc/Weather/data/DayForecast;->setDayHighTempF_(I)V

    .line 303
    :goto_1
    if-ge v4, v8, :cond_1

    .line 304
    invoke-virtual {v2, v4}, Lcom/htc/Weather/data/DayForecast;->setDayLowTempF_(I)V

    .line 310
    :goto_2
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentTempC()I

    move-result v4

    .line 311
    invoke-virtual {p1, v3}, Lcom/htc/Weather/data/DCSResult;->getForecastHighTempC(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    .line 312
    invoke-virtual {p1, v3}, Lcom/htc/Weather/data/DCSResult;->getForecastLowTempC(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v8

    .line 313
    invoke-virtual {v2, v4}, Lcom/htc/Weather/data/DayForecast;->setCurrentC(I)V

    .line 316
    if-le v4, v5, :cond_2

    .line 317
    invoke-virtual {v2, v4}, Lcom/htc/Weather/data/DayForecast;->setDayHighTempC_(I)V

    .line 320
    :goto_3
    if-ge v4, v8, :cond_3

    .line 321
    invoke-virtual {v2, v4}, Lcom/htc/Weather/data/DayForecast;->setDayLowTempC_(I)V

    .line 326
    :goto_4
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getHourlyTempF()[I

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setHourlyTempF([I)V

    .line 327
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getHourlyTempC()[I

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setHourlyTempC([I)V

    .line 328
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getHourlyIcon()[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setHourlyIcon([Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getHourlyTime()[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setHourlyTime([Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getHourlyPrecip()[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setHourlyPrecip([Ljava/lang/String;)V

    .line 332
    iget-object v11, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentIcon()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/Weather/widget/IconPicker;->getConditionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setCondition(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentIcon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setForecastIcon(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getDayLightFlag()Ljava/lang/String;

    move-result-object v11

    const-string v12, "True"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setDayLight(Z)V

    .line 337
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCityLocalTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setCityLocalTime(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCityWebURL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setCityWebURL(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentHumi()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setHumi(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentWindSpeed()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setWindspeed(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentVisibility()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setVisibility(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentWindSpeedKM()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setWindspeedKM(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getCurrentVisibilityKM()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setVisibilityKM(Ljava/lang/String;)V

    .line 365
    .end local v4           #nCurTemp:I
    .end local v5           #nHiTemp:I
    .end local v8           #nLoTemp:I
    :goto_5
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstSunrise()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setSunrise(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstSunset()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setSunset(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstPrecip()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setPrecip(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstDayRealFeelHighF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setDayHighRealfeelTempF_(I)V

    .line 370
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstDayRealFeelHighC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setDayHighRealfeelTempC_(I)V

    .line 371
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstDayRealFeelLowF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setDayLowRealfeelTempF_(I)V

    .line 372
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstDayRealFeelLowC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setDayLowRealfeelTempC_(I)V

    .line 375
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightIcon()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightForecaseIcon(Ljava/lang/String;)V

    .line 376
    iget-object v11, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightIcon()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v3

    invoke-static {v11, v12}, Lcom/htc/Weather/widget/IconPicker;->getConditionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightCondition(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightPrecip()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightPrecip(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightHighTempF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightHighTempF_(I)V

    .line 380
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightHighTempC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightHighTempC_(I)V

    .line 382
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightLowTempF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightLowTempF_(I)V

    .line 383
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightLowTempC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightLowTempC_(I)V

    .line 385
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightRealFeelHighF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightHighRealfeelTempF_(I)V

    .line 386
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightRealFeelHighC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightHighRealfeelTempC_(I)V

    .line 387
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightRealFeelLowF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightLowRealfeelTempF_(I)V

    .line 388
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getFstNightRealFeelLowC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setNightLowRealfeelTempC_(I)V

    .line 390
    invoke-virtual {p1, v3}, Lcom/htc/Weather/data/DCSResult;->getForecastName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/htc/Weather/data/DataProcesser;->getDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setWeekDay(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1, v3}, Lcom/htc/Weather/data/DCSResult;->getForecastDate(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setDate(Ljava/lang/String;)V

    .line 395
    iget-object v11, v0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v11, v2}, Lcom/htc/Weather/data/City$Condition;->add(Lcom/htc/Weather/data/DayForecast;)V

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 302
    .restart local v4       #nCurTemp:I
    .restart local v5       #nHiTemp:I
    .restart local v8       #nLoTemp:I
    :cond_0
    invoke-virtual {v2, v5}, Lcom/htc/Weather/data/DayForecast;->setDayHighTempF_(I)V

    goto/16 :goto_1

    .line 306
    :cond_1
    invoke-virtual {v2, v8}, Lcom/htc/Weather/data/DayForecast;->setDayLowTempF_(I)V

    goto/16 :goto_2

    .line 319
    :cond_2
    invoke-virtual {v2, v5}, Lcom/htc/Weather/data/DayForecast;->setDayHighTempC_(I)V

    goto/16 :goto_3

    .line 323
    :cond_3
    invoke-virtual {v2, v8}, Lcom/htc/Weather/data/DayForecast;->setDayLowTempC_(I)V

    goto/16 :goto_4

    .line 348
    .end local v4           #nCurTemp:I
    .end local v5           #nHiTemp:I
    .end local v8           #nLoTemp:I
    :cond_4
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getForecastHighTempF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v7

    .line 349
    .local v7, nHiTempF:I
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getForecastHighTempC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v6

    .line 350
    .local v6, nHiTempC:I
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getForecastLowTempF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v10

    .line 351
    .local v10, nLoTempF:I
    invoke-virtual {p1}, Lcom/htc/Weather/data/DCSResult;->getForecastLowTempC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v9

    .line 353
    .local v9, nLoTempC:I
    add-int v11, v7, v10

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setCurrentF(I)V

    .line 354
    add-int v11, v6, v9

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setCurrentC(I)V

    .line 355
    invoke-virtual {v2, v7}, Lcom/htc/Weather/data/DayForecast;->setDayHighTempF_(I)V

    .line 356
    invoke-virtual {v2, v6}, Lcom/htc/Weather/data/DayForecast;->setDayHighTempC_(I)V

    .line 357
    invoke-virtual {v2, v10}, Lcom/htc/Weather/data/DayForecast;->setDayLowTempF_(I)V

    .line 358
    invoke-virtual {v2, v9}, Lcom/htc/Weather/data/DayForecast;->setDayLowTempC_(I)V

    .line 360
    iget-object v11, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lcom/htc/Weather/data/DCSResult;->getForecastIcon(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/Weather/widget/IconPicker;->getConditionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setCondition(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1, v3}, Lcom/htc/Weather/data/DCSResult;->getForecastIcon(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/Weather/data/DayForecast;->setForecastIcon(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 397
    .end local v2           #dayF:Lcom/htc/Weather/data/DayForecast;
    .end local v6           #nHiTempC:I
    .end local v7           #nHiTempF:I
    .end local v9           #nLoTempC:I
    .end local v10           #nLoTempF:I
    :cond_5
    return-object v0
.end method

.method private isNetworkActive(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 604
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 605
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 606
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, connected:Z
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 594
    .local v1, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 596
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 597
    const/4 v0, 0x1

    .line 600
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v0
.end method

.method private parseDataPacket(ILandroid/content/Intent;)V
    .locals 12
    .parameter "index"
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    .line 170
    const-string v8, "DataProcesser"

    const-string v9, "parseDataPacket start"

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-boolean v8, Lcom/htc/Weather/WeatherActivity;->isAppDestroy:Z

    if-eqz v8, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 174
    .local v0, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    if-eqz v8, :cond_2

    .line 175
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 182
    :try_start_0
    const-string v8, "sync_data_category"

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 183
    const-string v8, "DataProcesser"

    const-string v9, "categories.contains: DataProcesser"

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v8, "status"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 186
    .local v5, forceUpdateResult:Z
    if-nez v5, :cond_0

    .line 188
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v5           #forceUpdateResult:Z
    :catch_0
    move-exception v4

    .line 241
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    const-string v8, "DataProcesser"

    const-string v9, "above exception has been catched"

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v4           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string v8, "data"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/htc/util/weather/WSPPData;

    .line 197
    .local v2, data:Lcom/htc/util/weather/WSPPData;
    if-nez v2, :cond_4

    .line 198
    const-string v8, "DataProcesser"

    const-string v9, "should not get null data from WSPUtility.SYNC_SERVICE_RESULT_INTENT_EXTRA_DATA"

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_4
    sget-boolean v8, Lcom/htc/Weather/WeatherActivity;->isWeatherDataAvalible:Z

    if-nez v8, :cond_5

    .line 202
    const/4 v8, 0x1

    sput-boolean v8, Lcom/htc/Weather/WeatherActivity;->isWeatherDataAvalible:Z

    .line 204
    :cond_5
    const-string v8, "DataProcesser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WSPPData hasWeatherData: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v3, Lcom/htc/Weather/data/DCSResult;

    invoke-direct {v3, v2}, Lcom/htc/Weather/data/DCSResult;-><init>(Lcom/htc/util/weather/WSPPData;)V

    .line 208
    .local v3, dataRet:Lcom/htc/Weather/data/DCSResult;
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v8, p1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v1

    .line 210
    .local v1, cityinfo:Lcom/htc/Weather/data/CityInfo;
    if-eqz v1, :cond_6

    iget-boolean v8, v1, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v8, :cond_6

    .line 211
    invoke-virtual {v1}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v8

    iget-wide v8, v8, Lcom/htc/Weather/data/City;->update_time:J

    invoke-virtual {v3}, Lcom/htc/Weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 216
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 218
    invoke-virtual {v3}, Lcom/htc/Weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/htc/Weather/data/CityInfo;->setUpdateTime(J)V

    .line 221
    invoke-virtual {v1}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.htclocationservice"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 222
    const-string v8, "DataProcesser"

    const-string v9, "update Current location city name"

    invoke-static {v8, v9}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.htc.htclocationservice"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "com.htc.elroy.Weather"

    aput-object v9, v7, v8

    .line 224
    .local v7, pkgname:[Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocationsFilterByApp(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v6

    .line 226
    .local v6, locs:[Lcom/htc/util/weather/WeatherLocation;
    if-eqz v6, :cond_7

    array-length v8, v6

    if-lez v8, :cond_7

    const/4 v8, 0x0

    aget-object v8, v6, v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.htclocationservice"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 227
    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 231
    .end local v6           #locs:[Lcom/htc/util/weather/WeatherLocation;
    .end local v7           #pkgname:[Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v3, p1}, Lcom/htc/Weather/data/DataProcesser;->getCityCache(Lcom/htc/Weather/data/DCSResult;I)Z

    .line 234
    iget-object v8, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p1, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private startFetchData(IZ)V
    .locals 7
    .parameter "moment"
    .parameter "isForceSync"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 139
    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isAppDestroy:Z

    if-eqz v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v2, :cond_0

    .line 142
    if-eqz p2, :cond_2

    .line 143
    invoke-direct {p0, v5}, Lcom/htc/Weather/data/DataProcesser;->checkNetworkActivate(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    .line 150
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 151
    invoke-direct {p0, v1, p2}, Lcom/htc/Weather/data/DataProcesser;->getCityDataFromAgent(IZ)V

    .line 153
    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isWeatherDataAvalible:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2, v1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2, v1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v2, :cond_3

    .line 154
    sput-boolean v5, Lcom/htc/Weather/WeatherActivity;->isWeatherDataAvalible:Z

    .line 150
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_4
    if-eqz p2, :cond_5

    .line 159
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    :cond_5
    if-nez p1, :cond_6

    .line 164
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 165
    :cond_6
    if-ne p1, v5, :cond_0

    .line 166
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public addCityFromResult(Lcom/htc/Weather/data/CityInfo;)V
    .locals 3
    .parameter "cityinfo"

    .prologue
    .line 401
    const-string v1, "DataProcesser"

    const-string v2, "addCityFromResult"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isAppDestroy:Z

    if-eqz v1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 404
    :cond_0
    iget v1, p1, Lcom/htc/Weather/data/CityInfo;->index:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/Weather/data/DataProcesser;->getCityDataFromAgent(IZ)V

    .line 405
    invoke-static {}, Lcom/htc/Weather/WeatherActivity;->getMaximumCount()I

    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.Weather.add_location_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.Weather.add_location_changed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/Weather/data/DataProcesser;->mDataHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dat"

    .prologue
    .line 499
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 500
    :cond_0
    const-string v0, ""

    .line 529
    :goto_0
    return-object v0

    .line 502
    :cond_1
    const/4 v1, 0x0

    .line 503
    .local v1, diff:I
    const/16 v2, 0x14

    .line 504
    .local v2, dpyLen:I
    const-string v3, "MON"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Monday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 506
    :cond_2
    const/4 v1, 0x1

    .line 527
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/htc/Weather/data/DataProcesser;->sDaysMedium:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, dayStr:Ljava/lang/String;
    goto :goto_0

    .line 507
    .end local v0           #dayStr:Ljava/lang/String;
    :cond_4
    const-string v3, "TUE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "Tuesday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 509
    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    .line 510
    :cond_6
    const-string v3, "WED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Wednesday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 512
    :cond_7
    const/4 v1, 0x3

    goto :goto_1

    .line 513
    :cond_8
    const-string v3, "THU"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "Thursday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 515
    :cond_9
    const/4 v1, 0x4

    goto :goto_1

    .line 516
    :cond_a
    const-string v3, "FRI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "Friday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 518
    :cond_b
    const/4 v1, 0x5

    goto :goto_1

    .line 519
    :cond_c
    const-string v3, "SAT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "Saturday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 521
    :cond_d
    const/4 v1, 0x6

    goto :goto_1

    .line 522
    :cond_e
    const-string v3, "SUN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "Sunday"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 524
    :cond_f
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public makeAgentCode(Lcom/htc/Weather/data/CityInfo;)Ljava/lang/String;
    .locals 4
    .parameter "cityinfo"

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, code:Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 434
    :goto_0
    return-object v2

    .line 419
    :cond_0
    invoke-virtual {p1}, Lcom/htc/Weather/data/CityInfo;->getAgentCode()Ljava/lang/String;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v0

    .line 421
    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p1}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 425
    .local v1, loc:Lcom/htc/util/weather/WeatherLocation;
    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.htclocationservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 426
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Lcom/htc/Weather/data/CityInfo;->setAgentCode(Ljava/lang/String;)V

    move-object v2, v0

    .line 434
    goto :goto_0

    .line 427
    :cond_3
    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 428
    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 429
    :cond_4
    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 430
    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLatitude(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onModelInitialized()V
    .locals 6

    .prologue
    .line 544
    const-string v2, "DataProcesser"

    const-string v3, "onModelInitialized"

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/weather/WSPPUtility;->isTemperatureCelsius(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    sget-object v2, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    sput-object v2, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    .line 554
    :goto_0
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_12_24"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, time:Ljava/lang/String;
    const-string v2, "DataProcesser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.System.TIME_12_24 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    if-eqz v1, :cond_0

    .line 557
    const-string v2, "12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    sget-object v2, Lcom/htc/Weather/data/City$TIME;->_TIME_12:Lcom/htc/Weather/data/City$TIME;

    sput-object v2, Lcom/htc/Weather/WeatherActivity;->default_time_12_24:Lcom/htc/Weather/data/City$TIME;

    .line 564
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    .line 565
    .local v0, size:I
    const-string v2, "DataProcesser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mModel.size() == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/Weather/data/DataProcesser;->mainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    return-void

    .line 551
    .end local v0           #size:I
    .end local v1           #time:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/htc/Weather/data/City$UNIT;->_F:Lcom/htc/Weather/data/City$UNIT;

    sput-object v2, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    goto :goto_0

    .line 560
    .restart local v1       #time:Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/htc/Weather/data/City$TIME;->_TIME_24:Lcom/htc/Weather/data/City$TIME;

    sput-object v2, Lcom/htc/Weather/WeatherActivity;->default_time_12_24:Lcom/htc/Weather/data/City$TIME;

    goto :goto_1
.end method

.method public onModelUpdated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 572
    const-string v0, "DataProcesser"

    const-string v1, "onModelUpdated"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 574
    :cond_0
    sput v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 575
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/htc/Weather/data/DataProcesser;->startFetchData(IZ)V

    goto :goto_0
.end method

.method public onNetworkNonActive()V
    .locals 2

    .prologue
    .line 582
    const-string v0, "DataProcesser"

    const-string v1, "onNetworkNonActive"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public onNetworkRoaming()V
    .locals 2

    .prologue
    .line 587
    const-string v0, "DataProcesser"

    const-string v1, "onNetworkRoaming"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 125
    new-instance v0, Lcom/htc/Weather/data/DataProcesser$DataHandler;

    invoke-direct {v0, p0}, Lcom/htc/Weather/data/DataProcesser$DataHandler;-><init>(Lcom/htc/Weather/data/DataProcesser;)V

    iput-object v0, p0, Lcom/htc/Weather/data/DataProcesser;->mDataHandler:Landroid/os/Handler;

    .line 127
    iget-object v0, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0, p0}, Lcom/htc/Weather/WeatherModel;->setModelListener(Lcom/htc/Weather/WeatherModel$WeatherModelListener;)V

    .line 128
    iget-object v0, p0, Lcom/htc/Weather/data/DataProcesser;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->initialModel()V

    .line 130
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 131
    return-void
.end method
