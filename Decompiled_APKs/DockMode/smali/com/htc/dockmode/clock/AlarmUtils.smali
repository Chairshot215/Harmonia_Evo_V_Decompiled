.class public Lcom/htc/dockmode/clock/AlarmUtils;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# static fields
.field public static final ACTION_NEXT_ALARM:Ljava/lang/String; = "com.htc.intent.action.next_alarm"

.field public static final NEXT_ALARM_TIME:Ljava/lang/String; = "next_alarm_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "atTimeInMillis"

    .prologue
    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 16
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 17
    invoke-static {p0, v0}, Lcom/htc/dockmode/clock/AlarmUtils;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "c"

    .prologue
    .line 22
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static getNextAlarm(Landroid/content/Context;)J
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_time"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
