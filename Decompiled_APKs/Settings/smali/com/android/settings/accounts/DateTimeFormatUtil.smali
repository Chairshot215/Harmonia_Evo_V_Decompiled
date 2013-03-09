.class Lcom/android/settings/accounts/DateTimeFormatUtil;
.super Ljava/lang/Object;
.source "DateTimeFormatUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DateTimeFormatUtil"

.field static final oneDay:J = 0x5265c00L


# instance fields
.field mDateFormat:Ljava/lang/String;

.field mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, dateFormat:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const-string v1, "DateTimeFormatUtil"

    const-string v2, "DateTime format empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string v0, "EE, MMM dd, yyyy"

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    :cond_0
    return-object v0
.end method

.method public static getFormattedDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "dateFormat"
    .parameter "date"

    .prologue
    .line 32
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormattedTime(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "timeFormat"
    .parameter "date"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static isToday(JJ)Z
    .locals 2
    .parameter "todayMin"
    .parameter "syncTime"

    .prologue
    .line 40
    cmp-long v0, p2, p0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, p0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWithinPastWeek(JJ)Z
    .locals 2
    .parameter "todayMin"
    .parameter "syncTime"

    .prologue
    .line 48
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    const-wide/32 v0, 0x240c8400

    sub-long v0, p0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isYesterday(JJ)Z
    .locals 2
    .parameter "todayMin"
    .parameter "syncTime"

    .prologue
    .line 44
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    const-wide/32 v0, 0x5265c00

    sub-long v0, p0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
