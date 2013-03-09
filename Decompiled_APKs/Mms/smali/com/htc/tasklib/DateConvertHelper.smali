.class public Lcom/htc/tasklib/DateConvertHelper;
.super Ljava/lang/Object;
.source "DateConvertHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateString(JLjava/util/TimeZone;)Ljava/lang/String;
    .locals 5
    .parameter "ts"
    .parameter "tz"

    .prologue
    .line 16
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 18
    .local v1, inFormat:Ljava/lang/String;
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 19
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    if-nez p2, :cond_0

    .line 20
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    .line 21
    :cond_0
    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 22
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 25
    .local v0, c:Ljava/util/Calendar;
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 27
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getTimestamp(Ljava/lang/String;Ljava/util/TimeZone;)J
    .locals 11
    .parameter "dateString"
    .parameter "tz"

    .prologue
    .line 32
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 33
    .local v3, inFormat:Ljava/lang/String;
    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v4

    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 34
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    if-nez p1, :cond_0

    .line 35
    const-string v7, "UTC"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 36
    :cond_0
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 37
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 38
    const-wide/16 v5, 0x0

    .line 40
    .local v5, ts:J
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 41
    .local v1, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 42
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 44
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #date:Ljava/util/Date;
    :goto_0
    return-wide v5

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
