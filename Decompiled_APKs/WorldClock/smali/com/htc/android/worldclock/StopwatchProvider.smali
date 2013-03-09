.class public Lcom/htc/android/worldclock/StopwatchProvider;
.super Landroid/content/ContentProvider;
.source "StopwatchProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.android.worldclock.StopwatchProvider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "stopwatch.db"

.field private static final DATABASE_VERSION:I = 0x1

.field static final LAP_ID:Ljava/lang/String; = "lap_id"

.field static final LAP_TIME:Ljava/lang/String; = "lap_time"

.field static final LAP_TOTAL_TIME:Ljava/lang/String; = "lap_total_time"

.field private static final STOPWATCH_TABLE_NAME:Ljava/lang/String; = "stopwatch"

.field public static final _ID:Ljava/lang/String; = "_id"

.field public static sStopwatchKeys:[Ljava/lang/String;


# instance fields
.field private mOpenHelper:Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lap_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lap_total_time"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lap_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/worldclock/StopwatchProvider;->sStopwatchKeys:[Ljava/lang/String;

    .line 36
    const-string v0, "content://com.htc.android.worldclock.StopwatchProvider/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/worldclock/StopwatchProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 107
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 60
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 61
    iget-object v2, p0, Lcom/htc/android/worldclock/StopwatchProvider;->mOpenHelper:Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 63
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "stopwatch"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/android/worldclock/StopwatchProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 65
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 99
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 100
    const-string v0, "getType()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 50
    iget-object v5, p0, Lcom/htc/android/worldclock/StopwatchProvider;->mOpenHelper:Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;

    invoke-virtual {v5}, Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 51
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "stopwatch"

    invoke-virtual {v0, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 52
    .local v1, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    sget-object v5, Lcom/htc/android/worldclock/StopwatchProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 54
    .local v3, itemUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/StopwatchProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 55
    return-object v3

    .end local v3           #itemUri:Landroid/net/Uri;
    :cond_0
    move-object v3, v4

    .line 52
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 43
    new-instance v0, Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/StopwatchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/StopwatchProvider;->mOpenHelper:Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 74
    iget-object v1, p0, Lcom/htc/android/worldclock/StopwatchProvider;->mOpenHelper:Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "stopwatch"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 80
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/StopwatchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 81
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 87
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 88
    iget-object v2, p0, Lcom/htc/android/worldclock/StopwatchProvider;->mOpenHelper:Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/StopwatchProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 91
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "stopwatch"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/android/worldclock/StopwatchProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 94
    return v0
.end method
