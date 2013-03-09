.class public Lcom/htc/weatheridlescreen/data/WeatherData;
.super Ljava/lang/Object;
.source "WeatherData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WIS"

.field private static final ONE_DAY_MILLIS:J = 0x5265c00L

.field private static final PREFIX:Ljava/lang/String; = "[WeatherData] "

.field private static final sDaysMedium:[I


# instance fields
.field private HLTemperatureC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private HLTemperatureF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cityName:Ljava/lang/String;

.field private conditionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private conditionName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsCurrentCityMode:Z

.field private mIsNight:Z

.field private mIsRain:Z

.field private mStateResources:Lcom/htc/weather/StateResources;

.field private mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

.field private offsetIndex:I

.field private totalDataSize:I

.field private weekDayName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wspData:Lcom/htc/util/weather/WSPPData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/weatheridlescreen/data/WeatherData;->sDaysMedium:[I

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

.method public constructor <init>(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;Z)V
    .locals 4
    .parameter "context"
    .parameter "data"
    .parameter "isCurrentCityMode"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mContext:Landroid/content/Context;

    .line 28
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mStateResources:Lcom/htc/weather/StateResources;

    .line 29
    iput-boolean v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsCurrentCityMode:Z

    .line 30
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    .line 31
    iput v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    .line 32
    iput v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->totalDataSize:I

    .line 33
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->cityName:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionName:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->HLTemperatureC:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->HLTemperatureF:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->weekDayName:Ljava/util/ArrayList;

    .line 39
    iput-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    .line 42
    iput-boolean v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsNight:Z

    .line 43
    iput-boolean v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsRain:Z

    .line 64
    iput-object p1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mContext:Landroid/content/Context;

    .line 65
    new-instance v1, Lcom/htc/weather/StateResources;

    invoke-direct {v1}, Lcom/htc/weather/StateResources;-><init>()V

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mStateResources:Lcom/htc/weather/StateResources;

    .line 66
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mStateResources:Lcom/htc/weather/StateResources;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 67
    iput-object p2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    .line 68
    iput-boolean p3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsCurrentCityMode:Z

    .line 69
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-eqz v1, :cond_0

    .line 70
    iput v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    .line 71
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCityNameString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->cityName:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->convertCondition()V

    .line 73
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->convertTemperature()V

    .line 74
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->convertWeekDay()V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getDefaultTemperatureUnit(Landroid/content/Context;)Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    .line 86
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->isNightForCurrentCondition()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsNight:Z

    .line 87
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->isRainForCurrentCondition()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsRain:Z

    .line 89
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->changeTodayIndex()Z

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->totalDataSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WIS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WeatherData] WeatherData() - Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static beforeToday(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    .line 622
    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getTimeObject(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v8

    .line 623
    .local v8, tObject:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 624
    .local v7, tNow:Landroid/text/format/Time;
    if-eqz v7, :cond_0

    if-nez v8, :cond_2

    .line 625
    :cond_0
    const/4 v1, 0x0

    .line 648
    .end local v7           #tNow:Landroid/text/format/Time;
    .end local v8           #tObject:Landroid/text/format/Time;
    :cond_1
    :goto_0
    return v1

    .line 627
    .restart local v7       #tNow:Landroid/text/format/Time;
    .restart local v8       #tObject:Landroid/text/format/Time;
    :cond_2
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 628
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 629
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 632
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 633
    .local v5, t:J
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 634
    .local v9, tn:J
    iget v13, v7, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    iget v14, v7, Landroid/text/format/Time;->minute:I

    add-int/2addr v13, v14

    mul-int/lit8 v13, v13, 0x3c

    iget v14, v7, Landroid/text/format/Time;->second:I

    add-int/2addr v13, v14

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v3, v13

    .line 635
    .local v3, r:J
    const/4 v8, 0x0

    .line 636
    const/4 v7, 0x0

    .line 638
    sub-long v11, v9, v3

    .line 639
    .local v11, today:J
    sub-long v13, v11, v5

    const-wide/32 v15, 0x5265c00

    div-long/2addr v13, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v13

    .line 640
    .local v1, daysBetween:I
    if-gez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 643
    .end local v1           #daysBetween:I
    .end local v3           #r:J
    .end local v5           #t:J
    .end local v7           #tNow:Landroid/text/format/Time;
    .end local v8           #tObject:Landroid/text/format/Time;
    .end local v9           #tn:J
    .end local v11           #today:J
    :catch_0
    move-exception v2

    .line 645
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    const-string v13, "WIS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[WeatherData] beforeToday() - some error in compare2Today with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private convertCondition()V
    .locals 7

    .prologue
    .line 451
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-nez v5, :cond_1

    .line 482
    :cond_0
    return-void

    .line 453
    :cond_1
    const/4 v4, 0x0

    .line 454
    .local v4, value:I
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v2

    .line 455
    .local v2, mConditionID:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 456
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 457
    .local v3, mSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 461
    if-nez v1, :cond_4

    .line 462
    :try_start_0
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 471
    :goto_1
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 472
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_2
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionName:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mStateResources:Lcom/htc/weather/StateResources;

    if-eqz v5, :cond_3

    .line 474
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionName:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mStateResources:Lcom/htc/weather/StateResources;

    invoke-virtual {v6, v4}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :cond_4
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    .line 466
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private convertTemperature()V
    .locals 9

    .prologue
    .line 539
    iget-object v6, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v6}, Lcom/htc/util/weather/WSPPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v1

    .line 540
    .local v1, mHighTemperatureC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v6}, Lcom/htc/util/weather/WSPPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v3

    .line 541
    .local v3, mLowTemperatureC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v6}, Lcom/htc/util/weather/WSPPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v2

    .line 542
    .local v2, mHighTemperatureF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v6}, Lcom/htc/util/weather/WSPPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v4

    .line 543
    .local v4, mLowTemperatureF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 544
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 546
    iget-object v6, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->HLTemperatureC:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 547
    iget-object v8, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->HLTemperatureC:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/htc/weatheridlescreen/data/WeatherData;->getHLTemperatureString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_0
    iget-object v6, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->HLTemperatureF:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 549
    iget-object v8, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->HLTemperatureF:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/htc/weatheridlescreen/data/WeatherData;->getHLTemperatureString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_2
    return-void
