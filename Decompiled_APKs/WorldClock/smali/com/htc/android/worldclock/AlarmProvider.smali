.class public Lcom/htc/android/worldclock/AlarmProvider;
.super Landroid/content/ContentProvider;
.source "AlarmProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/AlarmProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ALARMS:I = 0x1

.field private static final ALARMS_ENABLE_BULK:I = 0x4

.field private static final ALARMS_ID:I = 0x2

.field private static final ALARMS_SNOOZE_BULK:I = 0x5

.field private static final TIMEZONES:I = 0x3

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mTimeZonedb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 52
    sget-object v0, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.alarmclock"

    const-string v2, "alarm"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.alarmclock"

    const-string v2, "alarm/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.alarmclock"

    const-string v2, "timezone"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.alarmclock"

    const-string v2, "alarm_enable_bulk"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.android.alarmclock"

    const-string v2, "alarm_snooze_bulk"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 118
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 119
    return-void
.end method

.method private bulkEnableAlarms(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .parameter "uri"
    .parameter "values"
    .parameter "userWhere"
    .parameter "table"

    .prologue
    .line 256
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 257
    const-string v13, "enabled"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 258
    .local v6, enables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "alarmtime"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 259
    .local v2, alarm_times:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 261
    .local v9, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 263
    .local v11, size:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/worldclock/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 265
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 266
    const/4 v12, 0x0

    .line 269
    .local v12, sum:I
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 271
    .local v3, contentValues:Landroid/content/ContentValues;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v11, :cond_3

    .line 272
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 273
    .local v8, id:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 274
    .local v5, enable:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    .local v1, alarm_time:Ljava/lang/String;
    const-string v13, "-1"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 277
    const-string v13, "enabled"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    :cond_0
    const-string v13, "-1"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 281
    const-string v13, "alarmtime"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "id  = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 285
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "enable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 286
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "alarm_time = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 288
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v3, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 290
    .local v10, numUpdated:I
    if-nez v10, :cond_2

    .line 291
    const-string v13, "[AlarmProvider] bulkEnableAlarms:  update failed "

    invoke-static {v13}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 299
    :goto_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    .line 271
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 294
    :cond_2
    add-int/2addr v12, v10

    goto :goto_1

    .line 302
    .end local v1           #alarm_time:Ljava/lang/String;
    .end local v5           #enable:Ljava/lang/String;
    .end local v8           #id:Ljava/lang/String;
    .end local v10           #numUpdated:I
    :cond_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 305
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 308
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bulkEnableAlarms: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " entries updated"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 309
    return v12

    .line 304
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v7           #i:I
    :catchall_0
    move-exception v13

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 305
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v13
.end method

.method private bulkSnoozeAlarms(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "userWhere"
    .parameter "table"

    .prologue
    .line 313
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 314
    const-string v7, "_id"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 315
    .local v4, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 317
    iget-object v7, p0, Lcom/htc/android/worldclock/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 319
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 320
    const/4 v6, 0x0

    .line 323
    .local v6, sum:I
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 327
    .local v0, contentValues:Landroid/content/ContentValues;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 328
    .local v3, id:Ljava/lang/String;
    const-string v7, "snoozed"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, p4, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 331
    .local v5, numUpdated:I
    if-nez v5, :cond_0

    .line 332
    const-string v7, "[AlarmProvider] bulkSnoozeAlarms:  update failed "

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    .line 340
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 345
    .end local v0           #contentValues:Landroid/content/ContentValues;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #id:Ljava/lang/String;
    .end local v5           #numUpdated:I
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 346
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v7

    .line 335
    .restart local v0       #contentValues:Landroid/content/ContentValues;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #id:Ljava/lang/String;
    .restart local v5       #numUpdated:I
    :cond_0
    add-int/2addr v6, v5

    goto :goto_1

    .line 343
    .end local v3           #id:Ljava/lang/String;
    .end local v5           #numUpdated:I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 346
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 349
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bulkSnoozeAlarms: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " entries updated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 350
    return v6
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 454
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 455
    const/4 v1, 0x0

    .line 457
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/worldclock/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 466
    :goto_0
    if-nez v1, :cond_0

    .line 467
    const/4 v0, 0x0

    .line 498
    :goto_1
    return v0

    .line 458
    :catch_0
    move-exception v2

    .line 459
    .local v2, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V

    goto :goto_0

    .line 460
    .end local v2           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v2

    .line 461
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 462
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v2

    .line 463
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 470
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v0, -0x1

    .line 472
    .local v0, count:I
    const/4 v3, 0x0

    .line 474
    .local v3, segment:Ljava/lang/String;
    sget-object v5, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 488
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot delete from URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 476
    :pswitch_0
    const-string v4, "alarms"

    .line 492
    .local v4, tableName:Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 493
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 494
    :catch_3
    move-exception v2

    .line 495
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const/4 v0, -0x1

    goto :goto_1

    .line 479
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    .end local v4           #tableName:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #segment:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 480
    .restart local v3       #segment:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 485
    :goto_3
    const-string v4, "alarms"

    .line 486
    .restart local v4       #tableName:Ljava/lang/String;
    goto :goto_2

    .line 483
    .end local v4           #tableName:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 176
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 177
    sget-object v1, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 178
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 188
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/alarms"

    .line 186
    :goto_0
    return-object v1

    .line 182
    :pswitch_2
    const-string v1, "vnd.android.cursor.item/alarms"

    goto :goto_0

    .line 184
    :pswitch_3
    const-string v1, "Bulk to enable alarms"

    goto :goto_0

    .line 186
    :pswitch_4
    const-string v1, "Bulk to snooze alarms"

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 355
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 356
    sget-object v9, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 357
    .local v2, match:I
    const/4 v7, 0x0

    .line 359
    .local v7, values:Landroid/content/ContentValues;
    packed-switch v2, :pswitch_data_0

    .line 406
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 361
    :pswitch_0
    if-eqz p2, :cond_a

    .line 362
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #values:Landroid/content/ContentValues;
    invoke-direct {v7, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 367
    .restart local v7       #values:Landroid/content/ContentValues;
    :goto_0
    const-string v9, "hour"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 368
    const-string v9, "hour"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    :cond_0
    const-string v9, "minutes"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 372
    const-string v9, "minutes"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    :cond_1
    const-string v9, "daysofweek"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 376
    const-string v9, "daysofweek"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    :cond_2
    const-string v9, "alarmtime"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 380
    const-string v9, "alarmtime"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    :cond_3
    const-string v9, "enabled"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 384
    const-string v9, "enabled"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    :cond_4
    const-string v9, "vibrate"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 388
    const-string v9, "vibrate"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    :cond_5
    const-string v9, "message"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 392
    const-string v9, "message"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_6
    const-string v9, "alert"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 396
    const-string v9, "alert"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_7
    const-string v9, "snoozed"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 400
    const-string v9, "snoozed"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    :cond_8
    const-string v6, "alarms"

    .line 409
    .local v6, tableName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 411
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v9, p0, Lcom/htc/android/worldclock/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 420
    :goto_1
    if-nez v0, :cond_b

    move-object v3, v8

    .line 449
    :cond_9
    :goto_2
    return-object v3

    .line 364
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #tableName:Ljava/lang/String;
    :cond_a
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #values:Landroid/content/ContentValues;
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .restart local v7       #values:Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 412
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6       #tableName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 413
    .local v1, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V

    goto :goto_1

    .line 414
    .end local v1           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v1

    .line 415
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1

    .line 416
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v1

    .line 417
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 424
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_b
    const-wide/16 v4, -0x1

    .line 426
    .local v4, rowId:J
    :try_start_1
    const-string v9, "message"

    invoke-virtual {v0, v6, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v4

    .line 435
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-gez v9, :cond_c

    move-object v3, v8

    .line 437
    goto :goto_2

    .line 427
    :catch_3
    move-exception v1

    .line 428
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    move-object v3, v8

    .line 429
    goto :goto_2

    .line 430
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_4
    move-exception v1

    .line 431
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    move-object v3, v8

    .line 432
    goto :goto_2

    .line 439
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Added alarm rowId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 441
    const/4 v3, 0x0

    .line 442
    .local v3, newUrl:Landroid/net/Uri;
    if-ne v2, v12, :cond_d

    .line 443
    sget-object v9, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 445
    :cond_d
    if-eqz v3, :cond_9

    .line 446
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v3, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 124
    new-instance v0, Lcom/htc/android/worldclock/AlarmProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/worldclock/AlarmProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 132
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 137
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 138
    .local v8, match:I
    packed-switch v8, :pswitch_data_0

    .line 159
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 141
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "alarms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 162
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 165
    .local v9, ret:Landroid/database/Cursor;
    if-nez v9, :cond_3

    .line 166
    const-string v2, "Alarms.query: failed"

    invoke-static {v2}, Lcom/htc/android/worldclock/htclog/HtcLog;->w(Ljava/lang/String;)V

    :goto_1
    move-object v5, v9

    .line 171
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #ret:Landroid/database/Cursor;
    :cond_0
    :goto_2
    return-object v5

    .line 144
    .restart local v0       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 145
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "alarms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 146
    const-string v2, "_id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_2
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmProvider;->mTimeZonedb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmProvider;->mTimeZonedb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 151
    :cond_1
    const-string v2, "/system/etc/timezones.db"

    invoke-static {v2, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmProvider;->mTimeZonedb:Landroid/database/sqlite/SQLiteDatabase;

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmProvider;->mTimeZonedb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmProvider;->mTimeZonedb:Landroid/database/sqlite/SQLiteDatabase;

    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "timezone"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_2

    .line 168
    .restart local v0       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #ret:Landroid/database/Cursor;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 194
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 195
    const/4 v0, -0x1

    .line 196
    .local v0, count:I
    const-wide/16 v4, 0x0

    .line 198
    .local v4, rowId:J
    sget-object v8, Lcom/htc/android/worldclock/AlarmProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 199
    .local v3, match:I
    const/4 v1, 0x0

    .line 202
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v8, p0, Lcom/htc/android/worldclock/AlarmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 211
    :goto_0
    if-nez v1, :cond_0

    .line 212
    const/4 v8, -0x1

    .line 252
    :goto_1
    return v8

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v2           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v2

    .line 206
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v2

    .line 208
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 242
    :pswitch_0
    const/4 v7, 0x0

    .line 244
    .local v7, tableName:Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v7, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** notifyChange() rowId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    move v8, v0

    .line 252
    goto :goto_1

    .line 217
    .end local v7           #tableName:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 218
    .local v6, segment:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 219
    const-string v7, "alarms"

    .line 221
    .restart local v7       #tableName:Ljava/lang/String;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v7, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 222
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*** notifyChange() rowId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 224
    :catch_3
    move-exception v2

    .line 225
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2

    .line 231
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    .end local v6           #segment:Ljava/lang/String;
    .end local v7           #tableName:Ljava/lang/String;
    :pswitch_2
    const-string v7, "alarms"

    .line 232
    .restart local v7       #tableName:Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/htc/android/worldclock/AlarmProvider;->bulkEnableAlarms(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 233
    goto :goto_2

    .line 237
    .end local v7           #tableName:Ljava/lang/String;
    :pswitch_3
    const-string v7, "alarms"

    .line 238
    .restart local v7       #tableName:Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/htc/android/worldclock/AlarmProvider;->bulkSnoozeAlarms(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 239
    goto :goto_2

    .line 247
    :catch_4
    move-exception v2

    .line 248
    .restart local v2       #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_2

    .line 215
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
