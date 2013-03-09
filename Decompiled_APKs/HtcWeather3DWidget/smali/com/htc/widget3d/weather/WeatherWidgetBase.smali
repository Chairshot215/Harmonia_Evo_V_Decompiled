.class public Lcom/htc/widget3d/weather/WeatherWidgetBase;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "WeatherWidgetBase.java"

# interfaces
.implements Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget3d/weather/WeatherWidgetBase$DataRunnable;,
        Lcom/htc/widget3d/weather/WeatherWidgetBase$ParseDataPacket;,
        Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final DO_LOADING_ANIMATION:I = 0x2

.field public static final MAXIMUN_CITY_COUNT:I = 0xf

.field public static final SHARE_PREF_SOUND_EFFECT:Ljava/lang/String; = "sharepref_sound_effect"

.field public static final SYNC_DATA_CATEGORY:Ljava/lang/String; = "sync_data_category"

.field protected static final TAG:Ljava/lang/String; = "WeatherWidgetBase"

.field public static final WHAT_PLAY_SOUND:I = 0x0

.field public static final WHAT_UPDATE_UI:I = 0x1

.field public static default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

.field public static isPortrait:Z

.field public static isSoundEffectEnabled:Z

.field public static isWidgetOnScreen:Z


# instance fields
.field private arr_index:I

