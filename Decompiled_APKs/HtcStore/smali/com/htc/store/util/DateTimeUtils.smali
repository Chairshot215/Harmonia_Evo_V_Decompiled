.class public Lcom/htc/store/util/DateTimeUtils;
.super Ljava/lang/Object;
.source "DateTimeUtils.java"


# static fields
.field public static DAY:I

.field public static HOUR:I

.field public static MINUTE:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/store/util/DateTimeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/DateTimeUtils;->TAG:Ljava/lang/String;

    .line 15
    const/16 v0, 0x3c

    sput v0, Lcom/htc/store/util/DateTimeUtils;->MINUTE:I

    .line 16
    sget v0, Lcom/htc/store/util/DateTimeUtils;->MINUTE:I

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Lcom/htc/store/util/DateTimeUtils;->HOUR:I

    .line 17
    sget v0, Lcom/htc/store/util/DateTimeUtils;->HOUR:I

    mul-int/lit8 v0, v0, 0x18

    sput v0, Lcom/htc/store/util/DateTimeUtils;->DAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TTL2seconds(Ljava/lang/String;)J
    .locals 9
    .parameter "TTLstring"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .local v2, result:J
    const-string v1, "yyyy.MM.dd G \'at\' HH:mm:ss z"

    .line 59
    .local v1, format:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 60
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 61
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 62
    sget-object v5, Lcom/htc/store/util/DateTimeUtils;->TAG:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "TTL time = "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    const/4 v7, 0x2

    const-string v8, "  inSeconds = "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-wide v2
.end method

.method public static getDateTimeStringFromMillisecond(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "millisecond"

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, dateFormat:Ljava/lang/CharSequence;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateTimeStringFromSecond(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "second"

    .prologue
    .line 74
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/htc/store/util/DateTimeUtils;->getDateTimeStringFromMillisecond(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toSeconds(Ljava/lang/String;)I
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, result:I
    const-string v2, "d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const-string v2, "d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, ss:[Ljava/lang/String;
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/htc/store/util/DateTimeUtils;->DAY:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 25
    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    .line 26
    aget-object p0, v1, v4

    .line 30
    .end local v1           #ss:[Ljava/lang/String;
    :cond_0
    const-string v2, "h"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    const-string v2, "h"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    .restart local v1       #ss:[Ljava/lang/String;
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/htc/store/util/DateTimeUtils;->HOUR:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 33
    aget-object v2, v1, v4

    if-eqz v2, :cond_1

    .line 34
    aget-object p0, v1, v4

    .line 38
    .end local v1           #ss:[Ljava/lang/String;
    :cond_1
    const-string v2, "m"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    const-string v2, "m"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 40
    .restart local v1       #ss:[Ljava/lang/String;
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/htc/store/util/DateTimeUtils;->MINUTE:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 41
    aget-object v2, v1, v4

    if-eqz v2, :cond_2

    .line 42
    aget-object p0, v1, v4

    .line 46
    .end local v1           #ss:[Ljava/lang/String;
    :cond_2
    const-string v2, "s"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    const-string v2, "s"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 48
    .restart local v1       #ss:[Ljava/lang/String;
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 50
    .end local v1           #ss:[Ljava/lang/String;
    :cond_3
    return v0
.end method
