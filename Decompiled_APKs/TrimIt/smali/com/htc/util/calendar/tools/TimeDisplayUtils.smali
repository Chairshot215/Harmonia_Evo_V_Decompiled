.class public Lcom/htc/util/calendar/tools/TimeDisplayUtils;
.super Ljava/lang/Object;
.source "TimeDisplayUtils.java"


# static fields
.field public static DEFAULT_DATE_FORMAT:Ljava/lang/String;

.field public static DEFAULT_DATE_FORMAT_SHORT:Ljava/lang/String;

.field public static system_date_format:Ljava/lang/String;

.field public static system_date_format_short:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "EE, MMM d"

    sput-object v0, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->DEFAULT_DATE_FORMAT_SHORT:Ljava/lang/String;

    .line 16
    const-string v0, "EE, MMM d, yyyy"

    sput-object v0, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->DEFAULT_DATE_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchSystemDateFormat(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->system_date_format:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->system_date_format_short:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 37
    invoke-static/range {p0 .. p5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange_HTC(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "millis"
    .parameter "isAllday"

    .prologue
    .line 132
    if-eqz p3, :cond_1

    .line 133
    const/16 v5, 0x2012

    .line 140
    .local v5, flags:I
    :cond_0
    :goto_0
    const-wide/high16 v3, -0x8000

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange_HTC(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    .end local v5           #flags:I
    :cond_1
    const/16 v5, 0x13

    .line 136
    .restart local v5       #flags:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    or-int/lit16 v5, v5, 0x80

    goto :goto_0
.end method

.method public static formatDateRange_HTC(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "begin"
    .parameter "end"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v4, ""

    .line 92
    :goto_0
    return-object v4

    .line 64
    :cond_0
    const/4 v0, 0x1

    .line 65
    .local v0, FORMAT_SHOW_TIME:I
    and-int/lit8 v7, p5, 0x1

    if-eqz v7, :cond_1

    move v1, v5

    .line 66
    .local v1, showTime:Z
    :goto_1
    const-string v4, ""

    .line 68
    .local v4, strReturn:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 70
    const-wide/high16 v7, -0x8000

    cmp-long v7, p3, v7

    if-nez v7, :cond_2

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2, v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->getDateString(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    :goto_2
    const-string v5, "jh"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #showTime:Z
    .end local v4           #strReturn:Ljava/lang/String;
    :cond_1
    move v1, v6

    .line 65
    goto :goto_1

    .line 73
    .restart local v1       #showTime:Z
    .restart local v4       #strReturn:Ljava/lang/String;
    :cond_2
    cmp-long v5, p1, p3

    if-nez v5, :cond_3

    .line 74
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 76
    :cond_3
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, strBegin:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, strEnd:Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->showDate(JJ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2, v6}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->getDateString(JZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4, v6}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->getDateString(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    goto/16 :goto_2

    .line 89
    .end local v2           #strBegin:Ljava/lang/String;
    .end local v3           #strEnd:Ljava/lang/String;
    :cond_5
    invoke-static {p1, p2, v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->getDateString(JZ)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "time"
    .parameter "flags"

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    const-string v0, ""

    .line 119
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDateString(JZ)Ljava/lang/String;
    .locals 3
    .parameter "millis"
    .parameter "fully_date_format"

    .prologue
    .line 97
    const-string v0, ""

    .line 98
    .local v0, date_format:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 99
    sget-object v2, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->system_date_format:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    sget-object v2, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->DEFAULT_DATE_FORMAT:Ljava/lang/String;

    sput-object v2, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->system_date_format:Ljava/lang/String;

    .line 102
    :cond_0
    sget-object v0, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->system_date_format:Ljava/lang/String;

    .line 110
    :goto_0
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 112
    .local v1, resultDateFormat:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 104
    .end local v1           #resultDateFormat:Ljava/lang/CharSequence;
    :cond_1
    sget-object v2, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->system_date_format_short:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    sget-object v2, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->DEFAULT_DATE_FORMAT_SHORT:Ljava/lang/String;

    sput-object v2, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->system_date_format_short:Ljava/lang/String;

    .line 107
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->system_date_format_short:Ljava/lang/String;

    goto :goto_0
.end method

.method private static showDate(JJ)Z
    .locals 9
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    .line 42
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 43
    .local v0, beginTime:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 45
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 46
    .local v1, endTime:Landroid/text/format/Time;
    invoke-virtual {v1, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 48
    iget-wide v5, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 49
    .local v2, julianDayBegin:I
    iget-wide v5, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    .line 51
    .local v3, julianDayEnd:I
    sub-long v5, p2, p0

    const-wide/32 v7, 0x5265c00

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v4

    .line 53
    :cond_1
    if-ne v2, v3, :cond_0

    .line 56
    const/4 v4, 0x0

    goto :goto_0
.end method
