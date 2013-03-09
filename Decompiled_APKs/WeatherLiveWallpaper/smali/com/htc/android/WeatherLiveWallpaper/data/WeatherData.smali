.class public Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;
.super Ljava/lang/Object;
.source "WeatherData.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field private static final ONE_DAY_MILLIS:J = 0x5265c00L

.field private static final PREFIX:Ljava/lang/String; = "[WeatherData]: "


# instance fields
.field private mCityCode:Ljava/lang/String;

.field private mCityTimeZone:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mForecastCondition:[Ljava/lang/String;

.field private mForecastDate:[Ljava/lang/String;

.field private mTodayIndex:I

.field private mTotalForecast:I

.field private mUpdateTime:J

.field private mWeatherConditionId:I

.field private mbIsDay:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/util/weather/WSPPData;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "data"
    .parameter "cityCode"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityTimeZone:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityCode:Ljava/lang/String;

    .line 30
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTotalForecast:I

    .line 31
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastDate:[Ljava/lang/String;

    .line 33
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTodayIndex:I

    .line 34
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mbIsDay:Z

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mUpdateTime:J

    .line 36
    iput v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mWeatherConditionId:I

    .line 45
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityCode:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mWeatherConditionId:I

    .line 48
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTodayIndex:I

    .line 49
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mbIsDay:Z

    .line 50
    invoke-direct {p0, p2}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->parseWSPPData(Lcom/htc/util/weather/WSPPData;)V

    .line 51
    return-void
.end method

.method private beforeToday(Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    .line 225
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->getTimeObject(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;

    move-result-object v8

    .line 226
    .local v8, tObject:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 227
    .local v7, tNow:Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 228
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 229
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 233
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 234
    .local v5, t:J
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 235
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

    .line 236
    .local v3, r:J
    const/4 v8, 0x0

    .line 237
    const/4 v7, 0x0

    .line 238
    sub-long v11, v9, v3

    .line 239
    .local v11, today:J
    sub-long v13, v11, v5

    const-wide/32 v15, 0x5265c00

    div-long/2addr v13, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v13

    .line 240
    .local v1, daysBetween:I
    if-gez v1, :cond_1

    .line 241
    const/4 v1, 0x0

    .line 247
    .end local v1           #daysBetween:I
    .end local v3           #r:J
    .end local v5           #t:J
    .end local v7           #tNow:Landroid/text/format/Time;
    .end local v8           #tObject:Landroid/text/format/Time;
    .end local v9           #tn:J
    .end local v11           #today:J
    :cond_1
    :goto_0
    return v1

    .line 244
    :catch_0
    move-exception v2

    .line 245
    .local v2, e:Ljava/lang/Exception;
    const-string v13, "WeatherLiveWallpaper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[WeatherData]: beforeToday() - Exception = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private changeTodayIndex(Ljava/lang/String;)Z
    .locals 6
    .parameter "timezoneId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v2

    .line 173
    :cond_1
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    array-length v0, v4

    .line 174
    .local v0, nCount:I
    if-eqz v0, :cond_0

    .line 177
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_3

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, nOffset:I
    iget-wide v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mUpdateTime:J

    invoke-direct {p0, v4, v5}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->isOverdue(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastDate:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {p0, v4, p1}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->beforeToday(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 181
    add-int/lit8 v4, v0, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 184
    :cond_2
    iget v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTodayIndex:I

    if-eq v4, v1, :cond_0

    .line 185
    iput v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTodayIndex:I

    .line 188
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTodayIndex:I

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mWeatherConditionId:I

    .line 190
    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mbIsDay:Z

    move v2, v3

    .line 191
    goto :goto_0

    .line 196
    .end local v1           #nOffset:I
    :cond_3
    iput v3, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mWeatherConditionId:I

    move v2, v3

    .line 197
    goto :goto_0
.end method

.method private getLocationInfoByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;
    .locals 4
    .parameter "cr"
    .parameter "code"

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 111
    .local v1, loc:Lcom/htc/util/weather/WeatherLocation;
    :try_start_0
    invoke-static {p1, p2}, Lcom/htc/util/weather/WeatherUtility;->getLocationListByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-static {v0}, Lcom/htc/util/weather/WeatherUtility;->CursorToWeatherLocation(Landroid/database/Cursor;)Lcom/htc/util/weather/WeatherLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 119
    :cond_0
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v0, 0x0

    .line 124
    :cond_1
    return-object v1

    .line 119
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    const/4 v0, 0x0

    :cond_2
    throw v2
.end method

.method private getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, ary:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 132
    .local v0, num:I
    new-array v1, v0, [Ljava/lang/String;

    .line 133
    .local v1, s_ary:[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 136
    .end local v0           #num:I
    .end local v1           #s_ary:[Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getTimeObject(Ljava/lang/String;Ljava/lang/String;)Landroid/text/format/Time;
    .locals 13
    .parameter "date"
    .parameter "timezoneId"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 269
    const/16 v9, 0x76c

    .line 270
    .local v9, y:I
    const/4 v7, 0x1

    .line 271
    .local v7, m:I
    const/4 v1, 0x1

    .line 272
    .local v1, d:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v5, keywords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 275
    .local v4, k:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 276
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    .end local v4           #k:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 281
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 282
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v11, :cond_3

    .line 283
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 284
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v12, :cond_4

    .line 285
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

    .line 292
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 293
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 294
    .local v8, t:Landroid/text/format/Time;
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 295
    invoke-virtual {v8, p2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 297
    :cond_5
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v8, v1, v10, v9}, Landroid/text/format/Time;->set(III)V

    .line 298
    return-object v8

    .line 287
    .end local v8           #t:Landroid/text/format/Time;
    :catch_0
    move-exception v2

    .line 289
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "WeatherLiveWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[WeatherData]: getTimeObject() - the format of date is not mm/dd/yy..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isOverdue(J)Z
    .locals 7
    .parameter "lastUpdateTime"

    .prologue
    .line 205
    const-wide/32 v3, 0xa4cb80

    .line 206
    .local v3, interval:J
    iget-object v5, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/util/weather/WSPPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v0

    .line 207
    .local v0, bAutoSync:Z
    if-eqz v0, :cond_0

    .line 208
    iget-object v5, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 213
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 214
    .local v1, current_time:J
    cmp-long v5, v1, p1

    if-ltz v5, :cond_1

    sub-long v5, v1, p1

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    .line 215
    const/4 v5, 0x0

    .line 217
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private parseWSPPData(Lcom/htc/util/weather/WSPPData;)V
    .locals 8
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    .line 65
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityCode:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityCode:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityCode:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    :cond_0
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->getCityCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityCode:Ljava/lang/String;

    .line 69
    :cond_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 70
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getType()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurLocTimezoneId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityTimeZone:Ljava/lang/String;

    .line 79
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastDate:[Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->getStringFromArrayList(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    .line 81
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 82
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getLastUpdate()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mUpdateTime:J

    .line 83
    invoke-virtual {p1}, Lcom/htc/util/weather/WSPPData;->getDayLightFlag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "True"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mbIsDay:Z

    .line 84
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 85
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    array-length v4, v4

    iput v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTotalForecast:I

    .line 86
    const-string v3, ""

    .line 87
    .local v3, strLog:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTotalForecast:I

    if-ge v1, v4, :cond_4

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mForecastCondition["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    .end local v1           #i:I
    .end local v3           #strLog:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityCode:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->getLocationInfoByCode(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    .line 75
    .local v2, mLocation:Lcom/htc/util/weather/WeatherLocation;
    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityTimeZone:Ljava/lang/String;

    goto/16 :goto_0

    .line 92
    .end local v2           #mLocation:Lcom/htc/util/weather/WeatherLocation;
    :cond_4
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTodayIndex:I

    iget-object v5, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 94
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastCondition:[Ljava/lang/String;

    iget v5, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTodayIndex:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mWeatherConditionId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->checkDateIsOverDue()Z

    .line 104
    :cond_6
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/NumberFormatException;
    iput v7, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mWeatherConditionId:I

    .line 98
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method

.method private safe_parseInt(Ljava/lang/String;)I
    .locals 5
    .parameter "str"

    .prologue
    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, val:I
    if-nez p1, :cond_0

    .line 255
    const/4 v2, 0x0

    .line 263
    :goto_0
    return v2

    .line 258
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 263
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WeatherLiveWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WeatherData]: safe_parseInt() - Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public checkDateIsOverDue()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

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
    iget v6, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTotalForecast:I

    if-ltz v6, :cond_0

    .line 151
    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastDate:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v5

    .line 154
    :cond_1
    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mForecastDate:[Ljava/lang/String;

    iget v7, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mTodayIndex:I

    aget-object v0, v6, v7

    .line 155
    .local v0, city_date:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 160
    :cond_2
    iget-object v6, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mCityTimeZone:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->changeTodayIndex(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 161
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getIsDay()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mbIsDay:Z

    return v0
.end method

.method public getWeatherConditionID()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->mWeatherConditionId:I

    return v0
.end method
