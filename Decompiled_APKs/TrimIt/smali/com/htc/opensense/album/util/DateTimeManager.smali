.class public Lcom/htc/opensense/album/util/DateTimeManager;
.super Ljava/lang/Object;
.source "DateTimeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 4
    .parameter "context"

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 27
    .local v1, szFormat:Ljava/lang/String;
    const/4 v0, 0x0

    .line 29
    .local v0, dateFormat:Ljava/text/DateFormat;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0           #dateFormat:Ljava/text/DateFormat;
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    .restart local v0       #dateFormat:Ljava/text/DateFormat;
    return-object v0
.end method

.method public static getDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "lTime"

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, szDate:Ljava/lang/String;
    new-instance v1, Ljava/sql/Timestamp;

    invoke-direct {v1, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 20
    .local v1, timeStamp:Ljava/sql/Timestamp;
    invoke-static {p0}, Lcom/htc/opensense/album/util/DateTimeManager;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    return-object v0
.end method
