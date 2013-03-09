.class public Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "WeatherWidgetBaseMed.java"


# static fields
.field static final GET_INTENT_FROM_WSP:I = 0x3ea

.field public static final MAXIMUN_CITY_COUNT:I = 0x1

.field public static final MSG_INIT_DCS:I = -0xfffeff3

.field public static final MSG_INIT_SETTING:I = -0xfffff00

.field private static final RESULT_CITY:I = 0x14

.field public static final SYNC_DATA_CATEGORY:Ljava/lang/String; = "sync_data_category"

.field protected static final TAG:Ljava/lang/String; = "WeatherWidgetBaseMed"

.field private static final WEATHER_GET_INTENT_FROM_SERVER:I = 0x8

.field private static final WEATHER_UPDATE_DATA_BY_BUNDLE:I = 0x7

.field public static final WHAT_ON_ACTIVITY_RESULT:I = 0x9002

.field public static final WHAT_ON_INIT:I = 0x9001

.field public static default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

.field public static isPortrait:Z

.field public static isWidgetOnScreen:Z

.field public static mUnit:Lcom/htc/widget3d/weather/data/City$UNIT;


# instance fields
.field private mBackIntent:Landroid/content/Intent;

.field private mBoolAppDestroy:Z

.field private mBoolAppFirstResume:Z

.field private mBoolLocReceiverRegistered:Z

.field private mBoolReceiverRegistered:Z

.field private mBoolRefreshUnit:Z

.field private mBoolWSPReceiverRegistered:Z

.field private mCity:Lcom/htc/widget3d/weather/data/City;

.field public mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

.field private mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mIsCurLocation:Z

.field private mLocReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResContext:Landroid/content/Context;

.field private mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

.field private mWidgetContext:Landroid/content/Context;

