.class public Lcom/htc/android/worldclock/Timers;
.super Ljava/lang/Object;
.source "Timers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/Timers$TimerData;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.android.worldclock.TimerProvider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field static final EXPIRED_TIME:Ljava/lang/String; = "expired_time"

.field static final STATE:Ljava/lang/String; = "state"

.field private static sTimerKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "expired_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/worldclock/Timers;->sTimerKeys:[Ljava/lang/String;

    .line 30
    const-string v0, "content://com.htc.android.worldclock.TimerProvider/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/worldclock/Timers;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getTimerData(Landroid/content/Context;Lcom/htc/android/worldclock/Timers$TimerData;)V
    .locals 8
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/android/worldclock/Timers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/android/worldclock/Timers;->sTimerKeys:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 77
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/htc/android/worldclock/Timers$TimerData;->state:I

    .line 80
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/htc/android/worldclock/Timers$TimerData;->timeExpired:J

    .line 82
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_1
    return-void
.end method

.method public static setTimerData(Landroid/content/Context;Lcom/htc/android/worldclock/Timers$TimerData;)V
    .locals 11
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 33
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 37
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "state"

    iget v2, p1, Lcom/htc/android/worldclock/Timers$TimerData;->state:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    const-string v1, "expired_time"

    iget-wide v4, p1, Lcom/htc/android/worldclock/Timers$TimerData;->timeExpired:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    sget-object v1, Lcom/htc/android/worldclock/Timers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/android/worldclock/Timers;->sTimerKeys:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 44
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 45
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 48
    .local v6, count:I
    if-le v6, v10, :cond_2

    .line 49
    :try_start_0
    sget-object v1, Lcom/htc/android/worldclock/Timers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    sget-object v1, Lcom/htc/android/worldclock/Timers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 68
    .end local v6           #count:I
    :cond_1
    :goto_1
    return-void

    .line 53
    .restart local v6       #count:I
    :cond_2
    if-nez v6, :cond_3

    .line 54
    :try_start_1
    sget-object v1, Lcom/htc/android/worldclock/Timers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v8

    .line 61
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 56
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    if-ne v6, v10, :cond_0

    .line 57
    :try_start_3
    sget-object v1, Lcom/htc/android/worldclock/Timers;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method