.field private ary:[Ljava/lang/String;

.field private mBaseWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mCityIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

.field protected mDoLoading:Z

.field public mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

.field protected mSoundEffect:Lcom/htc/Weather/SoundEffect;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 48
    sput-boolean v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isPortrait:Z

    .line 49
    sput-boolean v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isSoundEffectEnabled:Z

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isWidgetOnScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 53
    iput-boolean v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDoLoading:Z

    .line 55
    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    .line 56
    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mBaseWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 58
    new-instance v0, Lcom/htc/widget3d/weather/WeatherWidgetBase$1;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase$1;-><init>(Lcom/htc/widget3d/weather/WeatherWidgetBase;)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " .  "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, " .. "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " ..."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "    "

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->ary:[Ljava/lang/String;

    .line 126
    iput v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->arr_index:I

    .line 618
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget3d/weather/WeatherWidgetBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->playSound(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget3d/weather/WeatherWidgetBase;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->doLoading(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget3d/weather/WeatherWidgetBase;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mCityIndexMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget3d/weather/WeatherWidgetBase;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mBaseWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget3d/weather/WeatherWidgetBase;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->parseDataPacket(Landroid/content/Intent;I)V

    return-void
.end method

.method private doLoading(I)V
    .locals 5
    .parameter "city_idx"

    .prologue
    .line 161
    iget v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->arr_index:I

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->ary:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 162
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->arr_index:I

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->ary:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->arr_index:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->ary:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->arr_index:I

    aget-object v1, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->updateTaskBarInfo(ILjava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 171
    iget v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->arr_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->arr_index:I

    .line 173
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private getCityCache(Lcom/htc/widget3d/weather/data/DCSResult;I)Z
    .locals 4
    .parameter "ret"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 413
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v3}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt p2, v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v3, p2}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v2

    .line 417
    :cond_1
    const/4 v1, 0x0

    .line 419
    .local v1, city:Lcom/htc/widget3d/weather/data/City;
    invoke-direct {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getForecastData(Lcom/htc/widget3d/weather/data/DCSResult;)Lcom/htc/widget3d/weather/data/City;

    move-result-object v1

    .line 421
    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v3, p2}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 422
    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v2, p2}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v0

    .line 423
    .local v0, ci:Lcom/htc/widget3d/weather/data/CityInfo;
    invoke-virtual {v0, v1}, Lcom/htc/widget3d/weather/data/CityInfo;->setCity(Lcom/htc/widget3d/weather/data/City;)V

    .line 424
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/widget3d/weather/data/CityInfo;->changeOffsetOfToday(Landroid/content/Context;)Z

    .line 425
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getForecastData(Lcom/htc/widget3d/weather/data/DCSResult;)Lcom/htc/widget3d/weather/data/City;
    .locals 13
    .parameter "ret"

    .prologue
    .line 431
    new-instance v0, Lcom/htc/widget3d/weather/data/City;

    invoke-direct {v0}, Lcom/htc/widget3d/weather/data/City;-><init>()V

    .line 433
    .local v0, city:Lcom/htc/widget3d/weather/data/City;
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/htc/widget3d/weather/data/City;->overdue:Z

    .line 435
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/htc/widget3d/weather/data/City;->update_time:J

    .line 438
    sget-object v11, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    iput-object v11, v0, Lcom/htc/widget3d/weather/data/City;->unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    .line 440
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getTotalForecast()I

    move-result v1

    .line 442
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_5

    .line 445
    new-instance v2, Lcom/htc/widget3d/weather/data/DayForecast;

    invoke-direct {v2}, Lcom/htc/widget3d/weather/data/DayForecast;-><init>()V

    .line 447
    .local v2, dayF:Lcom/htc/widget3d/weather/data/DayForecast;
    if-nez v3, :cond_4

    .line 450
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getCurrentTempF()I

    move-result v4

    .line 451
    .local v4, nCurTemp:I
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastHighTemp()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    .line 453
    .local v5, nHiTemp:I
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastLowTemp()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v8

    .line 456
    .local v8, nLoTemp:I
    invoke-virtual {v2, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->setCurrentF(I)V

    .line 462
    if-le v4, v5, :cond_0

    .line 463
    invoke-virtual {v2, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighF(I)V

    .line 466
    :goto_1
    if-ge v4, v8, :cond_1

    .line 467
    invoke-virtual {v2, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowF(I)V

    .line 472
    :goto_2
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getCurrentTempC()I

    move-result v4

    .line 473
    invoke-virtual {p1, v3}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastHighTempC(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    .line 475
    invoke-virtual {p1, v3}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastLowTempC(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v8

    .line 476
    invoke-virtual {v2, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->setCurrentC(I)V

    .line 478
    if-le v4, v5, :cond_2

    .line 479
    invoke-virtual {v2, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighC(I)V

    .line 482
    :goto_3
    if-ge v4, v8, :cond_3

    .line 483
    invoke-virtual {v2, v4}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowC(I)V

    .line 487
    :goto_4
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getCurrentIcon()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/widget3d/weather/util/IconPicker;->getConditionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setCondition(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getCurrentIcon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setForecastIcon(Ljava/lang/String;)V

    .line 512
    .end local v4           #nCurTemp:I
    .end local v5           #nHiTemp:I
    .end local v8           #nLoTemp:I
    :goto_5
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {p1, v3}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastName(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/widget3d/weather/util/WeatherUtil;->getDateString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setWeekDay(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1, v3}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastDate(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setDate(Ljava/lang/String;)V

    .line 516
    iget-object v11, v0, Lcom/htc/widget3d/weather/data/City;->current:Lcom/htc/widget3d/weather/data/City$Condition;

    invoke-virtual {v11, v2}, Lcom/htc/widget3d/weather/data/City$Condition;->add(Lcom/htc/widget3d/weather/data/DayForecast;)V

    .line 442
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 465
    .restart local v4       #nCurTemp:I
    .restart local v5       #nHiTemp:I
    .restart local v8       #nLoTemp:I
    :cond_0
    invoke-virtual {v2, v5}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighF(I)V

    goto :goto_1

    .line 469
    :cond_1
    invoke-virtual {v2, v8}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowF(I)V

    goto :goto_2

    .line 481
    :cond_2
    invoke-virtual {v2, v5}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighC(I)V

    goto :goto_3

    .line 485
    :cond_3
    invoke-virtual {v2, v8}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowC(I)V

    goto :goto_4

    .line 491
    .end local v4           #nCurTemp:I
    .end local v5           #nHiTemp:I
    .end local v8           #nLoTemp:I
    :cond_4
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastHighTempF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v7

    .line 493
    .local v7, nHiTempF:I
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastHighTempC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v6

    .line 495
    .local v6, nHiTempC:I
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastLowTempF()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v10

    .line 497
    .local v10, nLoTempF:I
    invoke-virtual {p1}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastLowTempC()[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v9

    .line 500
    .local v9, nLoTempC:I
    add-int v11, v7, v10

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v2, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setCurrentF(I)V

    .line 501
    add-int v11, v6, v9

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v2, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setCurrentC(I)V

    .line 502
    invoke-virtual {v2, v7}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighF(I)V

    .line 503
    invoke-virtual {v2, v6}, Lcom/htc/widget3d/weather/data/DayForecast;->setHighC(I)V

    .line 504
    invoke-virtual {v2, v10}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowF(I)V

    .line 505
    invoke-virtual {v2, v9}, Lcom/htc/widget3d/weather/data/DayForecast;->setLowC(I)V

    .line 507
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {p1, v3}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastIcon(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/widget3d/weather/util/IconPicker;->getConditionText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setCondition(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1, v3}, Lcom/htc/widget3d/weather/data/DCSResult;->getForecastIcon(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/htc/widget3d/weather/data/DayForecast;->setForecastIcon(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 518
    .end local v2           #dayF:Lcom/htc/widget3d/weather/data/DayForecast;
    .end local v6           #nHiTempC:I
    .end local v7           #nHiTempF:I
    .end local v9           #nLoTempC:I
    .end local v10           #nLoTempF:I
    :cond_5
    return-object v0
.end method

.method private parseDataPacket(Landroid/content/Intent;I)V
    .locals 10
    .parameter "intent"
    .parameter "index"

    .prologue
    .line 357
    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v6}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v6

    if-lez v6, :cond_0

    if-nez p1, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const-string v6, "WeatherWidgetBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseDataPacket , index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v6, p2}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v0

    .line 364
    .local v0, cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    :try_start_0
    const-string v6, "data"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/util/weather/WSPPData;

    .line 367
    .local v1, data:Lcom/htc/util/weather/WSPPData;
    if-eqz v1, :cond_0

    .line 368
    new-instance v5, Lcom/htc/widget3d/weather/data/DCSResult;

    invoke-direct {v5, v1}, Lcom/htc/widget3d/weather/data/DCSResult;-><init>(Lcom/htc/util/weather/WSPPData;)V

    .line 370
    .local v5, ret:Lcom/htc/widget3d/weather/data/DCSResult;
    if-eqz v0, :cond_2

    if-nez v5, :cond_3

    .line 371
    :cond_2
    const-string v6, "WeatherWidgetBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseDataPacket, cinfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    .end local v1           #data:Lcom/htc/util/weather/WSPPData;
    .end local v5           #ret:Lcom/htc/widget3d/weather/data/DCSResult;
    :catch_0
    move-exception v2

    .line 408
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "WeatherWidgetBase"

    const-string v7, "error occurred when parseDataPacket"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #data:Lcom/htc/util/weather/WSPPData;
    .restart local v5       #ret:Lcom/htc/widget3d/weather/data/DCSResult;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v6

    if-nez v6, :cond_4

    .line 377
    const-string v6, "WeatherWidgetBase"

    const-string v7, "parseDataPacket, cityinfo.getCity()= null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :cond_4
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v6

    iget-wide v6, v6, Lcom/htc/widget3d/weather/data/City;->update_time:J

    invoke-virtual {v5}, Lcom/htc/widget3d/weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 384
    invoke-virtual {v5}, Lcom/htc/widget3d/weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/htc/widget3d/weather/data/CityInfo;->setUpdateTime(J)V

    .line 387
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.htc.htclocationservice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 389
    const-string v6, "WeatherWidgetBase"

    const-string v7, "update Current location city name"

    invoke-static {v6, v7}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.htc.htclocationservice"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "com.htc.elroy.Weather"

    aput-object v7, v4, v6

    .line 392
    .local v4, pkgname:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocationsFilterByApp(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    .line 395
    .local v3, locs:[Lcom/htc/util/weather/WeatherLocation;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.htc.htclocationservice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 398
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 401
    .end local v3           #locs:[Lcom/htc/util/weather/WeatherLocation;
    .end local v4           #pkgname:[Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v5, p2}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getCityCache(Lcom/htc/widget3d/weather/data/DCSResult;I)Z

    .line 403
    iget-object v6, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p2, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private playSound(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 278
    sget-boolean v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isSoundEffectEnabled:Z

    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v0}, Lcom/htc/Weather/SoundEffect;->releaseMediaPalyer()V

    .line 282
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v0, p1}, Lcom/htc/Weather/SoundEffect;->startMediaPlayer(I)V

    goto :goto_0
.end method

.method private updateData(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getCityDataFromAgent(IZ)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->updateCityData(I)V

    .line 195
    return-void
.end method


# virtual methods
.method protected createData()V
    .locals 4

    .prologue
    .line 110
    const-string v0, "WeatherWidgetBase"

    const-string v1, "createData"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/widget3d/weather/data/WeatherModel;-><init>(Landroid/content/Context;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    .line 113
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v0, p0}, Lcom/htc/widget3d/weather/data/WeatherModel;->setModelListener(Lcom/htc/widget3d/weather/data/WeatherModel$WeatherModelListener;)V

    .line 114
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/WeatherModel;->initialModel()V

    .line 115
    return-void
.end method

.method protected getCityDataFromAgent(IZ)V
    .locals 12
    .parameter "index"
    .parameter "bForceUpdate"

    .prologue
    .line 289
    const-string v8, "WeatherWidgetBase"

    const-string v9, "getCityDataFromAgent"

    invoke-static {v8, v9}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v8, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v8, p1}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v0

    .line 291
    .local v0, cityinfo:Lcom/htc/widget3d/weather/data/CityInfo;
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/widget3d/weather/util/WeatherUtil;->isNetworkActive(Landroid/content/Context;)Z

    move-result v3

    .line 295
    .local v3, isNetworkActive:Z
    :try_start_0
    invoke-static {v0}, Lcom/htc/widget3d/weather/util/WeatherUtil;->makeRequest(Lcom/htc/widget3d/weather/data/CityInfo;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v6

    .line 296
    .local v6, req:Lcom/htc/util/weather/WSPRequest;
    if-nez v6, :cond_1

    .line 354
    .end local v6           #req:Lcom/htc/util/weather/WSPRequest;
    :cond_0
    :goto_0
    return-void

    .line 298
    .restart local v6       #req:Lcom/htc/util/weather/WSPRequest;
    :cond_1
    if-eqz p2, :cond_3

    .line 301
    if-nez v3, :cond_2

    .line 302
    const/4 v8, 0x1

    invoke-virtual {p0, p1, v8}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->stopLoading(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    .end local v6           #req:Lcom/htc/util/weather/WSPRequest;
    :catch_0
    move-exception v2

    .line 351
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    const-string v8, "WeatherWidgetBase"

    const-string v9, "above exception has been catched"

    invoke-static {v8, v9}, Lcom/htc/widget3d/weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #req:Lcom/htc/util/weather/WSPRequest;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "sync_data_category"

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/htc/util/weather/WSPRequest;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v8, v9, v10}, Lcom/htc/util/weather/WSPUtility;->triggerSyncService(Landroid/content/Context;Ljava/lang/String;[Lcom/htc/util/weather/WSPRequest;)V

    goto :goto_0

    .line 310
    :cond_3
    const-string v8, "WeatherWidgetBase"

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

    invoke-static {v8, v9}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/htc/util/weather/WSPPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPPData;

    move-result-object v1

    .line 314
    .local v1, data:Lcom/htc/util/weather/WSPPData;
    if-eqz v1, :cond_5

    .line 315
    new-instance v7, Lcom/htc/widget3d/weather/data/DCSResult;

    invoke-direct {v7, v1}, Lcom/htc/widget3d/weather/data/DCSResult;-><init>(Lcom/htc/util/weather/WSPPData;)V

    .line 317
    .local v7, ret:Lcom/htc/widget3d/weather/data/DCSResult;
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getCity()Lcom/htc/widget3d/weather/data/City;

    move-result-object v8

    iget-wide v8, v8, Lcom/htc/widget3d/weather/data/City;->update_time:J

    invoke-virtual {v7}, Lcom/htc/widget3d/weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 320
    invoke-virtual {v7}, Lcom/htc/widget3d/weather/data/DCSResult;->getUpdateTime()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/htc/widget3d/weather/data/CityInfo;->setUpdateTime(J)V

    .line 323
    invoke-virtual {v0}, Lcom/htc/widget3d/weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.htclocationservice"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 325
    const-string v8, "WeatherWidgetBase"

    const-string v9, "update Current location city name"

    invoke-static {v8, v9}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.htc.htclocationservice"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string v9, "com.htc.elroy.Weather"

    aput-object v9, v5, v8

    .line 329
    .local v5, pkgname:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocationsFilterByApp(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    .line 333
    .local v4, locs:[Lcom/htc/util/weather/WeatherLocation;
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

    .line 336
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/widget3d/weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 339
    .end local v4           #locs:[Lcom/htc/util/weather/WeatherLocation;
    .end local v5           #pkgname:[Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v7, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getCityCache(Lcom/htc/widget3d/weather/data/DCSResult;I)Z

    goto/16 :goto_0

    .line 347
    .end local v7           #ret:Lcom/htc/widget3d/weather/data/DCSResult;
    :cond_5
    const-string v8, "WeatherWidgetBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no cache data in Agent for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "WeatherWidgetBase"

    const-string v1, "initData"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public initDataReceiver()V
    .locals 7

    .prologue
    .line 198
    const-string v4, "WeatherWidgetBase"

    const-string v5, "initDataReceiver, Add current"

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v3, statusIntentFilter:Landroid/content/IntentFilter;
    const-string v4, "com.htc.sync.provider.weather.result"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v4, "WeatherWidgetBase"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 206
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mCityIndexMap:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 207
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mCityIndexMap:Ljava/util/HashMap;

    .line 208
    :cond_0
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mCityIndexMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 211
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 213
    .local v2, size:I
    :goto_0
    const-string v4, "WeatherWidgetBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mModel.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 223
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v4, v1}, Lcom/htc/widget3d/weather/data/WeatherModel;->get(I)Lcom/htc/widget3d/weather/data/CityInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/data/CityInfo;->genCode()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, code:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mCityIndexMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v4, "WeatherWidgetBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " register code, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/widget3d/weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #size:I
    :cond_1
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v4}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v2

    goto :goto_0

    .line 230
    .restart local v1       #i:I
    .restart local v2       #size:I
    :cond_2
    const-string v4, "1__"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    if-eqz v4, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    .line 238
    :cond_3
    iget-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    if-nez v4, :cond_4

    .line 239
    new-instance v4, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;-><init>(Lcom/htc/widget3d/weather/WeatherWidgetBase;)V

    iput-object v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    .line 241
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    return-void
.end method

.method protected initWidget()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "WeatherWidgetBase"

    const-string v1, "initWidget"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v1, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v2, "WeatherWidgetBase"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mBaseWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 90
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    :goto_0
    sput-boolean v1, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isPortrait:Z

    .line 93
    new-instance v0, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase$DataRunnable;-><init>(Lcom/htc/widget3d/weather/WeatherWidgetBase;)V

    .line 94
    .local v0, dr:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataRunnable;
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mBaseWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mBaseWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    .line 96
    :cond_0
    return-void

    .line 90
    .end local v0           #dr:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataRunnable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDataReceiver:Lcom/htc/widget3d/weather/WeatherWidgetBase$DataBroadcastReceiver;

    .line 107
    :cond_0
    return-void
.end method

.method public onModelInitialized()V
    .locals 3

    .prologue
    .line 530
    const-string v0, "WeatherWidgetBase"

    const-string v1, "onModelInitialized"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/weather/WSPUtility;->isTemperatureCelsius(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    sget-object v0, Lcom/htc/widget3d/weather/data/City$UNIT;->_C:Lcom/htc/widget3d/weather/data/City$UNIT;

    sput-object v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    .line 536
    :goto_0
    const-string v0, "WeatherWidgetBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mModel.size()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->initDataReceiver()V

    .line 539
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->initWidget()V

    .line 540
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->startFetchData()V

    .line 541
    return-void

    .line 534
    :cond_0
    sget-object v0, Lcom/htc/widget3d/weather/data/City$UNIT;->_F:Lcom/htc/widget3d/weather/data/City$UNIT;

    sput-object v0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->default_unit:Lcom/htc/widget3d/weather/data/City$UNIT;

    goto :goto_0
.end method

.method public onModelUpdated()V
    .locals 3

    .prologue
    .line 544
    const-string v0, "WeatherWidgetBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModelUpdated mModel.size()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method public onNetworkNonActive()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method public onNetworkRoaming()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method protected onReceiveCurrentCityData()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method protected onUpdateCityModelList()V
    .locals 2

    .prologue
    .line 526
    const-string v0, "WeatherWidgetBase"

    const-string v1, "onUpdateCityList"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method protected playSoundEffect(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 256
    sget-boolean v1, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isWidgetOnScreen:Z

    if-nez v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-nez v1, :cond_1

    .line 259
    new-instance v1, Lcom/htc/Weather/SoundEffect;

    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/Weather/SoundEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/Weather/SoundEffect;->SETTING_KEY_SYNC_SOUND:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isSoundEffectEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_1
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    sget-boolean v2, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isSoundEffectEnabled:Z

    invoke-virtual {v1, v2}, Lcom/htc/Weather/SoundEffect;->setSoundOn(Z)V

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    sput-boolean v3, Lcom/htc/widget3d/weather/WeatherWidgetBase;->isSoundEffectEnabled:Z

    .line 266
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public releaseSoundEffect()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mSoundEffect:Lcom/htc/Weather/SoundEffect;

    invoke-virtual {v0}, Lcom/htc/Weather/SoundEffect;->releaseMediaPalyer()V

    .line 252
    :cond_1
    return-void
.end method

.method protected setRefreshTime(I)V
    .locals 2
    .parameter "city_idx"

    .prologue
    .line 156
    const-string v0, "WeatherWidgetBase"

    const-string v1, "setRefreshTime parent"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method protected startFetchData()V
    .locals 4

    .prologue
    .line 180
    const-string v2, "WeatherWidgetBase"

    const-string v3, "startFetchData"

    invoke-static {v2, v3}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mModel:Lcom/htc/widget3d/weather/data/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/widget3d/weather/data/WeatherModel;->size()I

    move-result v0

    .line 183
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 184
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->getCityDataFromAgent(IZ)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->initData()V

    .line 189
    return-void
.end method

.method protected final startLoading(I)V
    .locals 6
    .parameter "city_idx"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 129
    const-string v1, "WeatherWidgetBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLoading,city index ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iput v4, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->arr_index:I

    .line 131
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDoLoading:Z

    .line 133
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 138
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected final stopLoading(IZ)V
    .locals 3
    .parameter "city_idx"
    .parameter "must_restore"

    .prologue
    .line 141
    const-string v0, "WeatherWidgetBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopLoading, city idx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget3d/weather/WeatherWidgetBase;->mDoLoading:Z

    .line 145
    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lcom/htc/widget3d/weather/WeatherWidgetBase;->setRefreshTime(I)V

    .line 148
    :cond_0
    return-void
.end method

.method protected updateCityData(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 176
    const-string v0, "WeatherWidgetBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrCity index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected updateTaskBarInfo(ILjava/lang/String;)V
    .locals 2
    .parameter "city_idx"
    .parameter "post_string"

    .prologue
    .line 151
    const-string v0, "WeatherWidgetBase"

    const-string v1, "updateTaskBarInfo parent"

    invoke-static {v0, v1}, Lcom/htc/widget3d/weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method