.end method

.method private convertWeekDay()V
    .locals 5

    .prologue
    .line 579
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getFstName()Ljava/util/ArrayList;

    move-result-object v1

    .line 580
    .local v1, mWeekDay:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 583
    .local v2, weekday:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->weekDayName:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/htc/weatheridlescreen/data/WeatherData;->getWeekDayString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    .end local v2           #weekday:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getCityNameForNonCurrentMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "code"

    .prologue
    .line 516
    const-string v0, ""

    .line 517
    .local v0, mCityName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getLocationFromCode(Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    .line 518
    .local v4, mWeatherLocation:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v4, :cond_1

    .line 519
    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, mTempCityName:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, mTempCityState:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, mTempCityCountry:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 523
    move-object v0, v2

    .line 524
    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 525
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .end local v1           #mTempCityCountry:Ljava/lang/String;
    .end local v2           #mTempCityName:Ljava/lang/String;
    .end local v3           #mTempCityState:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 526
    .restart local v1       #mTempCityCountry:Ljava/lang/String;
    .restart local v2       #mTempCityName:Ljava/lang/String;
    .restart local v3       #mTempCityState:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCityNameString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-eqz v0, :cond_1

    .line 492
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsCurrentCityMode:Z

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPData;->getCurLocName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mContext:Landroid/content/Context;

    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :goto_0
    return-object v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->getLocCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCityNameForNonCurrentMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentTemperatureC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-eqz v0, :cond_1

    .line 304
    iget v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPData;->getCurTempC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurTempC()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/weatheridlescreen/data/WeatherData;->getMiddleTemperatureString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentTemperatureF()Ljava/lang/String;
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-eqz v0, :cond_1

    .line 315
    iget v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPData;->getCurTempF()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPPData;->getCurTempC()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/weatheridlescreen/data/WeatherData;->getMiddleTemperatureString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getDefaultTemperatureUnit(Landroid/content/Context;)Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;
    .locals 2
    .parameter "context"

    .prologue
    .line 763
    if-eqz p0, :cond_2

    .line 764
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/weather/WeatherUtility;->getTemperatureUnit(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, str:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 766
    sget-object v1, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    .line 770
    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 768
    .restart local v0       #str:Ljava/lang/String;
    :cond_0
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_C:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    goto :goto_0

    .line 770
    .end local v0           #str:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    goto :goto_0
.end method

.method private getHLTemperatureC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->HLTemperatureC:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getHLTemperatureF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->HLTemperatureF:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getHLTemperatureString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "high"
    .parameter "low"

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0 / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocationFromCode(Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;
    .locals 3
    .parameter "code"

    .prologue
    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/htc/util/weather/WeatherUtility;->getLocationListByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 505
    .local v1, locationListCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 506
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    invoke-static {v1}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    .line 509
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_1
    return-object v0
.end method

.method private getMiddleTemperatureString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "high"
    .parameter "low"
    .parameter "defaultValue"

    .prologue
    .line 563
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 564
    .local v1, mHigh:I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 570
    .local v2, mLow:I
    add-int v4, v1, v2

    div-int/lit8 v3, v4, 0x2

    .line 571
    .local v3, mMiddle:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u00b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v1           #mHigh:I
    .end local v2           #mLow:I
    .end local v3           #mMiddle:I
    :goto_0
    return-object v4

    .line 566
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u00b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getTimeObject(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;
    .locals 14
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 653
    const/16 v9, 0x76c

    .line 654
    .local v9, y:I
    const/4 v7, 0x1

    .line 655
    .local v7, m:I
    const/4 v1, 0x1

    .line 656
    .local v1, d:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v5, keywords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    move-object v8, v11

    .line 689
    :goto_0
    return-object v8

    .line 660
    :cond_0
    const-string v10, "/"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v4, v0, v3

    .line 662
    .local v4, k:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 663
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 668
    .end local v4           #k:Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 669
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 670
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v12, :cond_4

    .line 671
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 672
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v13, :cond_5

    .line 673
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 680
    :cond_5
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 681
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 682
    .local v8, t:Landroid/text/format/Time;
    if-nez v8, :cond_6

    move-object v8, v11

    .line 683
    goto :goto_0

    .line 675
    .end local v8           #t:Landroid/text/format/Time;
    :catch_0
    move-exception v2

    .line 678
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "WIS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[WeatherData] getTimeObject() - The format of date is not mm/dd/yy..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 685
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v8       #t:Landroid/text/format/Time;
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 686
    invoke-virtual {v8, p1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 688
    :cond_7
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v8, v1, v10, v9}, Landroid/text/format/Time;->set(III)V

    goto/16 :goto_0
.end method

.method private getWeekDayString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "weekday"

    .prologue
    .line 589
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 590
    :cond_0
    const-string v0, ""

    .line 611
    :goto_0
    return-object v0

    .line 594
    :cond_1
    const/4 v1, 0x0

    .line 595
    .local v1, diff:I
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 596
    const/4 v1, 0x1

    .line 610
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/htc/weatheridlescreen/data/WeatherData;->sDaysMedium:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, dayStr:Ljava/lang/String;
    goto :goto_0

    .line 597
    .end local v0           #dayStr:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 598
    const/4 v1, 0x2

    goto :goto_1

    .line 599
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 600
    const/4 v1, 0x3

    goto :goto_1

    .line 601
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "THU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 602
    const/4 v1, 0x4

    goto :goto_1

    .line 603
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FRI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 604
    const/4 v1, 0x5

    goto :goto_1

    .line 605
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SAT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 606
    const/4 v1, 0x6

    goto :goto_1

    .line 607
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isNightForCurrentCondition()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 832
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 861
    :cond_0
    :goto_0
    return v3

    .line 836
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 837
    .local v1, mId:I
    const-string v2, "WIS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WeatherData] isNightForCurrentCondition() - mId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    if-lez v1, :cond_0

    sget-object v2, Lcom/htc/weatheridlescreen/WISConsts;->TABLE_BACKGROUND:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 853
    sget-object v2, Lcom/htc/weatheridlescreen/WISConsts;->TABLE_BACKGROUND:[I

    aget v2, v2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 857
    .end local v1           #mId:I
    :catch_0
    move-exception v0

    .line 859
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "WIS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WeatherData] isNightForCurrentCondition() - Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isOverdue(Landroid/content/Context;J)Z
    .locals 7
    .parameter "context"
    .parameter "lastUpdateTime"

    .prologue
    .line 728
    const-wide/32 v3, 0xa4cb80

    .line 729
    .local v3, interval:J
    invoke-static {p1}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v0

    .line 731
    .local v0, bAutoSync:Z
    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/weatheridlescreen/data/WeatherData;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 735
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 736
    .local v1, current_time:J
    cmp-long v5, v1, p2

    if-ltz v5, :cond_1

    sub-long v5, v1, p2

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    .line 737
    const/4 v5, 0x0

    .line 739
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private isRainForCurrentCondition()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 809
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 824
    :cond_0
    :goto_0
    return v4

    .line 813
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    iget v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 814
    .local v1, mId:I
    const-string v2, "WIS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WeatherData] isRainForCurrentCondition() - mId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    if-lez v1, :cond_0

    sget-object v2, Lcom/htc/weatheridlescreen/WISConsts;->TABLE_BACKGROUND:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 817
    sget-object v2, Lcom/htc/weatheridlescreen/WISConsts;->TABLE_BACKGROUND:[I

    aget v2, v2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 820
    .end local v1           #mId:I
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "WIS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WeatherData] isRainForCurrentCondition() - Exception = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private safe_parseInt(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 744
    const/4 v0, 0x0

    .line 745
    .local v0, val:I
    if-nez p1, :cond_0

    .line 746
    const/4 v1, 0x0

    .line 755
    :goto_0
    return v1

    .line 749
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 755
    goto :goto_0

    .line 751
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public changeTodayIndex()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 694
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-nez v5, :cond_1

    .line 723
    :cond_0
    :goto_0
    return v4

    .line 699
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 700
    .local v2, strDate:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 701
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v6}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/weatheridlescreen/data/WeatherData;->isOverdue(Landroid/content/Context;J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 703
    const/4 v3, 0x0

    .line 704
    .local v3, strTimeZone:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsCurrentCityMode:Z

    if-eqz v5, :cond_2

    .line 705
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPPData;->getCurLocTimezoneId()Ljava/lang/String;

    move-result-object v3

    .line 708
    :goto_1
    invoke-static {v2, v3}, Lcom/htc/weatheridlescreen/data/WeatherData;->beforeToday(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 710
    .local v1, offset:I
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 711
    iget v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    if-eq v1, v5, :cond_0

    .line 712
    iput v1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    .line 713
    invoke-virtual {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->checkRainAndNightState()V

    .line 714
    const/4 v4, 0x1

    goto :goto_0

    .line 707
    .end local v1           #offset:I
    :cond_2
    iget-object v5, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v5}, Lcom/htc/util/weather/WSPPData;->getLocCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 719
    .end local v2           #strDate:Ljava/lang/String;
    .end local v3           #strTimeZone:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 721
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "WIS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WeatherData] changeTodayIndex() - Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkRainAndNightState()V
    .locals 1

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->isNightForCurrentCondition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsNight:Z

    .line 441
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->isRainForCurrentCondition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsRain:Z

    .line 442
    return-void
.end method

.method public compareData(Lcom/htc/weatheridlescreen/data/WeatherData;)Z
    .locals 26
    .parameter "data"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 105
    const/16 v24, 0x0

    .line 252
    :goto_0
    return v24

    .line 109
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCityName()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, cityName_:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->cityName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->cityName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 112
    const/16 v24, 0x0

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getConditionId()Ljava/util/ArrayList;

    move-result-object v3

    .line 116
    .local v3, conditionId_:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, mCount1:I
    const/4 v6, 0x0

    .line 117
    .local v6, mCount2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 119
    :cond_2
    if-eqz v3, :cond_3

    .line 120
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 122
    :cond_3
    if-ne v5, v6, :cond_6

    .line 123
    const/4 v13, 0x0

    .line 124
    .local v13, mDiff:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 128
    const/4 v13, 0x1

    .line 132
    :cond_4
    if-eqz v13, :cond_7

    .line 134
    const/16 v24, 0x0

    goto :goto_0

    .line 124
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    .end local v4           #i:I
    .end local v13           #mDiff:Z
    :cond_6
    const/16 v24, 0x0

    goto :goto_0

    .line 143
    .restart local v4       #i:I
    .restart local v13       #mDiff:Z
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentTemperature()Ljava/lang/String;

    move-result-object v11

    .line 144
    .local v11, mCurrentTemp:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentTemperature()Ljava/lang/String;

    move-result-object v12

    .line 145
    .local v12, mCurrentTemp_:Ljava/lang/String;
    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 146
    const/16 v24, 0x0

    goto :goto_0

    .line 147
    :cond_8
    if-eqz v11, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    if-nez v11, :cond_b

    if-eqz v12, :cond_b

    .line 148
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 151
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentHighTemperature()Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, mCurrentHighTemp:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentHighTemperature()Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, mCurrentHighTemp_:Ljava/lang/String;
    if-eqz v7, :cond_c

    if-eqz v8, :cond_c

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 154
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 155
    :cond_c
    if-eqz v7, :cond_d

    if-eqz v8, :cond_e

    :cond_d
    if-nez v7, :cond_f

    if-eqz v8, :cond_f

    .line 156
    :cond_e
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 159
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentLowTemperature()Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, mCurrentLowTemp:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentLowTemperature()Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, mCurrentLowTemp_:Ljava/lang/String;
    if-eqz v9, :cond_10

    if-eqz v10, :cond_10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10

    .line 162
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 163
    :cond_10
    if-eqz v9, :cond_11

    if-eqz v10, :cond_12

    :cond_11
    if-nez v9, :cond_13

    if-eqz v10, :cond_13

    .line 164
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 167
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getHLTemperature()Ljava/util/ArrayList;

    move-result-object v14

    .line 168
    .local v14, mHLTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getHLTemperature()Ljava/util/ArrayList;

    move-result-object v15

    .line 169
    .local v15, mHLTemp_:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 170
    if-eqz v14, :cond_14

    .line 171
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 172
    :cond_14
    if-eqz v15, :cond_15

    .line 173
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 174
    :cond_15
    if-ne v5, v6, :cond_1b

    .line 175
    const/4 v13, 0x0

    .line 176
    const-string v19, ""

    .local v19, mTemp:Ljava/lang/String;
    const-string v20, ""

    .line 177
    .local v20, mTemp_:Ljava/lang/String;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_16

    .line 179
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #mTemp:Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 180
    .restart local v19       #mTemp:Ljava/lang/String;
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #mTemp_:Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .line 182
    .restart local v20       #mTemp_:Ljava/lang/String;
    if-eqz v19, :cond_17

    if-eqz v20, :cond_17

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_17

    .line 183
    const/4 v13, 0x1

    .line 191
    :cond_16
    :goto_3
    if-eqz v13, :cond_1c

    .line 193
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 186
    :cond_17
    if-eqz v19, :cond_18

    if-eqz v20, :cond_19

    :cond_18
    if-nez v19, :cond_1a

    if-eqz v20, :cond_1a

    .line 187
    :cond_19
    const/4 v13, 0x1

    .line 188
    goto :goto_3

    .line 177
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 198
    .end local v19           #mTemp:Ljava/lang/String;
    .end local v20           #mTemp_:Ljava/lang/String;
    :cond_1b
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 202
    .restart local v19       #mTemp:Ljava/lang/String;
    .restart local v20       #mTemp_:Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getWeekDayName()Ljava/util/ArrayList;

    move-result-object v23

    .line 203
    .local v23, weekDayName_:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->weekDayName:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1d

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->weekDayName:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 206
    :cond_1d
    if-eqz v23, :cond_1e

    .line 207
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 208
    :cond_1e
    if-ne v5, v6, :cond_24

    .line 209
    const/4 v13, 0x0

    .line 210
    const-string v21, ""

    .local v21, wdName:Ljava/lang/String;
    const-string v22, ""

    .line 211
    .local v22, wdName_:Ljava/lang/String;
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_1f

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->weekDayName:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #wdName:Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 214
    .restart local v21       #wdName:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #wdName_:Ljava/lang/String;
    check-cast v22, Ljava/lang/String;

    .line 216
    .restart local v22       #wdName_:Ljava/lang/String;
    if-eqz v21, :cond_20

    if-eqz v22, :cond_20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_20

    .line 217
    const/4 v13, 0x1

    .line 225
    :cond_1f
    :goto_5
    if-eqz v13, :cond_25

    .line 227
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 220
    :cond_20
    if-eqz v21, :cond_21

    if-eqz v22, :cond_22

    :cond_21
    if-nez v21, :cond_23

    if-eqz v22, :cond_23

    .line 221
    :cond_22
    const/4 v13, 0x1

    .line 222
    goto :goto_5

    .line 211
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 232
    .end local v21           #wdName:Ljava/lang/String;
    .end local v22           #wdName_:Ljava/lang/String;
    :cond_24
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 236
    .restart local v21       #wdName:Ljava/lang/String;
    .restart local v22       #wdName_:Ljava/lang/String;
    :cond_25
    invoke-static {}, Lcom/htc/weatheridlescreen/WISUtility;->isTabletDevice()Z

    move-result v24

    if-nez v24, :cond_26

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getLastUpdateTime()J

    move-result-wide v17

    .line 238
    .local v17, mLastUpdateTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    move-object/from16 v24, v0

    if-eqz v24, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v24

    cmp-long v24, v17, v24

    if-eqz v24, :cond_26

    .line 240
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 245
    .end local v17           #mLastUpdateTime:J
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/htc/weatheridlescreen/data/WeatherData;->getOffsetIndex()I

    move-result v16

    .line 246
    .local v16, mIndexToday:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    move/from16 v24, v0

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_27

    .line 248
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 252
    :cond_27
    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getConditionId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConditionName()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionName:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentHighTemperature()Ljava/lang/String;
    .locals 5

    .prologue
    .line 336
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-eqz v3, :cond_4

    .line 337
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    if-nez v3, :cond_0

    .line 338
    sget-object v3, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    iput-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    .line 340
    :cond_0
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    sget-object v4, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    if-ne v3, v4, :cond_2

    .line 341
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 342
    .local v2, strHigh:Ljava/lang/String;
    iget v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 343
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 344
    .local v1, high:I
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCurTempF()I

    move-result v0

    .line 345
    .local v0, curTemp:I
    if-le v0, v1, :cond_1

    .line 346
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 348
    .end local v0           #curTemp:I
    .end local v1           #high:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 362
    .end local v2           #strHigh:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 351
    :cond_2
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 352
    .restart local v2       #strHigh:Ljava/lang/String;
    iget v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 353
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 354
    .restart local v1       #high:I
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCurTempC()I

    move-result v0

    .line 355
    .restart local v0       #curTemp:I
    if-le v0, v1, :cond_3

    .line 356
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 359
    .end local v0           #curTemp:I
    .end local v1           #high:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 362
    .end local v2           #strHigh:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    goto :goto_0
.end method

.method public getCurrentLowTemperature()Ljava/lang/String;
    .locals 5

    .prologue
    .line 367
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-eqz v3, :cond_4

    .line 368
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    if-nez v3, :cond_0

    .line 369
    sget-object v3, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    iput-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    .line 371
    :cond_0
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    sget-object v4, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    if-ne v3, v4, :cond_2

    .line 372
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 373
    .local v2, strLow:Ljava/lang/String;
    iget v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 374
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 375
    .local v1, low:I
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCurTempF()I

    move-result v0

    .line 376
    .local v0, curTemp:I
    if-ge v0, v1, :cond_1

    .line 377
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    .end local v0           #curTemp:I
    .end local v1           #low:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    .end local v2           #strLow:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 382
    :cond_2
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 383
    .restart local v2       #strLow:Ljava/lang/String;
    iget v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 384
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 385
    .restart local v1       #low:I
    iget-object v3, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPPData;->getCurTempC()I

    move-result v0

    .line 386
    .restart local v0       #curTemp:I
    if-ge v0, v1, :cond_3

    .line 387
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 389
    .end local v0           #curTemp:I
    .end local v1           #low:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 392
    .end local v2           #strLow:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    goto :goto_0
.end method

.method public getCurrentTemperature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    if-nez v0, :cond_0

    .line 326
    sget-object v0, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    sget-object v1, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    if-ne v0, v1, :cond_1

    .line 329
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentTemperatureF()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getCurrentTemperatureC()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->getCurLocTimezoneId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHLTemperature()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    if-nez v0, :cond_0

    .line 293
    sget-object v0, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    iput-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mTemperatureUnit:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    sget-object v1, Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;->_F:Lcom/htc/weatheridlescreen/data/WeatherData$UNIT;

    if-ne v0, v1, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getHLTemperatureF()Ljava/util/ArrayList;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/htc/weatheridlescreen/data/WeatherData;->getHLTemperatureC()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsNight()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsNight:Z

    return v0
.end method

.method public getIsRain()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->mIsRain:Z

    return v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->wspData:Lcom/htc/util/weather/WSPPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v0

    .line 426
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getOffsetIndex()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    return v0
.end method

.method public getTotalDataSize()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->conditionId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWeekDayName()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->weekDayName:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setOffsetIndex(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 257
    iput p1, p0, Lcom/htc/weatheridlescreen/data/WeatherData;->offsetIndex:I

    .line 258
    return-void
.end method
