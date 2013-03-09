.class public Lcom/android/htcdialer/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "EE, MMM d"

.field private static sDateFormat:Ljava/lang/String;

.field private static sTimeFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "EE, MMM d"

    sput-object v0, Lcom/android/htcdialer/util/TimeUtils;->sDateFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateString(J)Ljava/lang/String;
    .locals 14
    .parameter "date"

    .prologue
    const/4 v11, 0x1

    .line 40
    const/4 v6, 0x0

    .line 41
    .local v6, result:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 43
    .local v9, today:J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 44
    .local v8, startTime:Landroid/text/format/Time;
    invoke-virtual {v8, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 45
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 46
    .local v1, currentTime:Landroid/text/format/Time;
    invoke-virtual {v1, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 50
    iget-wide v12, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v7

    .line 51
    .local v7, startDay:I
    iget-wide v12, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v9, v10, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 52
    .local v0, currentDay:I
    sub-int v12, v0, v7

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 53
    .local v2, days:I
    cmp-long v12, v9, p0

    if-lez v12, :cond_1

    move v4, v11

    .line 55
    .local v4, past:Z
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 56
    .local v5, r:Landroid/content/res/Resources;
    if-ne v2, v11, :cond_2

    .line 57
    if-eqz v4, :cond_0

    .line 58
    const v11, 0x1040077

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 66
    :cond_0
    :goto_1
    return-object v6

    .line 53
    .end local v4           #past:Z
    .end local v5           #r:Landroid/content/res/Resources;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 60
    .restart local v4       #past:Z
    .restart local v5       #r:Landroid/content/res/Resources;
    :cond_2
    if-nez v2, :cond_3

    .line 61
    const v11, 0x1040078

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 63
    :cond_3
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 64
    .local v3, inDate:Ljava/util/Calendar;
    sget-object v11, Lcom/android/htcdialer/util/TimeUtils;->sDateFormat:Ljava/lang/String;

    invoke-static {v11, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public static getTimeString(J)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/htcdialer/util/TimeUtils;->sTimeFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/android/htcdialer/util/TimeUtils;->sTimeFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadSystemDateFormat(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format_short"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/util/TimeUtils;->sDateFormat:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/android/htcdialer/util/TimeUtils;->sDateFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "EE, MMM d"

    sput-object v0, Lcom/android/htcdialer/util/TimeUtils;->sDateFormat:Ljava/lang/String;

    .line 26
    :cond_0
    return-void
.end method

.method public static loadSystemTimeFormat(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/util/TimeUtils;->sTimeFormat:Ljava/text/DateFormat;

    .line 30
    return-void
.end method
