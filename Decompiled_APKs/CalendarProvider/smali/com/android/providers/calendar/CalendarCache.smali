.class public Lcom/android/providers/calendar/CalendarCache;
.super Ljava/lang/Object;
.source "CalendarCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarCache$CacheException;
    }
.end annotation


# static fields
.field private static final COLUMN_INDEX_KEY:I = 0x0

.field private static final COLUMN_INDEX_VALUE:I = 0x1

.field public static final COLUMN_NAME_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_NAME_VALUE:Ljava/lang/String; = "value"

.field public static final DATABASE_NAME:Ljava/lang/String; = "CalendarCache"

.field public static final DEFAULT_TIMEZONE_DATABASE_VERSION:Ljava/lang/String; = "2009s"

.field public static final KEY_TIMEZONE_DATABASE_VERSION:Ljava/lang/String; = "timezoneDatabaseVersion"

.field public static final KEY_TIMEZONE_INSTANCES:Ljava/lang/String; = "timezoneInstances"

.field public static final KEY_TIMEZONE_INSTANCES_PREVIOUS:Ljava/lang/String; = "timezoneInstancesPrevious"

.field public static final KEY_TIMEZONE_TYPE:Ljava/lang/String; = "timezoneType"

.field private static final TAG:Ljava/lang/String; = "CalendarCache"

.field public static final TIMEZONE_TYPE_AUTO:Ljava/lang/String; = "auto"

.field public static final TIMEZONE_TYPE_HOME:Ljava/lang/String; = "home"

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private final mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarCache;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0
    .parameter "openHelper"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarCache;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 75
    return-void
.end method


# virtual methods
.method public readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/CalendarCache$CacheException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarCache;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 196
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p1}, Lcom/android/providers/calendar/CalendarCache;->readDataLocked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected readDataLocked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "db"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/CalendarCache$CacheException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 211
    new-instance v0, Lcom/android/providers/calendar/CalendarCache$CacheException;

    const-string v1, "Database cannot be null"

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarCache$CacheException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    if-nez p2, :cond_1

    .line 214
    new-instance v0, Lcom/android/providers/calendar/CalendarCache$CacheException;

    const-string v1, "Cannot use null key for read"

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarCache$CacheException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    const/4 v9, 0x0

    .line 219
    .local v9, rowValue:Ljava/lang/String;
    const-string v1, "CalendarCache"

    sget-object v2, Lcom/android/providers/calendar/CalendarCache;->sProjection:[Ljava/lang/String;

    const-string v3, "key=?"

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 222
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 231
    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 232
    const/4 v8, 0x0

    .line 234
    return-object v9

    .line 226
    :cond_3
    :try_start_1
    const-string v0, "CalendarCache"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    const-string v0, "CalendarCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find key = [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 232
    const/4 v8, 0x0

    throw v0
.end method

.method public readTimezoneDatabaseVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    :try_start_0
    const-string v1, "timezoneDatabaseVersion"

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarCache;->readData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Lcom/android/providers/calendar/CalendarCache$CacheException;
    const-string v1, "CalendarCache"

    const-string v2, "Could not read timezone database version from CalendarCache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readTimezoneInstances()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    :try_start_0
    const-string v2, "timezoneInstances"

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarCache;->readData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Lcom/android/providers/calendar/CalendarCache$CacheException;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, localTimezone:Ljava/lang/String;
    const-string v2, "CalendarCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read instances timezone from CalendarCache - using device one: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readTimezoneInstancesPrevious()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    :try_start_0
    const-string v1, "timezoneInstancesPrevious"

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarCache;->readData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Lcom/android/providers/calendar/CalendarCache$CacheException;
    const-string v1, "CalendarCache"

    const-string v2, "Cannot read previous instances timezone from CalendarCache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readTimezoneType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    :try_start_0
    const-string v1, "timezoneType"

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarCache;->readData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Lcom/android/providers/calendar/CalendarCache$CacheException;
    const-string v1, "CalendarCache"

    const-string v2, "Cannot read timezone type from CalendarCache - using AUTO as default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const-string v1, "auto"

    goto :goto_0
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/CalendarCache$CacheException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarCache;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 149
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 151
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/providers/calendar/CalendarCache;->writeDataLocked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 153
    const-string v1, "CalendarCache"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "CalendarCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote (key, value) = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 159
    return-void

    .line 157
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method protected writeDataLocked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/CalendarCache$CacheException;
        }
    .end annotation

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v1, Lcom/android/providers/calendar/CalendarCache$CacheException;

    const-string v2, "Database cannot be null"

    invoke-direct {v1, v2}, Lcom/android/providers/calendar/CalendarCache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_0
    if-nez p2, :cond_1

    .line 176
    new-instance v1, Lcom/android/providers/calendar/CalendarCache$CacheException;

    const-string v2, "Cannot use null key for write"

    invoke-direct {v1, v2}, Lcom/android/providers/calendar/CalendarCache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "CalendarCache"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 185
    return-void
.end method

.method public writeTimezoneDatabaseVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "timezoneDatabaseVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/CalendarCache$CacheException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v0, "timezoneDatabaseVersion"

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/calendar/CalendarCache;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public writeTimezoneInstances(Ljava/lang/String;)V
    .locals 3
    .parameter "timezone"

    .prologue
    .line 106
    :try_start_0
    const-string v1, "timezoneInstances"

    invoke-virtual {p0, v1, p1}, Lcom/android/providers/calendar/CalendarCache;->writeData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Lcom/android/providers/calendar/CalendarCache$CacheException;
    const-string v1, "CalendarCache"

    const-string v2, "Cannot write instances timezone to CalendarCache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeTimezoneInstancesPrevious(Ljava/lang/String;)V
    .locals 3
    .parameter "timezone"

    .prologue
    .line 125
    :try_start_0
    const-string v1, "timezoneInstancesPrevious"

    invoke-virtual {p0, v1, p1}, Lcom/android/providers/calendar/CalendarCache;->writeData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Lcom/android/providers/calendar/CalendarCache$CacheException;
    const-string v1, "CalendarCache"

    const-string v2, "Cannot write previous instance timezone to CalendarCache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeTimezoneType(Ljava/lang/String;)V
    .locals 1
    .parameter "timezoneType"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/CalendarCache$CacheException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "timezoneType"

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/calendar/CalendarCache;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
