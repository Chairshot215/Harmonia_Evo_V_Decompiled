.class public Lcom/htc/opensense2/album/util/DateTimeManager;
.super Ljava/lang/Object;
.source "DateTimeManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, szFormat:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0
.end method

.method public static getDateString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "lTime"

    .prologue
    .line 12
    const-string v0, "DateTimeManager"

    .line 13
    .local v0, LOG_TAG:Ljava/lang/String;
    const/4 v2, 0x0

    .line 14
    .local v2, szDate:Ljava/lang/String;
    const/4 v3, 0x0

    .line 15
    .local v3, szFormat:Ljava/lang/String;
    new-instance v4, Ljava/sql/Timestamp;

    invoke-direct {v4, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 19
    .local v4, timeStamp:Ljava/sql/Timestamp;
    :try_start_0
    invoke-static {p0}, Lcom/htc/opensense2/album/util/DateTimeManager;->getDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v4}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 28
    :goto_0
    return-object v2

    .line 22
    :catch_0
    move-exception v1

    .line 24
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "DateTimeManager"

    const-string v6, "[DateTimeManager]get date format failed."

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v2, 0x0

    goto :goto_0
.end method
