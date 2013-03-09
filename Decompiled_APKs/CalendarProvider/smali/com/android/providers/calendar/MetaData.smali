.class public Lcom/android/providers/calendar/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/MetaData$Fields;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INSTANCES_COUNT:[Ljava/lang/String; = null

.field private static final METADATA_INDEX_LOCAL_TIMEZONE:I = 0x0

.field private static final METADATA_INDEX_MAX_INSTANCE:I = 0x2

.field private static final METADATA_INDEX_MIN_INSTANCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MetaData"

.field private static instanceTime:Landroid/text/format/Time;

.field private static final sCalendarMetaDataProjection:[Ljava/lang/String;


# instance fields
.field private mFields:Lcom/android/providers/calendar/MetaData$Fields;

.field private mInitialized:Z

.field private final mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "localTimezone"

    aput-object v1, v0, v3

    const-string v1, "minInstance"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "maxInstance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/MetaData;->sCalendarMetaDataProjection:[Ljava/lang/String;

    .line 228
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "count(_id)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/calendar/MetaData;->INSTANCES_COUNT:[Ljava/lang/String;

    .line 229
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/MetaData;->instanceTime:Landroid/text/format/Time;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .parameter "openHelper"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/providers/calendar/MetaData$Fields;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/MetaData$Fields;-><init>(Lcom/android/providers/calendar/MetaData;)V

    iput-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    .line 77
    iput-object p1, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 78
    return-void
.end method

.method private readLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    .line 138
    const/4 v13, 0x0

    .line 139
    .local v13, timezone:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .local v11, minInstance:J
    const-wide/16 v9, 0x0

    .line 143
    .local v9, maxInstance:J
    const-string v1, "CalendarMetaData"

    sget-object v2, Lcom/android/providers/calendar/MetaData;->sCalendarMetaDataProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 146
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 148
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 149
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 152
    :cond_0
    if-eqz v8, :cond_1

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object v13, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide v11, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 160
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide v9, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    .line 164
    return-void

    .line 152
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public clearInstanceRange()V
    .locals 7

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 268
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 272
    :try_start_0
    iget-boolean v0, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0, v6}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v1, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    .line 276
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 280
    return-void

    .line 278
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public getFields()Lcom/android/providers/calendar/MetaData$Fields;
    .locals 4

    .prologue
    .line 87
    new-instance v1, Lcom/android/providers/calendar/MetaData$Fields;

    invoke-direct {v1, p0}, Lcom/android/providers/calendar/MetaData$Fields;-><init>(Lcom/android/providers/calendar/MetaData;)V

    .line 88
    .local v1, fields:Lcom/android/providers/calendar/MetaData$Fields;
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 93
    :try_start_0
    iget-boolean v2, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v2, :cond_0

    .line 94
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 98
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 99
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 103
    return-object v1

    .line 101
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;
    .locals 4

    .prologue
    .line 117
    new-instance v1, Lcom/android/providers/calendar/MetaData$Fields;

    invoke-direct {v1, p0}, Lcom/android/providers/calendar/MetaData$Fields;-><init>(Lcom/android/providers/calendar/MetaData;)V

    .line 121
    .local v1, fields:Lcom/android/providers/calendar/MetaData$Fields;
    iget-boolean v2, p0, Lcom/android/providers/calendar/MetaData;->mInitialized:Z

    if-nez v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/MetaData;->readLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 127
    iget-object v2, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-wide v2, v2, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    iput-wide v2, v1, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 128
    return-object v1
.end method

.method protected printNumberOfInstances(Ljava/lang/String;JJ)V
    .locals 0
    .parameter "timezone"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 231
    return-void
.end method

.method public write(Ljava/lang/String;JJII)V
    .locals 2
    .parameter "timezone"
    .parameter "begin"
    .parameter "end"
    .parameter "startDay"
    .parameter "endDay"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 181
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    .line 182
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public writeLocked(Ljava/lang/String;JJ)V
    .locals 7
    .parameter "timezone"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    .line 202
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v3, "localTimezone"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v3, "minInstance"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    const-string v3, "maxInstance"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "CalendarMetaData"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 213
    invoke-virtual/range {p0 .. p5}, Lcom/android/providers/calendar/MetaData;->printNumberOfInstances(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object p1, v3, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 224
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide p2, v3, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 225
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-wide p4, v3, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    .line 226
    return-void

    .line 215
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iput-object v5, v3, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    .line 218
    iget-object v3, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    iget-object v4, p0, Lcom/android/providers/calendar/MetaData;->mFields:Lcom/android/providers/calendar/MetaData$Fields;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    iput-wide v5, v3, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    .line 219
    throw v1
.end method
