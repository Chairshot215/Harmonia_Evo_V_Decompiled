.class public Lcom/htc/Weather/util/RefreshUtil;
.super Ljava/lang/Object;
.source "RefreshUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RefreshUtil"

.field private static timeString_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static calculate(Landroid/content/Context;J)V
    .locals 13
    .parameter "c"
    .parameter "time"

    .prologue
    const-wide/32 v11, 0x5265c00

    .line 128
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 129
    .local v2, tNow:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 130
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 131
    .local v3, tn:J
    iget v7, v2, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v7, v7, 0x3c

    iget v8, v2, Landroid/text/format/Time;->minute:I

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3c

    iget v8, v2, Landroid/text/format/Time;->second:I

    add-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    rem-long v9, v3, v9

    add-long v0, v7, v9

    .line 132
    .local v0, r:J
    sub-long v5, v3, v0

    .line 133
    .local v5, today_00:J
    cmp-long v7, p1, v5

    if-gez v7, :cond_0

    sub-long v7, v5, v11

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 134
    const v7, 0x7f0a0052

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/htc/Weather/util/RefreshUtil;->timeString_:Ljava/lang/String;

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    cmp-long v7, p1, v5

    if-ltz v7, :cond_1

    add-long v7, v5, v11

    cmp-long v7, p1, v7

    if-gez v7, :cond_1

    .line 136
    invoke-static {p0, p1, p2}, Lcom/htc/Weather/util/RefreshUtil;->getTimeStringHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/htc/Weather/util/RefreshUtil;->timeString_:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/htc/Weather/util/RefreshUtil;->getTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/htc/Weather/util/RefreshUtil;->timeString_:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter "c"
    .parameter "time"

    .prologue
    .line 45
    const-string v1, ""

    .line 47
    .local v1, date:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format_short"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, currentFormat:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 52
    :cond_0
    const-string v0, "MM/dd/yy"

    .line 55
    :cond_1
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 57
    .local v2, dateFormat:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    :cond_2
    return-object v1
.end method

.method public static getMillis(Ljava/util/TimeZone;)J
    .locals 5
    .parameter "tz"

    .prologue
    .line 185
    const-wide/16 v2, 0x0

    .line 186
    .local v2, time:J
    if-eqz p0, :cond_0

    .line 187
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 188
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 189
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 190
    .local v1, d:Ljava/util/Date;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->setHours(I)V

    .line 191
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->setMinutes(I)V

    .line 192
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 194
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #d:Ljava/util/Date;
    :cond_0
    return-wide v2
.end method

.method public static getMoreDetailOnlineUrl(Lcom/htc/Weather/data/CityInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 206
    if-eqz p0, :cond_0

    iget-boolean v1, p0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v1}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v0

    .line 208
    .local v0, day:Lcom/htc/Weather/data/DayForecast;
    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getCityWebURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getCityWebURL()Ljava/lang/String;

    move-result-object v1

    .line 211
    .end local v0           #day:Lcom/htc/Weather/data/DayForecast;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getReminderTime(J)J
    .locals 8
    .parameter "time"

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    .local v0, current_time:J
    sub-long v2, v0, p0

    .line 122
    .local v2, diff_time:J
    const-wide/32 v6, 0xa4cb80

    sub-long v4, v6, v2

    .line 124
    .local v4, remainder:J
    return-wide v4
.end method