.field private mWorker:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->isPortrait:Z

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->isWidgetOnScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    .line 56
    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    .line 58
    iput-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    .line 59
    iput-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolAppFirstResume:Z

    .line 60
    iput-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolAppDestroy:Z

    .line 62
    iput-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolReceiverRegistered:Z

    .line 63
    iput-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolWSPReceiverRegistered:Z

    .line 64
    iput-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolLocReceiverRegistered:Z

    .line 65
    iput-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolRefreshUnit:Z

    .line 67
    new-instance v0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$1;-><init>(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWorker:Landroid/os/Handler$Callback;

    .line 693
    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 933
    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 934
    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mLocReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->createData()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->doActivityResult(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolAppDestroy:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->clearCurrentLocation()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initSetting()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initWSPReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;Lcom/htc/util/weather/WSPPData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->updateUIByServiceResult(Lcom/htc/util/weather/WSPPData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->decodeReciver(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolRefreshUnit:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolRefreshUnit:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->updateData()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method private clearCurrentLocation()V
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    .line 998
    new-instance v0, Lcom/htc/widget3d/weather/data/City;

    invoke-direct {v0}, Lcom/htc/widget3d/weather/data/City;-><init>()V

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    .line 999
    return-void
.end method

.method private clearRegister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1025
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1027
    iput-boolean v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolReceiverRegistered:Z

    .line 1028
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "clear : unregisterReceiver mReceiver"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolLocReceiverRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mLocReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1032
    iput-boolean v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolLocReceiverRegistered:Z

    .line 1033
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "clear : unregisterReceiver mLocReceiver"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolWSPReceiverRegistered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 1036
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1037
    iput-boolean v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolWSPReceiverRegistered:Z

    .line 1038
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "clear : unregisterReceiver mWeatherDataReceiver"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_2
    return-void
.end method

.method private clearWSPPRegister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1042
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolLocReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mLocReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1044
    iput-boolean v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolLocReceiverRegistered:Z

    .line 1045
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "clear : unregisterReceiver mLocReceiver"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolWSPReceiverRegistered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1049
    iput-boolean v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolWSPReceiverRegistered:Z

    .line 1050
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "clear : unregisterReceiver mWeatherDataReceiver"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_1
    return-void
.end method

.method private createData()V
    .locals 12

    .prologue
    const v11, 0x7f060068

    const v10, 0x7f06005b

    const/4 v9, 0x1

    .line 292
    const-string v7, "WeatherWidgetBaseMed"

    const-string v8, "createData"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, code:Ljava/lang/String;
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    .line 297
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    if-nez v7, :cond_0

    .line 298
    new-instance v7, Lcom/htc/widget3d/weather/data/City;

    invoke-direct {v7}, Lcom/htc/widget3d/weather/data/City;-><init>()V

    iput-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->loadInstanceData()Ljava/util/Properties;

    move-result-object v6

    .line 301
    .local v6, props:Ljava/util/Properties;
    if-nez v6, :cond_7

    .line 302
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    if-eqz v7, :cond_3

    .line 303
    const-string v7, "WeatherWidgetBaseMed"

    const-string v8, "get City from back intent"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "name_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "app_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, app:Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v0, :cond_4

    const-string v7, "com.htc.htclocationservice"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 311
    :cond_1
    const-string v7, "WeatherWidgetBaseMed"

    const-string v8, "current"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iput-boolean v9, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    .line 313
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getDefaultLocation()Z

    move-result v7

    if-nez v7, :cond_2

    .line 314
    const-string v7, "WeatherWidgetBaseMed"

    const-string v8, "LostLocation"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->saveCurrentLocProps()V

    .line 387
    .end local v0           #app:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 322
    .restart local v0       #app:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v1}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    .line 323
    .local v1, ci:Lcom/htc/widget3d/weather/data/CityInfo;
    new-instance v4, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v4}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 324
    .local v4, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "code_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    const-string v7, "WeatherWidgetBaseMed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "City Code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v4, v2}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 327
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "name_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 328
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "state_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 329
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "country_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 330
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "app_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 331
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "timezone_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setTimezone(Ljava/lang/String;)V

    .line 332
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "timezoneid_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 335
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "latitude_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 336
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    const-string v8, "longitude_"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v1, v4}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 338
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    sget-object v7, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    :goto_1
    iput-object v7, v1, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    .line 342
    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    .line 343
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {p0, v7}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->saveInitProps(Lcom/htc/widget3d/weather/data/CityInfo;)V

    goto/16 :goto_0

    .line 338
    :cond_6
    sget-object v7, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    goto :goto_1

    .line 348
    .end local v0           #app:Ljava/lang/String;
    .end local v1           #ci:Lcom/htc/widget3d/weather/data/CityInfo;
    .end local v4           #loc:Lcom/htc/util/weather/WeatherLocation;
    .end local v5           #name:Ljava/lang/String;
    :cond_7
    if-eqz v6, :cond_3

    .line 349
    const-string v7, "WeatherWidgetBaseMed"

    const-string v8, "Property exist"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v7, "iscurrent_"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, current:Ljava/lang/String;
    if-eqz v3, :cond_9

    const-string v7, "true"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 352
    iput-boolean v9, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    .line 353
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getDefaultLocation()Z

    move-result v7

    if-nez v7, :cond_8

    .line 354
    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_8
    const-string v7, "WeatherWidgetBaseMed"

    const-string v8, "[Prop : current]"

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :cond_9
    new-instance v1, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v1}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    .line 360
    .restart local v1       #ci:Lcom/htc/widget3d/weather/data/CityInfo;
    new-instance v4, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v4}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 361
    .restart local v4       #loc:Lcom/htc/util/weather/WeatherLocation;
    const-string v7, "code_"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    if-eqz v2, :cond_a

    .line 363
    const-string v7, "WeatherWidgetBaseMed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Code:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v4, v2}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 366
    :cond_a
    const-string v7, "name_"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 367
    const-string v7, "state_"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 368
    const-string v7, "country_"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 369
    const-string v7, "app_"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 370
    const-string v7, "latitude_"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 371
    const-string v7, "WeatherWidgetBaseMed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latitude:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v7, "longitude_"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 373
    const-string v7, "WeatherWidgetBaseMed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Longitude:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1, v4}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 375
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_c

    :cond_b
    sget-object v7, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    :goto_2
    iput-object v7, v1, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    .line 378
    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    .line 381
    iget-object v7, v1, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    sget-object v8, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    if-ne v7, v8, :cond_3

    .line 382
    invoke-direct {p0, v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->saveInitProps(Lcom/htc/widget3d/weather/data/CityInfo;)V

    goto/16 :goto_0

    .line 375
    :cond_c
    sget-object v7, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    goto :goto_2
.end method

.method private decodeIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 873
    const-string v5, "WeatherWidgetBaseMed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "decode intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 876
    const-string v5, "WeatherWidgetBaseMed"

    const-string v6, "receive status intent: incorrect category"

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    const/4 v1, 0x0

    .line 881
    .local v1, category:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 882
    .local v0, c:Ljava/lang/String;
    move-object v1, v0

    goto :goto_1

    .line 884
    .end local v0           #c:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    .line 888
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/htc/util/weather/WSPPData;

    .line 890
    .local v2, data:Lcom/htc/util/weather/WSPPData;
    const-string v6, "WeatherWidgetBaseMed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive data intent: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_3

    const-string v5, "null"

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    if-eqz v2, :cond_0

    .line 894
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getType()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 895
    const-string v5, "WeatherWidgetBaseMed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current location name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v5, "WeatherWidgetBaseMed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current location weather condition:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v5

    if-nez v5, :cond_0

    .line 900
    const-string v5, "WeatherWidgetBaseMed"

    const-string v6, "curloc change but no weather data"

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 909
    .end local v2           #data:Lcom/htc/util/weather/WSPPData;
    :catch_0
    move-exception v3

    .line 910
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "WeatherWidgetBaseMed"

    const-string v6, "error occurred when parseDataPacket"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 890
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #data:Lcom/htc/util/weather/WSPPData;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 904
    :cond_4
    const-string v5, "WeatherWidgetBaseMed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "city name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v5, "WeatherWidgetBaseMed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "city weather condition:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private decodeReciver(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 821
    const-string v5, "WeatherWidgetBaseMed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SilderReceiver received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 824
    const-string v5, "WeatherWidgetBaseMed"

    const-string v6, "receive status intent: incorrect category"

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    const/4 v1, 0x0

    .line 829
    .local v1, category:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 830
    .local v0, c:Ljava/lang/String;
    move-object v1, v0

    goto :goto_1

    .line 833
    .end local v0           #c:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    .line 837
    :try_start_0
    const-string v5, "data"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/htc/util/weather/WSPPData;

    .line 839
    .local v2, data:Lcom/htc/util/weather/WSPPData;
    const-string v6, "WeatherWidgetBaseMed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive data intent: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v2, :cond_3

    const-string v5, "null"

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    if-eqz v2, :cond_0

    .line 842
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getType()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 843
    invoke-direct {p0, v2}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->updateCurrentLocationName(Lcom/htc/util/weather/WSPPData;)Z

    .line 844
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v5

    if-nez v5, :cond_5

    .line 845
    const-string v5, "WeatherWidgetBaseMed"

    const-string v6, "curloc change but no weather data"

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v5, :cond_4

    .line 848
    new-instance v5, Lcom/htc/widget3d/weather/data/City;

    invoke-direct {v5}, Lcom/htc/widget3d/weather/data/City;-><init>()V

    iput-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    .line 849
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    invoke-virtual {v5, v6}, Lcom/htc/widget3d/weather/data/CityInfo;->setCity(Lcom/htc/widget3d/weather/data/City;)V

    .line 850
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v5}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    const v7, 0x7f06005b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    .end local v2           #data:Lcom/htc/util/weather/WSPPData;
    :catch_0
    move-exception v3

    .line 867
    .local v3, ex:Ljava/lang/Exception;
    const-string v5, "WeatherWidgetBaseMed"

    const-string v6, "error occurred when parseDataPacket"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 839
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v2       #data:Lcom/htc/util/weather/WSPPData;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 853
    :cond_4
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    const v6, 0x7f060068

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    const v7, 0x7f06005b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 860
    :cond_5
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v5, :cond_0

    .line 861
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v5, v2}, Lcom/htc/widget3d/weather/data/CityInfo;->setBundle(Lcom/htc/util/weather/WSPPData;)V

    .line 862
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private doActivityResult(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 226
    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->clearWSPPRegister()V

    .line 230
    const-string v5, "WeatherWidgetBaseMed"

    const-string v6, "get City from back intent"

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, code:Ljava/lang/String;
    const-string v5, "name_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, name:Ljava/lang/String;
    const-string v5, "app_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, app:Ljava/lang/String;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    .line 237
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    if-nez v5, :cond_2

    .line 238
    new-instance v5, Lcom/htc/widget3d/weather/data/City;

    invoke-direct {v5}, Lcom/htc/widget3d/weather/data/City;-><init>()V

    iput-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    .line 240
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v0, :cond_5

    const-string v5, "com.htc.htclocationservice"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 244
    :cond_3
    const-string v5, "WeatherWidgetBaseMed"

    const-string v6, "current"

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    .line 246
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getDefaultLocation()Z

    move-result v5

    if-nez v5, :cond_4

    .line 247
    const-string v5, "WeatherWidgetBaseMed"

    const-string v6, "LostLocation"

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    const v6, 0x7f060068

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    const v7, 0x7f06005b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->saveCurrentLocProps()V

    .line 275
    :goto_1
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v5, :cond_0

    .line 276
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v6, -0xfffeff3

    invoke-interface {v5, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 254
    :cond_5
    new-instance v1, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v1}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    .line 255
    .local v1, ci:Lcom/htc/widget3d/weather/data/CityInfo;
    new-instance v3, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v3}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 256
    .local v3, loc:Lcom/htc/util/weather/WeatherLocation;
    const-string v5, "code_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    const-string v5, "WeatherWidgetBaseMed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "City Code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v3, v2}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 259
    const-string v5, "name_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 260
    const-string v5, "state_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 261
    const-string v5, "country_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 262
    const-string v5, "app_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 263
    const-string v5, "timezone_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/util/weather/WeatherLocation;->setTimezone(Ljava/lang/String;)V

    .line 264
    const-string v5, "timezoneid_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 265
    const-string v5, "latitude_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 266
    const-string v5, "longitude_"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, v3}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 268
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    sget-object v5, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    :goto_2
    iput-object v5, v1, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    .line 272
    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    .line 273
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {p0, v5}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->saveInitProps(Lcom/htc/widget3d/weather/data/CityInfo;)V

    goto/16 :goto_1

    .line 268
    :cond_7
    sget-object v5, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    goto :goto_2
