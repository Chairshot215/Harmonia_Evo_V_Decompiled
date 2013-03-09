.class public Lcom/htc/lockscreen/app/util/ClockUtil;
.super Ljava/lang/Object;
.source "ClockUtil.java"


# static fields
.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field public static mAmPmString:Ljava/lang/String;

.field public static mDateString:Ljava/lang/String;

.field public static mIs24Hour:Z

.field public static mTimeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/lockscreen/app/util/ClockUtil;->mIs24Hour:Z

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/htc/lockscreen/app/util/ClockUtil;->mAmPmString:Ljava/lang/String;

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/htc/lockscreen/app/util/ClockUtil;->mTimeString:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/htc/lockscreen/app/util/ClockUtil;->mDateString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateDateTime(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 21
    const-string v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 22
    .local v4, zone:Ljava/util/TimeZone;
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 23
    .local v3, mCalendar:Ljava/util/Calendar;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    sput-boolean v5, Lcom/htc/lockscreen/app/util/ClockUtil;->mIs24Hour:Z

    .line 24
    sget-boolean v5, Lcom/htc/lockscreen/app/util/ClockUtil;->mIs24Hour:Z

    if-eqz v5, :cond_0

    .line 26
    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/lockscreen/app/util/ClockUtil;->mTimeString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    const-string v5, ""

    sput-object v5, Lcom/htc/lockscreen/app/util/ClockUtil;->mAmPmString:Ljava/lang/String;

    .line 41
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, format:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 43
    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/lockscreen/app/util/ClockUtil;->mDateString:Ljava/lang/String;

    .line 46
    :goto_2
    return-void

    .line 28
    .end local v1           #format:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HH:mm"

    invoke-static {v5, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/lockscreen/app/util/ClockUtil;->mTimeString:Ljava/lang/String;

    goto :goto_0

    .line 35
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v5, "h:mm"

    invoke-static {v5, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/lockscreen/app/util/ClockUtil;->mTimeString:Ljava/lang/String;

    .line 36
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v2

    .line 37
    .local v2, hour:I
    const/16 v5, 0xc

    if-lt v2, v5, :cond_1

    const v5, 0x20c0176

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    sput-object v5, Lcom/htc/lockscreen/app/util/ClockUtil;->mAmPmString:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const v5, 0x20c0175

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 45
    .end local v2           #hour:I
    .restart local v1       #format:Ljava/lang/String;
    :cond_2
    const-string v5, "MM/dd/yy"

    invoke-static {v5, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/lockscreen/app/util/ClockUtil;->mDateString:Ljava/lang/String;

    goto :goto_2
.end method
