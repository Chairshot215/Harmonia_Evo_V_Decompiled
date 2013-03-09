.class public Lcom/htc/android/worldclock/StopwatchUtils;
.super Ljava/lang/Object;
.source "StopwatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.android.worldclock.StopwatchProvider"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "content://com.htc.android.worldclock.StopwatchProvider/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/worldclock/StopwatchUtils;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static AddStopwatchLapData(Landroid/content/Context;Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;)V
    .locals 6
    .parameter "context"
    .parameter "data"

    .prologue
    .line 37
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 44
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "lap_id"

    iget v4, p1, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 46
    const-string v3, "lap_total_time"

    iget-wide v4, p1, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_total_time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    const-string v3, "lap_time"

    iget-wide v4, p1, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    :try_start_0
    sget-object v3, Lcom/htc/android/worldclock/StopwatchUtils;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static DeleteStopwatchLapData(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 59
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    sget-object v2, Lcom/htc/android/worldclock/StopwatchUtils;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static LoadStopwatchLapData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 75
    const/4 v6, 0x0

    .line 77
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v8, rets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/android/worldclock/StopwatchUtils;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/android/worldclock/StopwatchProvider;->sStopwatchKeys:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 85
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    :cond_0
    invoke-static {p0, v6}, Lcom/htc/android/worldclock/StopwatchUtils;->cursorToStopwatchInfo(Landroid/content/Context;Landroid/database/Cursor;)Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    move-result-object v9

    .line 88
    .local v9, stopwatchLapInfo:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    if-eqz v9, :cond_1

    .line 89
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 97
    .end local v9           #stopwatchLapInfo:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    :cond_2
    if-eqz v6, :cond_3

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 101
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_3
    :goto_0
    return-object v8

    .line 93
    :catch_0
    move-exception v7

    .line 94
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v6, :cond_3

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 97
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 98
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private static cursorToStopwatchInfo(Landroid/content/Context;Landroid/database/Cursor;)Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    .locals 9
    .parameter "context"
    .parameter "stopwatchCursor"

    .prologue
    .line 105
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, data:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    const/4 v1, 0x0

    .line 108
    .local v1, lap_id:I
    const-wide/16 v2, 0x0

    .line 109
    .local v2, lap_total_time:J
    const-wide/16 v4, 0x0

    .line 111
    .local v4, lap_time:J
    if-eqz p1, :cond_0

    .line 113
    :try_start_0
    const-string v7, "lap_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 114
    const-string v7, "lap_total_time"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 115
    const-string v7, "lap_time"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 121
    :goto_0
    new-instance v0, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    .end local v0           #data:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    invoke-direct/range {v0 .. v5}, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;-><init>(IJJ)V

    .line 123
    .restart local v0       #data:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;
    :cond_0
    return-object v0

    .line 116
    :catch_0
    move-exception v6

    .line 117
    .local v6, e:Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursorToStopwatchInfo() Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method