.end method

.method private getDataWhenConnectedService()V
    .locals 7

    .prologue
    const v5, 0x7f06005b

    .line 755
    const-string v3, "WeatherWidgetBaseMed"

    const-string v4, "getDataWhenConnectedService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {p0, v3}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->makeRequest(Lcom/htc/widget3d/weather/data/CityInfo;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    .line 757
    .local v2, req:Lcom/htc/util/weather/WSPRequest;
    if-nez v2, :cond_0

    .line 758
    const-string v3, "WeatherWidgetBaseMed"

    const-string v4, "getRequest Null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v3, ""

    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :goto_0
    return-void

    .line 764
    :cond_0
    const-string v3, "WeatherWidgetBaseMed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataWhenConnectedService, code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/widget3d/weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v0

    .line 768
    .local v0, data:Lcom/htc/util/weather/WSPPData;
    if-eqz v0, :cond_1

    .line 769
    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v3, v0}, Lcom/htc/widget3d/weather/data/CityInfo;->setBundle(Lcom/htc/util/weather/WSPPData;)V

    .line 771
    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 772
    const-string v3, "WeatherWidgetBaseMed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cache data:\ncurrentTempC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/widget3d/weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    .end local v0           #data:Lcom/htc/util/weather/WSPPData;
    :catch_0
    move-exception v1

    .line 785
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "WeatherWidgetBaseMed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/widget3d/weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 775
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #data:Lcom/htc/util/weather/WSPPData;
    :cond_1
    :try_start_1
    const-string v3, "WeatherWidgetBaseMed"

    const-string v4, "no cache data "

    invoke-static {v3, v4}, Lcom/htc/widget3d/weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v3}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 777
    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v3}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    const v5, 0x7f06005b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 780
    :cond_2
    const-string v3, ""

    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    const v5, 0x7f06005b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private getDefaultLocation()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 393
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 434
    :goto_0
    return v3

    .line 397
    :cond_0
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.htc.htclocationservice"

    invoke-static {v4, v5}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    .line 400
    .local v2, locs:[Lcom/htc/util/weather/WeatherLocation;
    new-instance v1, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v1}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    .line 401
    .local v1, ci_no:Lcom/htc/widget3d/weather/data/CityInfo;
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/htc/widget3d/weather/data/CityInfo;->cityName:Ljava/lang/String;

    .line 402
    array-length v4, v2

    if-nez v4, :cond_1

    .line 403
    const-string v4, "WeatherWidgetBaseMed"

    const-string v5, "Can not get current location"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    goto :goto_0

    .line 408
    :cond_1
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.htclocationservice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 410
    :cond_2
    const-string v4, "WeatherWidgetBaseMed"

    const-string v5, "Can not get current location"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    goto :goto_0

    .line 415
    :cond_3
    new-instance v0, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v0}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    .line 416
    .local v0, ci:Lcom/htc/widget3d/weather/data/CityInfo;
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 417
    :cond_4
    aget-object v4, v2, v3

    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 421
    :cond_5
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 423
    sget-object v4, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    iput-object v4, v0, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    .line 425
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCityName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 426
    const-string v3, "WeatherWidgetBaseMed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get default city name return true :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    .line 434
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 430
    :cond_6
    const-string v4, "WeatherWidgetBaseMed"

    const-string v5, "current location info is not correct"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private initAppReceiver()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 938
    new-instance v0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$3;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$3;-><init>(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 972
    :cond_0
    return-void
.end method

.method private initLocReceiver()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mLocReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 975
    new-instance v0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$4;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$4;-><init>(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mLocReceiver:Landroid/content/BroadcastReceiver;

    .line 995
    :cond_0
    return-void
.end method

.method private initSetting()V
    .locals 3

    .prologue
    .line 915
    const-string v1, "WeatherWidgetBaseMed"

    const-string v2, "initSetting..."

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/weather/WSPPUtility;->isTemperatureCelsius(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    :goto_0
    sput-object v1, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mUnit:Lcom/htc/widget3d/weather/data/City$UNIT;

    .line 920
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initAppReceiver()V

    .line 921
    iget-boolean v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolReceiverRegistered:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 922
    const-string v1, "WeatherWidgetBaseMed"

    const-string v2, "Register App Receiver"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 925
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 927
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolReceiverRegistered:Z

    .line 930
    .end local v0           #intentfilter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v2, -0xfffeff3

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 931
    return-void

    .line 917
    :cond_1
    sget-object v1, Lcom/htc/widget3d/weather/data/City$UNIT;->_F:Lcom/htc/widget3d/weather/data/City$UNIT;

    goto :goto_0
.end method

.method private initWSPReceiver()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 696
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "initWSPReceiver"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-boolean v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    if-eqz v2, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initLocReceiver()V

    .line 700
    iget-boolean v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolLocReceiverRegistered:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mLocReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    .line 701
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.htc.Weather.delete_current_location"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, intentfilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mLocReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 704
    iput-boolean v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolLocReceiverRegistered:Z

    .line 708
    .end local v0           #intentfilter:Landroid/content/IntentFilter;
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolWSPReceiverRegistered:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    if-eqz v2, :cond_6

    .line 709
    iget-boolean v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-nez v2, :cond_1

    .line 752
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-nez v2, :cond_2

    .line 713
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "initWSPReceiver mCityInfo is: null"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->createData()V

    .line 717
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 718
    .local v1, statusIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.sync.provider.weather.result"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 720
    iget-boolean v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    if-eqz v2, :cond_5

    .line 721
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "add intentfilter Current"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 728
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_4

    .line 729
    new-instance v2, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$2;

    invoke-direct {v2, p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed$2;-><init>(Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;)V

    iput-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    .line 743
    :cond_4
    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWeatherDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 745
    iput-boolean v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolWSPReceiverRegistered:Z

    .line 750
    .end local v1           #statusIntentFilter:Landroid/content/IntentFilter;
    :goto_2
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getDataWhenConnectedService()V

    goto :goto_0

    .line 724
    .restart local v1       #statusIntentFilter:Landroid/content/IntentFilter;
    :cond_5
    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->genCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 725
    const-string v2, "WeatherWidgetBaseMed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add intentfilter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/data/CityInfo;->genCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/CityInfo;->genCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .line 747
    .end local v1           #statusIntentFilter:Landroid/content/IntentFilter;
    :cond_6
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "No initialWSP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private makeRequest(Lcom/htc/widget3d/weather/data/CityInfo;)Lcom/htc/util/weather/WSPRequest;
    .locals 4
    .parameter "cityinfo"

    .prologue
    const/4 v1, 0x0

    .line 791
    if-nez p1, :cond_0

    .line 792
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "makeRequest cityinfo is null!!!"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->createData()V

    .line 794
    iget-object p1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    .line 796
    :cond_0
    if-nez p1, :cond_2

    .line 797
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "makeRequest cityinfo still null!!!"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_1
    :goto_0
    return-object v1

    .line 801
    :cond_2
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 802
    .local v0, loc:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.htclocationservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 807
    const-string v1, "WeatherWidgetBaseMed"

    const-string v2, "Request current"

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-static {}, Lcom/htc/util/weather/WSPPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    goto :goto_0

    .line 809
    :cond_3
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 810
    const-string v1, "WeatherWidgetBaseMed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    goto :goto_0

    .line 812
    :cond_4
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 813
    const-string v1, "WeatherWidgetBaseMed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request getLongitude():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/util/weather/WSPPUtility;->generateWSPRequestForLatitude(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private queryLocationInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;
    .locals 8
    .parameter "context"
    .parameter "code"

    .prologue
    const/4 v7, 0x1

    .line 504
    new-instance v1, Lcom/htc/util/weather/WeatherUtility$SearchCondition;

    sget-object v3, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->code:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v3}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;->MATCH_IGONE_CASE:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    invoke-direct {v1, p2, v3, v4}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;)V

    .line 508
    .local v1, searchCondition:Lcom/htc/util/weather/WeatherUtility$SearchCondition;
    const/4 v0, 0x0

    .line 509
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 511
    .local v2, wl:Lcom/htc/util/weather/WeatherLocation;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name:Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;

    invoke-virtual {v4}, Lcom/htc/consts/WeatherConsts$LOCATION_LIST_COLUMN_NAME;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/util/weather/WeatherUtility$SearchCondition;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/htc/util/weather/WeatherUtility;->getLocationListBySearchCondition(Landroid/content/ContentResolver;Ljava/lang/String;[Lcom/htc/util/weather/WeatherUtility$SearchCondition;)Landroid/database/Cursor;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_5

    .line 517
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v7, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 518
    invoke-static {v0}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 527
    :goto_0
    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_0
    if-nez v2, :cond_1

    .line 533
    const-string v3, "WeatherWidgetBaseMed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not find location info of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_1
    return-object v2

    .line 520
    :cond_2
    :try_start_1
    const-string v4, "WeatherWidgetBaseMed"

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "no match data"

    :goto_1
    invoke-static {v4, v3}, Lcom/htc/widget3d/weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 528
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 520
    :cond_4
    :try_start_2
    const-string v3, "data is incorrect"

    goto :goto_1

    .line 524
    :cond_5
    const-string v3, "WeatherWidgetBaseMed"

    const-string v4, "******** cursor is null"

    invoke-static {v3, v4}, Lcom/htc/widget3d/weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private safeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 1019
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1020
    :cond_0
    const-string p1, ""

    .line 1022
    .end local p1
    :cond_1
    return-object p1
.end method

.method private saveCurrentLocProps()V
    .locals 4

    .prologue
    .line 437
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "saveCurtLocProps"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 440
    .local v1, props:Ljava/util/Properties;
    const-string v2, "iscurrent_"

    const-string v3, "true"

    invoke-direct {p0, v3}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->storeInstanceData(Ljava/util/Properties;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 450
    .end local v1           #props:Ljava/util/Properties;
    :goto_0
    return-void

    .line 443
    .restart local v1       #props:Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "property save error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 447
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v1           #props:Ljava/util/Properties;
    :catch_1
    move-exception v0

    .line 448
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private saveInitProps(Lcom/htc/widget3d/weather/data/CityInfo;)V
    .locals 7
    .parameter "ci"

    .prologue
    .line 452
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    .line 453
    .local v2, loc:Lcom/htc/util/weather/WeatherLocation;
    if-nez v2, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v4, p1, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    sget-object v5, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->QUERY_CODE_ACCU_WEATHER:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    if-ne v4, v5, :cond_2

    .line 461
    :try_start_0
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->queryLocationInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 463
    .local v0, dbloc:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v0, :cond_2

    .line 464
    move-object v2, v0

    .line 465
    invoke-virtual {p1, v2}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 471
    .end local v0           #dbloc:Lcom/htc/util/weather/WeatherLocation;
    :cond_2
    :goto_1
    const-string v4, "WeatherWidgetBaseMed"

    const-string v5, "saveInitProps"

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :try_start_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 476
    .local v3, props:Ljava/util/Properties;
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/CityInfo;->getCityName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 477
    const-string v4, "name_"

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 478
    const-string v4, "state_"

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 479
    const-string v4, "country_"

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    const-string v4, "code_"

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 481
    const-string v4, "latitude_"

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    const-string v4, "longitude_"

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    const-string v4, "app_"

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 484
    const-string v4, "iscurrent_"

    const-string v5, "false"

    invoke-direct {p0, v5}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 486
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->storeInstanceData(Ljava/util/Properties;)V

    .line 487
    const-string v4, "WeatherWidgetBaseMed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveData code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 488
    :catch_0
    move-exception v1

    .line 489
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_3
    const-string v4, "WeatherWidgetBaseMed"

    const-string v5, "property save error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 493
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v3           #props:Ljava/util/Properties;
    :catch_1
    move-exception v1

    .line 494
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 467
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method

.method private startFetchData()V
    .locals 2

    .prologue
    .line 687
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "startFetchData"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getDataWhenConnectedService()V

    .line 690
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initData()V

    .line 691
    return-void
.end method

.method private updateCurrentLocationName(Lcom/htc/util/weather/WSPPData;)Z
    .locals 6
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 663
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getType()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 664
    :cond_0
    const/4 v2, 0x0

    .line 683
    :goto_0
    return v2

    .line 666
    :cond_1
    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-nez v3, :cond_2

    .line 667
    new-instance v3, Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-direct {v3}, Lcom/htc/widget3d/weather/data/CityInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    .line 670
    .local v0, ci:Lcom/htc/widget3d/weather/data/CityInfo;
    new-instance v1, Lcom/htc/util/weather/WeatherLocation;

    invoke-direct {v1}, Lcom/htc/util/weather/WeatherLocation;-><init>()V

    .line 671
    .local v1, loc:Lcom/htc/util/weather/WeatherLocation;
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/htc/util/weather/WeatherLocation;->setCode(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/util/weather/WeatherLocation;->setName(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurLocState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/util/weather/WeatherLocation;->setState(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurLocCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/util/weather/WeatherLocation;->setCountry(Ljava/lang/String;)V

    .line 675
    const-string v3, "com.htc.htclocationservice"

    invoke-virtual {v1, v3}, Lcom/htc/util/weather/WeatherLocation;->setApp(Ljava/lang/String;)V

    .line 676
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/htc/util/weather/WeatherLocation;->setTimezone(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurLocTimezoneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/util/weather/WeatherLocation;->setTimezoneId(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurLocLat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/util/weather/WeatherLocation;->setLatitude(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurLocLng()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/util/weather/WeatherLocation;->setLongitude(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, v1}, Lcom/htc/widget3d/weather/data/CityInfo;->setLocationInfo(Lcom/htc/util/weather/WeatherLocation;)V

    .line 681
    sget-object v3, Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    iput-object v3, v0, Lcom/htc/widget3d/weather/data/CityInfo;->type_:Lcom/htc/widget3d/weather/data/WeatherModel$QUERY_TYPE;

    .line 682
    const-string v3, "WeatherWidgetBaseMed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCurLocationName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateData()V
    .locals 4

    .prologue
    const v3, 0x7f06005b

    .line 1003
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    iget-object v1, v1, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/City$Condition;->today()Lcom/htc/widget3d/weather/data/DayForecast;

    move-result-object v0

    .line 1004
    .local v0, df:Lcom/htc/widget3d/weather/data/DayForecast;
    if-nez v0, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1006
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :goto_0
    return-void

    .line 1010
    :cond_0
    const-string v1, ""

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    :cond_1
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    invoke-virtual {v1, v2}, Lcom/htc/widget3d/weather/data/CityInfo;->setCity(Lcom/htc/widget3d/weather/data/City;)V

    .line 1015
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initData()V

    goto :goto_0
.end method

.method private updateUIByServiceResult(Lcom/htc/util/weather/WSPPData;)V
    .locals 14
    .parameter "data"

    .prologue
    const v13, 0x7f06005b

    .line 540
    const-string v11, "WeatherWidgetBaseMed"

    const-string v12, "updateUIByServiceResult"

    invoke-static {v11, v12}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    if-eqz p1, :cond_0

    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    if-nez v11, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    if-eqz v11, :cond_9

    .line 546
    new-instance v10, Lcom/htc/widget3d/weather/data/DCSResult;

    invoke-direct {v10, p1}, Lcom/htc/widget3d/weather/data/DCSResult;-><init>(Lcom/htc/util/weather/WSPPData;)V

    .line 549
    .local v10, ret:Lcom/htc/widget3d/weather/data/DCSResult;
    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/htc/widget3d/weather/data/City;->update_time:J

    .line 552
    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    sget-object v12, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mUnit:Lcom/htc/widget3d/weather/data/City$UNIT;

    iput-object v12, v11, Lcom/htc/widget3d/weather/data/City;->unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    .line 556
    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    iget-object v11, v11, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v11}, Lcom/htc/widget3d/weather/data/City$Condition;->reset()V

    .line 558
    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getTotalForecast()I

    move-result v0

    .line 560
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_7

    .line 563
    new-instance v1, Lcom/htc/widget3d/weather/data/DayForecast;

    invoke-direct {v1}, Lcom/htc/widget3d/weather/data/DayForecast;-><init>()V

    .line 565
    .local v1, dayF:Lcom/htc/widget3d/weather/data/DayForecast;
    if-nez v2, :cond_6

    .line 567
    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getCurrentTempF()I

    move-result v3

    .line 568
    .local v3, nCurTemp:I
    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastHighTemp()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v2

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v4

    .line 570
    .local v4, nHiTemp:I
    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastLowTemp()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v2

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v7

    .line 573
    .local v7, nLoTemp:I
    invoke-virtual {v1, v3}, Lcom/htc/widget3d/weather/data/DayForecast;->setCurrentF(I)V

    .line 579
    if-le v3, v4, :cond_2

    .line 580
    invoke-virtual {v1, v3}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighF(I)V

    .line 583
    :goto_2
    if-ge v3, v7, :cond_3

    .line 584
    invoke-virtual {v1, v3}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowF(I)V

    .line 589
    :goto_3
    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getCurrentTempC()I

    move-result v3

    .line 590
    invoke-virtual {v10, v2}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastHighTempC(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v4

    .line 592
    invoke-virtual {v10, v2}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastLowTempC(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v7

    .line 594
    invoke-virtual {v1, v3}, Lcom/htc/widget3d/weather/data/DayForecast;->setCurrentC(I)V

    .line 596
    if-le v3, v4, :cond_4

    .line 597
    invoke-virtual {v1, v3}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighC(I)V

    .line 600
    :goto_4
    if-ge v3, v7, :cond_5

    .line 601
    invoke-virtual {v1, v3}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowC(I)V

    .line 605
    :goto_5
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getCurrentIcon()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/widget3d/weather/util/IconPicker;->getConditionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setCondition(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getCurrentIcon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setForecastIcon(Ljava/lang/String;)V

    .line 630
    .end local v3           #nCurTemp:I
    .end local v4           #nHiTemp:I
    .end local v7           #nLoTemp:I
    :goto_6
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v2}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastName(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/widget3d/weather/util/WeatherUtil;->getDateString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setWeekDay(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v10, v2}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastDate(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setDate(Ljava/lang/String;)V

    .line 634
    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    iget-object v11, v11, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v11, v1}, Lcom/htc/widget3d/weather/data/City$Condition;->add(Lcom/htc/widget3d/weather/data/DayForecast;)V

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 582
    .restart local v3       #nCurTemp:I
    .restart local v4       #nHiTemp:I
    .restart local v7       #nLoTemp:I
    :cond_2
    invoke-virtual {v1, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighF(I)V

    goto :goto_2

    .line 586
    :cond_3
    invoke-virtual {v1, v7}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowF(I)V

    goto :goto_3

    .line 599
    :cond_4
    invoke-virtual {v1, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighC(I)V

    goto :goto_4

    .line 603
    :cond_5
    invoke-virtual {v1, v7}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowC(I)V

    goto :goto_5

    .line 609
    .end local v3           #nCurTemp:I
    .end local v4           #nHiTemp:I
    .end local v7           #nLoTemp:I
    :cond_6
    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastHighTempF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v2

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v6

    .line 611
    .local v6, nHiTempF:I
    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastHighTempC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v2

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    .line 613
    .local v5, nHiTempC:I
    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastLowTempF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v2

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v9

    .line 615
    .local v9, nLoTempF:I
    invoke-virtual {v10}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastLowTempC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v2

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v8

    .line 618
    .local v8, nLoTempC:I
    add-int v11, v6, v9

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v1, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setCurrentF(I)V

    .line 619
    add-int v11, v5, v8

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v1, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setCurrentC(I)V

    .line 620
    invoke-virtual {v1, v6}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighF(I)V

    .line 621
    invoke-virtual {v1, v5}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighC(I)V

    .line 622
    invoke-virtual {v1, v9}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowF(I)V

    .line 623
    invoke-virtual {v1, v8}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowC(I)V

    .line 625
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v2}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastIcon(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/widget3d/weather/util/IconPicker;->getConditionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setCondition(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v10, v2}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastIcon(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setForecastIcon(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 637
    .end local v1           #dayF:Lcom/htc/widget3d/weather/data/DayForecast;
    .end local v5           #nHiTempC:I
    .end local v6           #nHiTempF:I
    .end local v8           #nLoTempC:I
    .end local v9           #nLoTempF:I
    :cond_7
    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/htc/widget3d/weather/data/CityInfo;->setState(I)V

    .line 638
    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    iget-object v12, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCity:Lcom/htc/widget3d/weather/data/City;

    invoke-virtual {v11, v12}, Lcom/htc/widget3d/weather/data/CityInfo;->setCity(Lcom/htc/widget3d/weather/data/City;)V

    .line 639
    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    iget-object v12, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/htc/widget3d/weather/data/CityInfo;->changeOffsetOfToday(Landroid/content/Context;)Z

    .line 641
    iget-boolean v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mIsCurLocation:Z

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v11}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 642
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->updateCurrentLocationName(Lcom/htc/util/weather/WSPPData;)Z

    .line 645
    :cond_8
    const-string v11, "WeatherWidgetBaseMed"

    const-string v12, "refreshData"

    invoke-static {v11, v12}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->initData()V

    goto/16 :goto_0

    .line 650
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v10           #ret:Lcom/htc/widget3d/weather/data/DCSResult;
    :cond_9
    const-string v11, "WeatherWidgetBaseMed"

    const-string v12, "updateCurrentLocationName"

    invoke-static {v11, v12}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->updateCurrentLocationName(Lcom/htc/util/weather/WSPPData;)Z

    .line 652
    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v11}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 653
    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v11}, Lcom/htc/widget3d/weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 656
    :cond_a
    iget-object v11, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    const v12, 0x7f060068

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .prologue
    .line 284
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "initData"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method protected initWidget()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "initWidget"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 212
    const-string v1, "WeatherWidgetBaseMed"

    const-string v2, "onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 218
    .local v0, msg:Landroid/os/Message;
    const v1, 0x9002

    iput v1, v0, Landroid/os/Message;->what:I

    .line 219
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 222
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/rosie/widget/Widget$Base;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    const/4 v1, 0x1

    .line 118
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const-string v0, "WeatherWidgetBaseMed"

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->isPortrait:Z

    .line 124
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBackIntent:Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWidgetContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mResContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mWorker:Landroid/os/Handler$Callback;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 128
    iput-boolean v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolAppFirstResume:Z

    .line 129
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolAppDestroy:Z

    .line 184
    invoke-direct {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->clearRegister()V

    .line 185
    return-void
.end method

.method public onEdit()V
    .locals 4

    .prologue
    .line 196
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "onEdit"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.widget3d.weather"

    const-string v3, "com.htc.widget3d.weather.OptionActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :try_start_0
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "startActivity"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/16 v2, 0x14

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WeatherWidgetBaseMed"

    const-string v3, "startActivity error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 177
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 135
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "onPostCreate"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v1, 0x9001

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 143
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 144
    const-string v5, "WeatherWidgetBaseMed"

    const-string v6, "onResume"

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-boolean v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolAppFirstResume:Z

    if-nez v5, :cond_2

    .line 146
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 147
    .local v3, today:Ljava/util/Date;
    const-string v1, "M/d/yyyy"

    .line 148
    .local v1, format:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, today_string:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    iget-boolean v5, v5, Lcom/htc/widget3d/weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v5, :cond_0

    .line 151
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {v5}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v5}, Lcom/htc/widget3d/weather/data/City$Condition;->today()Lcom/htc/widget3d/weather/data/DayForecast;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget3d/weather/data/DayForecast;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, city_date:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    const-string v5, "WeatherWidgetBaseMed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "city date match, today ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",City date ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v0           #city_date:Ljava/lang/String;
    .end local v1           #format:Ljava/lang/String;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v3           #today:Ljava/util/Date;
    .end local v4           #today_string:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v0       #city_date:Ljava/lang/String;
    .restart local v1       #format:Ljava/lang/String;
    .restart local v2       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v3       #today:Ljava/util/Date;
    .restart local v4       #today_string:Ljava/lang/String;
    :cond_1
    const-string v5, "WeatherWidgetBaseMed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "city date Not match, today ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",City date ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    iget-boolean v5, v5, Lcom/htc/widget3d/weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v5, :cond_2

    .line 162
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mCityInfo:Lcom/htc/widget3d/weather/data/CityInfo;

    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget3d/weather/data/CityInfo;->changeOffsetOfToday(Landroid/content/Context;)Z

    .line 169
    .end local v0           #city_date:Ljava/lang/String;
    .end local v1           #format:Ljava/lang/String;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v3           #today:Ljava/util/Date;
    .end local v4           #today_string:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mBoolAppFirstResume:Z

    .line 170
    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBaseMed;->mDataHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const v6, -0xfffff00

    invoke-interface {v5, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0
.end method

.method protected playEmptyPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "city"
    .parameter "error_msg"

    .prologue
    .line 288
    const-string v0, "WeatherWidgetBaseMed"

    const-string v1, "playEmptyPage"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method
