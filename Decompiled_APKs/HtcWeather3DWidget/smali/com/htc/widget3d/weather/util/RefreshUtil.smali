.class public Lcom/htc/widget3d/weather/util/RefreshUtil;
.super Ljava/lang/Object;
.source "RefreshUtil.java"


# static fields
.field private static timeString_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private static calculate(Landroid/content/Context;J)V
    .locals 13
    .parameter "c"
    .parameter "time"

    .prologue
    const-wide/32 v11, 0x5265c00

    .line 112
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 113
    .local v2, tNow:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 114
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 115
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

    .line 116
    .local v0, r:J
    sub-long v5, v3, v0

    .line 117
    .local v5, today_00:J
    cmp-long v7, p1, v5

    if-gez v7, :cond_0

    sub-long v7, v5, v11

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f06005d

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0, p1, p2}, Lcom/htc/widget3d/weather/util/RefreshUtil;->getTimeStringHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/htc/widget3d/weather/util/RefreshUtil;->timeString_:Ljava/lang/String;

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    cmp-long v7, p1, v5

    if-ltz v7, :cond_1

    add-long v7, v5, v11

    cmp-long v7, p1, v7

    if-gez v7, :cond_1

    .line 120
    invoke-static {p0, p1, p2}, Lcom/htc/widget3d/weather/util/RefreshUtil;->getTimeStringHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/htc/widget3d/weather/util/RefreshUtil;->timeString_:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/htc/widget3d/weather/util/RefreshUtil;->getTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/htc/widget3d/weather/util/RefreshUtil;->timeString_:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter "c"
    .parameter "time"

    .prologue
    .line 28
    const-string v1, ""

    .line 30
    .local v1, date:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format_short"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, currentFormat:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 35
    :cond_0
    const-string v0, "MM/dd/yy"

    .line 38
    :cond_1
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 40
    .local v2, dateFormat:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_2
    return-object v1
.end method

.method public static getReminderTime(J)J
    .locals 8
    .parameter "time"

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    .local v0, current_time:J
    sub-long v2, v0, p0

    .line 106
    .local v2, diff_time:J
    const-wide/32 v6, 0xa4cb80

    sub-long v4, v6, v2

    .line 108
    .local v4, remainder:J
    return-wide v4
.end method

.method private static getTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "c"
    .parameter "time"

    .prologue
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/htc/widget3d/weather/util/RefreshUtil;->getDateString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lcom/htc/widget3d/weather/util/RefreshUtil;->getTimeStringHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method

.method public static getTimeStringHM(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12
    .parameter "c"
    .parameter "time"

    .prologue
    const/16 v11, 0xa

    .line 51
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, ftime:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "time_12_24"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, default_time_12_24:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v9, "12"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 56
    .local v5, mCalendar:Ljava/util/Calendar;
    invoke-virtual {v5, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 57
    const-string v8, ""

    .line 58
    .local v8, ntime:Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 59
    .local v6, mHour:I
    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 60
    .local v7, mMinutes:I
    const-string v0, ""

    .line 61
    .local v0, apm:Ljava/lang/String;
    const-string v3, ""

    .line 62
    .local v3, h:Ljava/lang/String;
    const-string v4, ""

    .line 63
    .local v4, m:Ljava/lang/String;
    if-nez v6, :cond_0

    const/16 v6, 0xc

    .line 65
    :cond_0
    if-ge v7, v11, :cond_1

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    const/16 v9, 0x9

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-nez v9, :cond_2

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x20c0175

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    .end local v0           #apm:Ljava/lang/String;
    .end local v3           #h:Ljava/lang/String;
    .end local v4           #m:Ljava/lang/String;
    .end local v5           #mCalendar:Ljava/util/Calendar;
    .end local v6           #mHour:I
    .end local v7           #mMinutes:I
    .end local v8           #ntime:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 69
    .restart local v0       #apm:Ljava/lang/String;
    .restart local v3       #h:Ljava/lang/String;
    .restart local v4       #m:Ljava/lang/String;
    .restart local v5       #mCalendar:Ljava/util/Calendar;
    .restart local v6       #mHour:I
    .restart local v7       #mMinutes:I
    .restart local v8       #ntime:Ljava/lang/String;
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x20c0176

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .end local v0           #apm:Ljava/lang/String;
    .end local v3           #h:Ljava/lang/String;
    .end local v4           #m:Ljava/lang/String;
    .end local v5           #mCalendar:Ljava/util/Calendar;
    .end local v6           #mHour:I
    .end local v7           #mMinutes:I
    .end local v8           #ntime:Ljava/lang/String;
    :cond_3
    move-object v8, v2

    .line 85
    goto :goto_2
.end method

.method public static getUpdateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "c"
    .parameter "time"

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/htc/widget3d/weather/util/RefreshUtil;->calculate(Landroid/content/Context;J)V

    .line 24
    sget-object v0, Lcom/htc/widget3d/weather/util/RefreshUtil;->timeString_:Ljava/lang/String;

    return-object v0
.end method

.method public static isAutoOverdue(Landroid/content/Context;J)Z
    .locals 9
    .parameter "context"
    .parameter "lastUpdateTime"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 154
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v0

    .line 156
    .local v0, bAutoSync:Z
    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v5

    .line 157
    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-nez v7, :cond_2

    move v5, v6

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v3, v7

    .line 161
    .local v3, interval:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 162
    .local v1, current_time:J
    sub-long v7, v1, p1

    cmp-long v7, v7, v3

    if-ltz v7, :cond_0

    move v5, v6

    .line 165
    goto :goto_0
.end method

.method public static isOverdue(Landroid/content/Context;J)Z
    .locals 7
    .parameter "context"
    .parameter "lastUpdateTime"

    .prologue
    .line 139
    const-wide/32 v3, 0xa4cb80

    .line 140
    .local v3, interval:J
    invoke-static {p0}, Lcom/htc/util/weather/WSPUtility;->isSyncAutomatically(Landroid/content/Context;)Z

    move-result v0

    .line 142
    .local v0, bAutoSync:Z
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.htc.sync.provider.weather.setting.autosyncfrequency"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/widget3d/weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v3, v5

    .line 146
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 147
    .local v1, current_time:J
    cmp-long v5, v1, p1

    if-ltz v5, :cond_1

    sub-long v5, v1, p1

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    .line 148
    const/4 v5, 0x0

    .line 150
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static needAutoUpdate(J)Z
    .locals 10
    .parameter "time"

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    .local v0, current_time:J
    sub-long v2, v0, p0

    .line 93
    .local v2, diff_time:J
    const-wide/32 v8, 0x36ee80

    rem-long v6, v2, v8

    .line 94
    .local v6, remainder:J
    long-to-float v8, v2

    const v9, 0x4a5bba00

    div-float/2addr v8, v9

    float-to-long v4, v8

    .line 96
    .local v4, quotient:J
    const-wide/16 v8, 0x3

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    .line 97
    const/4 v8, 0x1

    .line 99
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
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, val:I
    if-nez p0, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 134
    :goto_0
    return v1

    .line 131
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    goto :goto_1
.end method