.method public static getStringMoreDetail(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "update_str"
    .parameter "update_time"

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, more_txt:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 271
    .local v2, update_txt_limit:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 272
    .local v1, more_txt_limit:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v2, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 276
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_3
    return-object v0
.end method

.method private static getTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "c"
    .parameter "time"

    .prologue
    .line 63
    invoke-static {p0, p1, p2}, Lcom/htc/Weather/util/RefreshUtil;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public static getTimeStringHM(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "c"
    .parameter "time"

    .prologue
    const/16 v10, 0xa

    .line 68
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, ftime:Ljava/lang/String;
    sget-object v8, Lcom/htc/Weather/WeatherActivity;->default_time_12_24:Lcom/htc/Weather/data/City$TIME;

    sget-object v9, Lcom/htc/Weather/data/City$TIME;->_TIME_12:Lcom/htc/Weather/data/City$TIME;

    if-ne v8, v9, :cond_3

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 72
    .local v4, mCalendar:Ljava/util/Calendar;
    invoke-virtual {v4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    const-string v7, ""

    .line 74
    .local v7, ntime:Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 75
    .local v5, mHour:I
    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 76
    .local v6, mMinutes:I
    const-string v0, ""

    .line 77
    .local v0, apm:Ljava/lang/String;
    const-string v2, ""

    .line 78
    .local v2, h:Ljava/lang/String;
    const-string v3, ""

    .line 79
    .local v3, m:Ljava/lang/String;
    if-nez v5, :cond_0

    const/16 v5, 0xc

    .line 81
    :cond_0
    if-ge v6, v10, :cond_1

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    const/16 v8, 0x9

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-nez v8, :cond_2

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20c0175

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 101
    .end local v0           #apm:Ljava/lang/String;
    .end local v2           #h:Ljava/lang/String;
    .end local v3           #m:Ljava/lang/String;
    .end local v4           #mCalendar:Ljava/util/Calendar;
    .end local v5           #mHour:I
    .end local v6           #mMinutes:I
    .end local v7           #ntime:Ljava/lang/String;
    :goto_2
    return-object v7

    .line 85
    .restart local v0       #apm:Ljava/lang/String;
    .restart local v2       #h:Ljava/lang/String;
    .restart local v3       #m:Ljava/lang/String;
    .restart local v4       #mCalendar:Ljava/util/Calendar;
    .restart local v5       #mHour:I
    .restart local v6       #mMinutes:I
    .restart local v7       #ntime:Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x20c0176

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .end local v0           #apm:Ljava/lang/String;
    .end local v2           #h:Ljava/lang/String;
    .end local v3           #m:Ljava/lang/String;
    .end local v4           #mCalendar:Ljava/util/Calendar;
    .end local v5           #mHour:I
    .end local v6           #mMinutes:I
    .end local v7           #ntime:Ljava/lang/String;
    :cond_3
    move-object v7, v1

    .line 101
    goto :goto_2
.end method

.method public static getUpdateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "c"
    .parameter "time"

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/htc/Weather/util/RefreshUtil;->calculate(Landroid/content/Context;J)V

    .line 41
    sget-object v0, Lcom/htc/Weather/util/RefreshUtil;->timeString_:Ljava/lang/String;

    return-object v0
.end method

.method public static isAutoOverdue(Landroid/content/Context;J)Z
    .locals 9
    .parameter "context"
    .parameter "lastUpdateTime"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v0

    .line 172
    .local v0, bAutoSync:Z
    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v5

    .line 173
    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v3, v7

    .line 177
    .local v3, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 178
    .local v1, current_time:J
    sub-long v7, v1, p1

    cmp-long v7, v7, v3

    if-ltz v7, :cond_0

    move v5, v6

    .line 181
    goto :goto_0
.end method

.method public static isCurrentLocation(Lcom/htc/Weather/data/CityInfo;)Z
    .locals 2
    .parameter "ci"

    .prologue
    .line 198
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htclocationservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOverdue(Landroid/content/Context;J)Z
    .locals 7
    .parameter "context"
    .parameter "lastUpdateTime"

    .prologue
    .line 155
    const-wide/32 v3, 0xa4cb80

    .line 156
    .local v3, interval:J
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v0

    .line 158
    .local v0, bAutoSync:Z
    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 162
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 163
    .local v1, current_time:J
    cmp-long v5, v1, p1

    if-ltz v5, :cond_1

    sub-long v5, v1, p1

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    .line 164
    const/4 v5, 0x0

    .line 166
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static launchBrowser(Landroid/content/Context;Lcom/htc/Weather/data/CityInfo;)V
    .locals 7
    .parameter "context"
    .parameter "info"

    .prologue
    .line 284
    const-string v4, "RefreshUtil"

    const-string v5, "launchBrowser"

    invoke-static {v4, v5}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {p1}, Lcom/htc/Weather/util/RefreshUtil;->getMoreDetailOnlineUrl(Lcom/htc/Weather/data/CityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 287
    .local v3, uri:Landroid/net/Uri;
    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    const-string v4, "ro.da1.enable"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, isPrime:Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 291
    .local v0, browserIntent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    const-string v4, "com.htc.HtcLinkifyDispatcher"

    const-string v5, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v0           #browserIntent:Landroid/content/Intent;
    .end local v2           #isPrime:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 294
    .restart local v2       #isPrime:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "RefreshUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static needAutoUpdate(J)Z
    .locals 10
    .parameter "time"

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    .local v0, current_time:J
    sub-long v2, v0, p0

    .line 109
    .local v2, diff_time:J
    const-wide/32 v8, 0x36ee80

    rem-long v6, v2, v8

    .line 110
    .local v6, remainder:J
    long-to-float v8, v2

    const v9, 0x4a5bba00

    div-float/2addr v8, v9

    float-to-long v4, v8

    .line 112
    .local v4, quotient:J
    const-wide/16 v8, 0x3

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    .line 113
    const/4 v8, 0x1

    .line 115
    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static safe_parseInt(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, val:I
    if-nez p0, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 150
    :goto_0
    return v1

    .line 147
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static setVenderLogo(Landroid/content/Context;Landroid/widget/ImageView;IIILcom/htc/Weather/data/CityInfo;)V
    .locals 8
    .parameter "context"
    .parameter "iconview"
    .parameter "w"
    .parameter "h"
    .parameter "defaultRes"
    .parameter "cityinfo"

    .prologue
    const v7, 0x7f020037

    .line 215
    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {p0}, Lcom/htc/util/weather/WSPPUtility;->getUsingWCRFlag(Landroid/content/Context;)Z

    move-result v2

    .line 218
    .local v2, isWcrEnable:Z
    const-string v4, "RefreshUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WSPPUtility.getUsingWCRFlag(context) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-eqz v2, :cond_3

    .line 221
    invoke-static {p0}, Lcom/htc/util/weather/WSPPUtility;->getWCRGetVendorLogo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, logoPath:Ljava/lang/String;
    const-string v4, "RefreshUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWCRGetVendorLogo file path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_0

    .line 230
    invoke-static {v3, p2, p3}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 234
    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 235
    const-string v4, "RefreshUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Logo file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 239
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #logoPath:Ljava/lang/String;
    :cond_3
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 241
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 242
    invoke-virtual {p5}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, code:Ljava/lang/String;
    invoke-virtual {p5}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p5}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.htclocationservice"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 246
    const-string v4, "RefreshUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Country :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p5}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v4, "RefreshUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "State :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p5}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v4, "\u4e2d\u56fd"

    invoke-virtual {p5}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/util/weather/WeatherLocation;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "\u53f0\u6e7e\u7701"

    invoke-virtual {p5}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/util/weather/WeatherLocation;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 250
    const-string v4, "RefreshUtil"

    const-string v5, "China logo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 255
    :cond_4
    if-eqz v1, :cond_5

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 256
    const-string v4, "RefreshUtil"

    const-string v5, "China logo -China City"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 262
    .end local v1           #code:Ljava/lang/String;
    :cond_5
    const-string v4, "RefreshUtil"

    const-string v5, "accu weather logo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
