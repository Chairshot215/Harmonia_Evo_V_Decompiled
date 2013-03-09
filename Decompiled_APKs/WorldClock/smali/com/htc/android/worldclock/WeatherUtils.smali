.class public Lcom/htc/android/worldclock/WeatherUtils;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# static fields
.field private static final ONE_DAY_DURATION:J = 0x5265c00L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayDiff(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 9
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 103
    invoke-virtual {p1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 104
    .local v3, tTo:J
    invoke-virtual {p0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 105
    .local v1, tFrom:J
    sub-long v5, v1, v3

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    long-to-int v0, v5

    .line 106
    .local v0, daysBetween:I
    return v0
.end method

.method public static getDate(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;
    .locals 12
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 68
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 69
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 70
    .local v7, tm:Landroid/text/format/Time;
    const/16 v8, 0x76c

    .line 71
    .local v8, y:I
    const/4 v6, 0x1

    .line 72
    .local v6, m:I
    const/4 v1, 0x1

    .line 73
    .local v1, d:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v4, keywords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 75
    .local v3, k:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 76
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v3           #k:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 81
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 83
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v10, :cond_3

    .line 84
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 86
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 87
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 93
    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 94
    if-eqz p1, :cond_5

    .line 95
    invoke-virtual {v7, p1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 97
    :cond_5
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v7, v1, v9, v8}, Landroid/text/format/Time;->set(III)V

    .line 98
    return-object v7

    .line 89
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public static getDayDiff(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "startDate"
    .parameter "timezoneId"

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 49
    invoke-static {p1}, Lcom/htc/android/worldclock/WeatherUtils;->getToday(Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v0

    .line 50
    .local v0, tmNow:Landroid/text/format/Time;
    invoke-static {p0, p1}, Lcom/htc/android/worldclock/WeatherUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v1

    .line 51
    .local v1, tmStart:Landroid/text/format/Time;
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/WeatherUtils;->dayDiff(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    return v2
.end method

.method private static getToday(Ljava/lang/String;)Landroid/text/format/Time;
    .locals 2
    .parameter "timeZoneId"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 56
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 57
    .local v0, now:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 58
    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 61
    :cond_0
    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 62
    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 63
    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 64
    return-object v0
.end method

.method public static isOverdue(Landroid/content/Context;J)Z
    .locals 7
    .parameter "context"
    .parameter "lastUpdateTime"

    .prologue
    .line 17
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 18
    const-wide/32 v3, 0xa4cb80

    .line 19
    .local v3, interval:J
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v0

    .line 21
    .local v0, bAutoSync:Z
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/worldclock/WeatherUtils;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 28
    .local v1, current_time:J
    cmp-long v5, v1, p1

    if-ltz v5, :cond_1

    sub-long v5, v1, p1

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    .line 30
    const/4 v5, 0x0

    .line 32
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private static safe_parseInt(Ljava/lang/String;)I
    .locals 2
    .parameter "intStr"

    .prologue
    .line 37
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, iRet:I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 44
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
