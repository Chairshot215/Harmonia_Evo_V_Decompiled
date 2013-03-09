.class public Lcom/htc/android/worldclock/TimerProvider;
.super Landroid/content/ContentProvider;
.source "TimerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/TimerProvider$DbHelper;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.android.worldclock.TimerProvider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DATABASE_NAME:Ljava/lang/String; = "timer.db"

.field private static final DATABASE_VERSION:I = 0x1

.field static final EXPIRED_TIME:Ljava/lang/String; = "expired_time"

.field static final STATE:Ljava/lang/String; = "state"

.field private static final TIMER_TABLE_NAME:Ljava/lang/String; = "timer"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static sTimerKeys:[Ljava/lang/String;


# instance fields
.field private mOpenHelper:Lcom/htc/android/worldclock/TimerProvider$DbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "expired_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/worldclock/TimerProvider;->sTimerKeys:[Ljava/lang/String;

    .line 35
    const-string v0, "content://com.htc.android.worldclock.TimerProvider/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/android/worldclock/TimerProvider;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/htc/android/worldclock/TimerProvider;->sTimerKeys:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 41
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 42
    const-string v2, "delete()"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/htc/android/worldclock/TimerProvider;->mOpenHelper:Lcom/htc/android/worldclock/TimerProvider$DbHelper;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/TimerProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 45
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "timer"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimerProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 47
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 52
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 53
    const-string v0, "getType()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 60
    const-string v5, "insert()"

    invoke-static {v5}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 61
    iget-object v5, p0, Lcom/htc/android/worldclock/TimerProvider;->mOpenHelper:Lcom/htc/android/worldclock/TimerProvider$DbHelper;

    invoke-virtual {v5}, Lcom/htc/android/worldclock/TimerProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "timer"

    invoke-virtual {v0, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 63
    .local v1, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    sget-object v5, Lcom/htc/android/worldclock/TimerProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 65
    .local v3, itemUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimerProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 66
    return-object v3

    .end local v3           #itemUri:Landroid/net/Uri;
    :cond_0
    move-object v3, v4

    .line 63
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 72
    const-string v0, "onCreate()"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/htc/android/worldclock/TimerProvider$DbHelper;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/worldclock/TimerProvider$DbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/TimerProvider;->mOpenHelper:Lcom/htc/android/worldclock/TimerProvider$DbHelper;

    .line 74
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

    .line 80
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 81
    const-string v1, "query()"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/htc/android/worldclock/TimerProvider;->mOpenHelper:Lcom/htc/android/worldclock/TimerProvider$DbHelper;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/TimerProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 85
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "timer"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 90
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimerProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 91
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 97
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 98
    const-string v2, "update()"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/htc/android/worldclock/TimerProvider;->mOpenHelper:Lcom/htc/android/worldclock/TimerProvider$DbHelper;

    invoke-virtual {v2}, Lcom/htc/android/worldclock/TimerProvider$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 102
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "timer"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/android/worldclock/TimerProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 105
    return v0
.end method
