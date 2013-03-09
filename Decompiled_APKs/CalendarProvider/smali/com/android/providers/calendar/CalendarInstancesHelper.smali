.class public Lcom/android/providers/calendar/CalendarInstancesHelper;
.super Ljava/lang/Object;
.source "CalendarInstancesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;,
        Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;
    }
.end annotation


# static fields
.field private static final EXPAND_COLUMNS:[Ljava/lang/String; = null

.field private static final MAX_ASSUMED_DURATION:I = 0x240c8400

.field private static final SQL_WHERE_GET_EVENTS_ENTRIES:Ljava/lang/String; = "((dtstart <= ? ) OR (originalInstanceTime IS NOT NULL AND originalInstanceTime <= ? AND originalInstanceTime >= ?)) AND (sync_events != ?) AND (lastSynced = ?)"

.field private static final SQL_WHERE_ID_FROM_INSTANCES_NOT_SYNCED:Ljava/lang/String; = "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._id=? OR Events.original_id=?)"

.field private static final SQL_WHERE_ID_FROM_INSTANCES_SYNCED:Ljava/lang/String; = "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._sync_id=? OR Events.original_sync_id=?)"

.field private static final TAG:Ljava/lang/String; = "CalInstances"


# instance fields
.field private mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

.field private mMetaData:Lcom/android/providers/calendar/MetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->EXPAND_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/calendar/CalendarDatabaseHelper;Lcom/android/providers/calendar/MetaData;)V
    .locals 2
    .parameter "calendarDbHelper"
    .parameter "metaData"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 135
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    iput-object p2, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mMetaData:Lcom/android/providers/calendar/MetaData;

    .line 137
    new-instance v0, Lcom/android/providers/calendar/CalendarCache;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarCache;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    .line 138
    return-void
.end method

.method static computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V
    .locals 6
    .parameter "begin"
    .parameter "end"
    .parameter "local"
    .parameter "values"

    .prologue
    .line 905
    invoke-virtual {p4, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 906
    iget-wide v4, p4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 907
    .local v2, startDay:I
    iget v4, p4, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p4, Landroid/text/format/Time;->minute:I

    add-int v3, v4, v5

    .line 909
    .local v3, startMinute:I
    invoke-virtual {p4, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 910
    iget-wide v4, p4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 911
    .local v0, endDay:I
    iget v4, p4, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p4, Landroid/text/format/Time;->minute:I

    add-int v1, v4, v5

    .line 917
    .local v1, endMinute:I
    if-nez v1, :cond_0

    if-le v0, v2, :cond_0

    .line 918
    const/16 v1, 0x5a0

    .line 919
    add-int/lit8 v0, v0, -0x1

    .line 922
    :cond_0
    const-string v4, "startDay"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    const-string v4, "endDay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 924
    const-string v4, "startMinute"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 925
    const-string v4, "endMinute"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 926
    return-void
.end method

.method private static dumpInstancesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 932
    const-string v1, "Instances"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 933
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {v8}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    .line 934
    return-void
.end method

.method private getEntries(JJ)Landroid/database/Cursor;
    .locals 11
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 577
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 578
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 579
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 581
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 582
    .local v8, beginString:Ljava/lang/String;
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 600
    .local v10, endString:Ljava/lang/String;
    const-string v1, "((dtstart <= ? ) OR (originalInstanceTime IS NOT NULL AND originalInstanceTime <= ? AND originalInstanceTime >= ?)) AND (sync_events != ?) AND (lastSynced = ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 601
    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v10, v4, v1

    const/4 v1, 0x2

    const-wide/32 v2, 0x240c8400

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v4, v1

    .line 609
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/CalendarInstancesHelper;->EXPAND_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 611
    .local v9, c:Landroid/database/Cursor;
    const-string v1, "CalInstances"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    const-string v1, "CalInstances"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance expansion:  got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    return-object v9
.end method

.method private static getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "db"
    .parameter "rowId"
    .parameter "columnName"

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 9
    .parameter "recurrenceSyncId"
    .parameter "rowId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 849
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 851
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 852
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 854
    if-nez p1, :cond_1

    .line 855
    const-string v8, "_id=?"

    .line 856
    .local v8, where:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 857
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 871
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_0
    const-string v1, "CalInstances"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    const-string v1, "CalInstances"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving events to expand: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/CalendarInstancesHelper;->EXPAND_COLUMNS:[Ljava/lang/String;

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 862
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_1
    const-string v8, "(_sync_id=? OR original_sync_id=?) AND lastSynced = ?"

    .line 864
    .restart local v8       #where:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 865
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    aput-object p1, v4, v5

    const-string v1, "0"

    aput-object v1, v4, v6

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_0
.end method

.method static getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "syncId"
    .parameter "calendarId"

    .prologue
    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 17
    .parameter "values"
    .parameter "rowId"
    .parameter "db"

    .prologue
    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v3}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v11

    .line 761
    .local v11, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v8

    .line 764
    .local v8, instancesTimezone:Ljava/lang/String;
    const-string v3, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 765
    .local v13, originalSyncId:Ljava/lang/String;
    if-nez v13, :cond_0

    .line 766
    const-string v3, "original_sync_id"

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 770
    :cond_0
    if-eqz v13, :cond_4

    .line 772
    move-object v15, v13

    .line 786
    .local v15, recurrenceSyncId:Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v15, :cond_6

    .line 790
    const-string v3, "original_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 791
    .local v12, originalId:Ljava/lang/String;
    if-nez v12, :cond_2

    .line 793
    const-string v3, "original_id"

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 796
    :cond_2
    if-eqz v12, :cond_5

    .line 798
    move-object v14, v12

    .line 806
    .local v14, recurrenceId:Ljava/lang/String;
    :goto_1
    const-string v16, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._id=? OR Events.original_id=?)"

    .line 807
    .local v16, where:Ljava/lang/String;
    const-string v3, "Instances"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const/4 v5, 0x1

    aput-object v14, v4, v5

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 825
    .end local v12           #originalId:Ljava/lang/String;
    .end local v14           #recurrenceId:Ljava/lang/String;
    .local v10, delCount:I
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v15, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v9

    .line 827
    .local v9, entries:Landroid/database/Cursor;
    :try_start_0
    iget-wide v4, v11, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iget-wide v6, v11, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/calendar/CalendarInstancesHelper;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    if-eqz v9, :cond_3

    .line 831
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 834
    :cond_3
    return-void

    .line 777
    .end local v9           #entries:Landroid/database/Cursor;
    .end local v10           #delCount:I
    .end local v15           #recurrenceSyncId:Ljava/lang/String;
    .end local v16           #where:Ljava/lang/String;
    :cond_4
    const-string v3, "_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 778
    .restart local v15       #recurrenceSyncId:Ljava/lang/String;
    if-nez v15, :cond_1

    .line 780
    const-string v3, "_sync_id"

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 801
    .restart local v12       #originalId:Ljava/lang/String;
    :cond_5
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #recurrenceId:Ljava/lang/String;
    goto :goto_1

    .line 814
    .end local v12           #originalId:Ljava/lang/String;
    .end local v14           #recurrenceId:Ljava/lang/String;
    :cond_6
    const-string v16, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._sync_id=? OR Events.original_sync_id=?)"

    .line 815
    .restart local v16       #where:Ljava/lang/String;
    const-string v3, "Instances"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    const/4 v5, 0x1

    aput-object v15, v4, v5

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .restart local v10       #delCount:I
    goto :goto_2

    .line 830
    .restart local v9       #entries:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_7

    .line 831
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v3
.end method


# virtual methods
.method protected expandInstanceRangeLocked(JJLjava/lang/String;)V
    .locals 7
    .parameter "begin"
    .parameter "end"
    .parameter "localTimezone"

    .prologue
    .line 552
    const-string v0, "CalInstances"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const-string v0, "CalInstances"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expanding events between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEntries(JJ)Landroid/database/Cursor;

    move-result-object v6

    .local v6, entries:Landroid/database/Cursor;
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 558
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarInstancesHelper;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    if-eqz v6, :cond_1

    .line 561
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_1
    return-void

    .line 560
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 561
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method protected performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    .locals 77
    .parameter "begin"
    .parameter "end"
    .parameter "localTimezone"
    .parameter "entries"

    .prologue
    .line 166
    new-instance v4, Lcom/android/calendarcommon/RecurrenceProcessor;

    invoke-direct {v4}, Lcom/android/calendarcommon/RecurrenceProcessor;-><init>()V

    .line 170
    .local v4, rp:Lcom/android/calendarcommon/RecurrenceProcessor;
    const-string v19, "ORIGINAL_EVENT_AND_CALENDAR"

    .line 172
    .local v19, ORIGINAL_EVENT_AND_CALENDAR:Ljava/lang/String;
    const-string v11, "eventStatus"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v70

    .line 173
    .local v70, statusColumn:I
    const-string v11, "dtstart"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 174
    .local v32, dtstartColumn:I
    const-string v11, "dtend"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 175
    .local v31, dtendColumn:I
    const-string v11, "eventTimezone"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 176
    .local v41, eventTimezoneColumn:I
    const-string v11, "duration"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 177
    .local v34, durationColumn:I
    const-string v11, "rrule"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v67

    .line 178
    .local v67, rruleColumn:I
    const-string v11, "rdate"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v65

    .line 179
    .local v65, rdateColumn:I
    const-string v11, "exrule"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 180
    .local v44, exruleColumn:I
    const-string v11, "exdate"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 181
    .local v42, exdateColumn:I
    const-string v11, "allDay"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 182
    .local v21, allDayColumn:I
    const-string v11, "_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v49

    .line 183
    .local v49, idColumn:I
    const-string v11, "_sync_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v72

    .line 184
    .local v72, syncIdColumn:I
    const-string v11, "original_sync_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v56

    .line 185
    .local v56, originalEventColumn:I
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v58

    .line 186
    .local v58, originalInstanceTimeColumn:I
    const-string v11, "calendar_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 187
    .local v27, calendarIdColumn:I
    const-string v11, "deleted"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 190
    .local v30, deletedColumn:I
    new-instance v50, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;

    invoke-direct/range {v50 .. v50}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;-><init>()V

    .line 193
    .local v50, instancesMap:Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;
    new-instance v33, Lcom/android/providers/calendar/Duration;

    invoke-direct/range {v33 .. v33}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 194
    .local v33, duration:Lcom/android/providers/calendar/Duration;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 209
    .local v5, eventTime:Landroid/text/format/Time;
    :cond_0
    :goto_0
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_18

    .line 211
    const/4 v12, 0x0

    .line 213
    .local v12, initialValues:Landroid/content/ContentValues;
    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_5

    const/16 v20, 0x1

    .line 215
    .local v20, allDay:Z
    :goto_1
    move-object/from16 v0, p6

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 216
    .local v40, eventTimezone:Ljava/lang/String;
    if-nez v20, :cond_1

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 220
    :cond_1
    const-string v40, "UTC"

    .line 223
    :cond_2
    move-object/from16 v0, p6

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 224
    .local v13, dtstartMillis:J
    move-object/from16 v0, p6

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    .line 227
    .local v39, eventId:Ljava/lang/Long;
    move-object/from16 v0, p6

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/calendarcommon/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v37

    .line 228
    .local v37, durationStr:Ljava/lang/String;
    if-eqz v37, :cond_3

    .line 230
    :try_start_1
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/calendarcommon/DateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 247
    :cond_3
    :goto_2
    :try_start_2
    move-object/from16 v0, p6

    move/from16 v1, v72

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v71

    .line 248
    .local v71, syncId:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 250
    .local v55, originalEvent:Ljava/lang/String;
    const-wide/16 v59, -0x1

    .line 251
    .local v59, originalInstanceTimeMillis:J
    move-object/from16 v0, p6

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 252
    move-object/from16 v0, p6

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v59

    .line 254
    :cond_4
    move-object/from16 v0, p6

    move/from16 v1, v70

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v69

    .line 255
    .local v69, status:I
    move-object/from16 v0, p6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_7

    const/16 v29, 0x1

    .line 257
    .local v29, deleted:Z
    :goto_3
    move-object/from16 v0, p6

    move/from16 v1, v67

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 258
    .local v68, rruleStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v65

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v66

    .line 259
    .local v66, rdateStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 260
    .local v45, exruleStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 261
    .local v43, exdateStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 263
    .local v25, calendarId:J
    move-object/from16 v0, v71

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/calendarcommon/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v73

    .line 265
    .local v73, syncIdKey:Ljava/lang/String;
    const/4 v6, 0x0

    .line 267
    .local v6, recur:Lcom/android/calendarcommon/RecurrenceSet;
    :try_start_3
    new-instance v6, Lcom/android/calendarcommon/RecurrenceSet;

    .end local v6           #recur:Lcom/android/calendarcommon/RecurrenceSet;
    move-object/from16 v0, v68

    move-object/from16 v1, v66

    move-object/from16 v2, v45

    move-object/from16 v3, v43

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/calendarcommon/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/calendarcommon/DateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 276
    .restart local v6       #recur:Lcom/android/calendarcommon/RecurrenceSet;
    if-eqz v6, :cond_10

    :try_start_4
    invoke-virtual {v6}, Lcom/android/calendarcommon/RecurrenceSet;->hasRecurrence()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 279
    const/4 v11, 0x2

    move/from16 v0, v69

    if-ne v0, v11, :cond_8

    .line 281
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 282
    const-string v11, "CalendarProvider2"

    const-string v15, "Found canceled recurring event in Events table.  Ignoring."

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/calendarcommon/DateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 432
    .end local v6           #recur:Lcom/android/calendarcommon/RecurrenceSet;
    .end local v13           #dtstartMillis:J
    .end local v20           #allDay:Z
    .end local v25           #calendarId:J
    .end local v29           #deleted:Z
    .end local v37           #durationStr:Ljava/lang/String;
    .end local v39           #eventId:Ljava/lang/Long;
    .end local v40           #eventTimezone:Ljava/lang/String;
    .end local v43           #exdateStr:Ljava/lang/String;
    .end local v45           #exruleStr:Ljava/lang/String;
    .end local v55           #originalEvent:Ljava/lang/String;
    .end local v59           #originalInstanceTimeMillis:J
    .end local v66           #rdateStr:Ljava/lang/String;
    .end local v68           #rruleStr:Ljava/lang/String;
    .end local v69           #status:I
    .end local v71           #syncId:Ljava/lang/String;
    .end local v73           #syncIdKey:Ljava/lang/String;
    :catch_0
    move-exception v38

    .line 433
    .local v38, e:Lcom/android/calendarcommon/DateException;
    :goto_4
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 434
    const-string v11, "CalendarProvider2"

    const-string v15, "RecurrenceProcessor error "

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 213
    .end local v38           #e:Lcom/android/calendarcommon/DateException;
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 232
    .restart local v13       #dtstartMillis:J
    .restart local v20       #allDay:Z
    .restart local v37       #durationStr:Ljava/lang/String;
    .restart local v39       #eventId:Ljava/lang/Long;
    .restart local v40       #eventTimezone:Ljava/lang/String;
    :catch_1
    move-exception v38

    .line 233
    .restart local v38       #e:Lcom/android/calendarcommon/DateException;
    :try_start_5
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 234
    const-string v11, "CalendarProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error parsing duration for event "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :cond_6
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 238
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 239
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->days:I

    .line 240
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->hours:I

    .line 241
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 242
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 243
    const-string v37, "+P0S"

    goto/16 :goto_2

    .line 255
    .end local v38           #e:Lcom/android/calendarcommon/DateException;
    .restart local v55       #originalEvent:Ljava/lang/String;
    .restart local v59       #originalInstanceTimeMillis:J
    .restart local v69       #status:I
    .restart local v71       #syncId:Ljava/lang/String;
    :cond_7
    const/16 v29, 0x0

    goto/16 :goto_3

    .line 268
    .restart local v25       #calendarId:J
    .restart local v29       #deleted:Z
    .restart local v43       #exdateStr:Ljava/lang/String;
    .restart local v45       #exruleStr:Ljava/lang/String;
    .restart local v66       #rdateStr:Ljava/lang/String;
    .restart local v68       #rruleStr:Ljava/lang/String;
    .restart local v73       #syncIdKey:Ljava/lang/String;
    :catch_2
    move-exception v38

    .line 269
    .local v38, e:Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 270
    const-string v11, "CalendarProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not parse RRULE recurrence string: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v68

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Lcom/android/calendarcommon/DateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 436
    .end local v13           #dtstartMillis:J
    .end local v20           #allDay:Z
    .end local v25           #calendarId:J
    .end local v29           #deleted:Z
    .end local v37           #durationStr:Ljava/lang/String;
    .end local v38           #e:Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
    .end local v39           #eventId:Ljava/lang/Long;
    .end local v40           #eventTimezone:Ljava/lang/String;
    .end local v43           #exdateStr:Ljava/lang/String;
    .end local v45           #exruleStr:Ljava/lang/String;
    .end local v55           #originalEvent:Ljava/lang/String;
    .end local v59           #originalInstanceTimeMillis:J
    .end local v66           #rdateStr:Ljava/lang/String;
    .end local v68           #rruleStr:Ljava/lang/String;
    .end local v69           #status:I
    .end local v71           #syncId:Ljava/lang/String;
    .end local v73           #syncIdKey:Ljava/lang/String;
    :catch_3
    move-exception v38

    .line 437
    .local v38, e:Landroid/util/TimeFormatException;
    :goto_5
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 438
    const-string v11, "CalendarProvider2"

    const-string v15, "RecurrenceProcessor error "

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 287
    .end local v38           #e:Landroid/util/TimeFormatException;
    .restart local v6       #recur:Lcom/android/calendarcommon/RecurrenceSet;
    .restart local v13       #dtstartMillis:J
    .restart local v20       #allDay:Z
    .restart local v25       #calendarId:J
    .restart local v29       #deleted:Z
    .restart local v37       #durationStr:Ljava/lang/String;
    .restart local v39       #eventId:Ljava/lang/Long;
    .restart local v40       #eventTimezone:Ljava/lang/String;
    .restart local v43       #exdateStr:Ljava/lang/String;
    .restart local v45       #exruleStr:Ljava/lang/String;
    .restart local v55       #originalEvent:Ljava/lang/String;
    .restart local v59       #originalInstanceTimeMillis:J
    .restart local v66       #rdateStr:Ljava/lang/String;
    .restart local v68       #rruleStr:Ljava/lang/String;
    .restart local v69       #status:I
    .restart local v71       #syncId:Ljava/lang/String;
    .restart local v73       #syncIdKey:Ljava/lang/String;
    :cond_8
    if-eqz v29, :cond_9

    .line 288
    :try_start_6
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x3

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 289
    const-string v11, "CalendarProvider2"

    const-string v15, "Found deleted recurring event in Events table.  Ignoring."

    invoke-static {v11, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 296
    :cond_9
    move-object/from16 v0, v40

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 297
    invoke-virtual {v5, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 298
    move/from16 v0, v20

    iput-boolean v0, v5, Landroid/text/format/Time;->allDay:Z

    .line 300
    if-nez v37, :cond_b

    .line 302
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 303
    const-string v11, "CalendarProvider2"

    const-string v15, "Repeating event has no duration -- should not happen."

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_a
    if-eqz v20, :cond_c

    .line 308
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 309
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 310
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->days:I

    .line 311
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->hours:I

    .line 312
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 313
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 314
    const-string v37, "+P1D"
    :try_end_6
    .catch Lcom/android/calendarcommon/DateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_6 .. :try_end_6} :catch_3

    .line 334
    :cond_b
    :goto_6
    const/16 v28, 0x0

    .local v28, dates:[J
    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    .line 337
    :try_start_7
    invoke-virtual/range {v4 .. v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/android/calendarcommon/DateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v28

    .line 350
    if-eqz v20, :cond_e

    .line 351
    :try_start_8
    const-string v11, "UTC"

    iput-object v11, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 356
    :goto_7
    invoke-virtual/range {v33 .. v33}, Lcom/android/providers/calendar/Duration;->getMillis()J

    move-result-wide v35

    .line 357
    .local v35, durationMillis:J
    move-object/from16 v22, v28

    .local v22, arr$:[J
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v52, v0
    :try_end_8
    .catch Lcom/android/calendarcommon/DateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_8 .. :try_end_8} :catch_3

    .local v52, len$:I
    const/16 v46, 0x0

    .local v46, i$:I
    move-object/from16 v18, v12

    .end local v12           #initialValues:Landroid/content/ContentValues;
    .local v18, initialValues:Landroid/content/ContentValues;
    :goto_8
    move/from16 v0, v46

    move/from16 v1, v52

    if-ge v0, v1, :cond_f

    :try_start_9
    aget-wide v7, v22, v46

    .line 358
    .local v7, date:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_9
    .catch Lcom/android/calendarcommon/DateException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Landroid/util/TimeFormatException; {:try_start_9 .. :try_end_9} :catch_6

    .line 359
    .end local v18           #initialValues:Landroid/content/ContentValues;
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    :try_start_a
    const-string v11, "event_id"

    move-object/from16 v0, v39

    invoke-virtual {v12, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    const-string v11, "begin"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    add-long v9, v7, v35

    .line 363
    .local v9, dtendMillis:J
    const-string v11, "end"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v11, v5

    .line 365
    invoke-static/range {v7 .. v12}, Lcom/android/providers/calendar/CalendarInstancesHelper;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 367
    move-object/from16 v0, v50

    move-object/from16 v1, v73

    invoke-virtual {v0, v1, v12}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 357
    add-int/lit8 v46, v46, 0x1

    move-object/from16 v18, v12

    .end local v12           #initialValues:Landroid/content/ContentValues;
    .restart local v18       #initialValues:Landroid/content/ContentValues;
    goto :goto_8

    .line 318
    .end local v7           #date:J
    .end local v9           #dtendMillis:J
    .end local v18           #initialValues:Landroid/content/ContentValues;
    .end local v22           #arr$:[J
    .end local v28           #dates:[J
    .end local v35           #durationMillis:J
    .end local v46           #i$:I
    .end local v52           #len$:I
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    :cond_c
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 319
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 320
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->days:I

    .line 321
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->hours:I

    .line 322
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 323
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_d

    .line 324
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 325
    .restart local v9       #dtendMillis:J
    sub-long v15, v9, v13

    const-wide/16 v75, 0x3e8

    div-long v15, v15, v75

    long-to-int v11, v15

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 326
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+P"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v33

    iget v15, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "S"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 327
    goto/16 :goto_6

    .line 328
    .end local v9           #dtendMillis:J
    :cond_d
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 329
    const-string v37, "+P0S"

    goto/16 :goto_6

    .line 338
    .restart local v28       #dates:[J
    :catch_4
    move-exception v48

    .line 339
    .local v48, iae:Ljava/lang/IllegalArgumentException;
    const-string v11, "CalInstances"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rp.expand error!!!("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {v48 .. v48}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v11, "CalInstances"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rruleStr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v68

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", rdateStr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v66

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v11, "CalInstances"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "exruleStr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", exdateStr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v11, "CalInstances"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "syncIdKey:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v73

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 353
    .end local v48           #iae:Ljava/lang/IllegalArgumentException;
    :cond_e
    move-object/from16 v0, p5

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto/16 :goto_7

    .end local v12           #initialValues:Landroid/content/ContentValues;
    .restart local v18       #initialValues:Landroid/content/ContentValues;
    .restart local v22       #arr$:[J
    .restart local v35       #durationMillis:J
    .restart local v46       #i$:I
    .restart local v52       #len$:I
    :cond_f
    move-object/from16 v12, v18

    .line 369
    .end local v18           #initialValues:Landroid/content/ContentValues;
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 371
    .end local v22           #arr$:[J
    .end local v28           #dates:[J
    .end local v35           #durationMillis:J
    .end local v46           #i$:I
    .end local v52           #len$:I
    :cond_10
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V
    :try_end_a
    .catch Lcom/android/calendarcommon/DateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_a .. :try_end_a} :catch_3

    .line 377
    .end local v12           #initialValues:Landroid/content/ContentValues;
    .restart local v18       #initialValues:Landroid/content/ContentValues;
    if-eqz v55, :cond_11

    const-wide/16 v15, -0x1

    cmp-long v11, v59, v15

    if-eqz v11, :cond_11

    .line 381
    :try_start_b
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v55

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v11, "originalInstanceTime"

    invoke-static/range {v59 .. v60}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 385
    const-string v11, "eventStatus"

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    :cond_11
    move-wide v9, v13

    .line 389
    .restart local v9       #dtendMillis:J
    if-nez v37, :cond_15

    .line 390
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_12

    .line 391
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 402
    :cond_12
    :goto_9
    cmp-long v11, v9, p1

    if-ltz v11, :cond_13

    cmp-long v11, v13, p3

    if-lez v11, :cond_14

    .line 403
    :cond_13
    if-eqz v55, :cond_16

    const-wide/16 v15, -0x1

    cmp-long v11, v59, v15

    if-eqz v11, :cond_16

    .line 404
    const-string v11, "eventStatus"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    :cond_14
    const-string v11, "event_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    const-string v11, "begin"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    const-string v11, "end"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    const-string v11, "deleted"

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 422
    if-eqz v20, :cond_17

    .line 423
    const-string v11, "UTC"

    iput-object v11, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_a
    move-wide v15, v9

    move-object/from16 v17, v5

    .line 427
    invoke-static/range {v13 .. v18}, Lcom/android/providers/calendar/CalendarInstancesHelper;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 430
    move-object/from16 v0, v50

    move-object/from16 v1, v73

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    move-object/from16 v12, v18

    .end local v18           #initialValues:Landroid/content/ContentValues;
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_0

    .line 394
    .end local v12           #initialValues:Landroid/content/ContentValues;
    .restart local v18       #initialValues:Landroid/content/ContentValues;
    :cond_15
    move-object/from16 v0, v33

    invoke-virtual {v0, v13, v14}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v9

    goto :goto_9

    .line 406
    :cond_16
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    goto/16 :goto_0

    .line 425
    :cond_17
    move-object/from16 v0, p5

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;
    :try_end_b
    .catch Lcom/android/calendarcommon/DateException; {:try_start_b .. :try_end_b} :catch_5
    .catch Landroid/util/TimeFormatException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_a

    .line 432
    .end local v9           #dtendMillis:J
    :catch_5
    move-exception v38

    move-object/from16 v12, v18

    .end local v18           #initialValues:Landroid/content/ContentValues;
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_4

    .line 465
    .end local v6           #recur:Lcom/android/calendarcommon/RecurrenceSet;
    .end local v12           #initialValues:Landroid/content/ContentValues;
    .end local v13           #dtstartMillis:J
    .end local v20           #allDay:Z
    .end local v25           #calendarId:J
    .end local v29           #deleted:Z
    .end local v37           #durationStr:Ljava/lang/String;
    .end local v39           #eventId:Ljava/lang/Long;
    .end local v40           #eventTimezone:Ljava/lang/String;
    .end local v43           #exdateStr:Ljava/lang/String;
    .end local v45           #exruleStr:Ljava/lang/String;
    .end local v55           #originalEvent:Ljava/lang/String;
    .end local v59           #originalInstanceTimeMillis:J
    .end local v66           #rdateStr:Ljava/lang/String;
    .end local v68           #rruleStr:Ljava/lang/String;
    .end local v69           #status:I
    .end local v71           #syncId:Ljava/lang/String;
    .end local v73           #syncIdKey:Ljava/lang/String;
    :cond_18
    invoke-virtual/range {v50 .. v50}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->keySet()Ljava/util/Set;

    move-result-object v51

    .line 466
    .local v51, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v51 .. v51}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_19
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/String;

    .line 467
    .restart local v73       #syncIdKey:Ljava/lang/String;
    move-object/from16 v0, v50

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 468
    .local v53, list:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    invoke-virtual/range {v53 .. v53}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .local v47, i$:Ljava/util/Iterator;
    :cond_1a
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/content/ContentValues;

    .line 472
    .local v74, values:Landroid/content/ContentValues;
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v74

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 476
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v74

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 477
    .local v57, originalEventPlusCalendar:Ljava/lang/String;
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, v74

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v62

    .line 478
    .local v62, originalTime:J
    move-object/from16 v0, v50

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 480
    .local v61, originalList:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    if-eqz v61, :cond_1a

    .line 490
    invoke-virtual/range {v61 .. v61}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->size()I

    move-result v11

    add-int/lit8 v54, v11, -0x1

    .local v54, num:I
    :goto_b
    if-ltz v54, :cond_1a

    .line 491
    move-object/from16 v0, v61

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/content/ContentValues;

    .line 492
    .local v64, originalValues:Landroid/content/ContentValues;
    const-string v11, "begin"

    move-object/from16 v0, v64

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 493
    .local v23, beginTime:J
    cmp-long v11, v23, v62

    if-nez v11, :cond_1b

    .line 495
    move-object/from16 v0, v61

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->remove(I)Ljava/lang/Object;

    .line 490
    :cond_1b
    add-int/lit8 v54, v54, -0x1

    goto :goto_b

    .line 517
    .end local v23           #beginTime:J
    .end local v47           #i$:Ljava/util/Iterator;
    .end local v53           #list:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    .end local v54           #num:I
    .end local v57           #originalEventPlusCalendar:Ljava/lang/String;
    .end local v61           #originalList:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    .end local v62           #originalTime:J
    .end local v64           #originalValues:Landroid/content/ContentValues;
    .end local v73           #syncIdKey:Ljava/lang/String;
    .end local v74           #values:Landroid/content/ContentValues;
    :cond_1c
    invoke-interface/range {v51 .. v51}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_1d
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/String;

    .line 518
    .restart local v73       #syncIdKey:Ljava/lang/String;
    move-object/from16 v0, v50

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 519
    .restart local v53       #list:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    invoke-virtual/range {v53 .. v53}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .restart local v47       #i$:Ljava/util/Iterator;
    :cond_1e
    :goto_c
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/content/ContentValues;

    .line 523
    .restart local v74       #values:Landroid/content/ContentValues;
    const-string v11, "eventStatus"

    move-object/from16 v0, v74

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v69

    .line 524
    .local v69, status:Ljava/lang/Integer;
    const-string v11, "deleted"

    move-object/from16 v0, v74

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_20

    const-string v11, "deleted"

    move-object/from16 v0, v74

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    .line 526
    .restart local v29       #deleted:Z
    :goto_d
    if-eqz v69, :cond_1f

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v15, 0x2

    if-eq v11, v15, :cond_1e

    :cond_1f
    if-nez v29, :cond_1e

    .line 531
    const-string v11, "deleted"

    move-object/from16 v0, v74

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 534
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v74

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 535
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, v74

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 536
    const-string v11, "eventStatus"

    move-object/from16 v0, v74

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, v74

    invoke-virtual {v11, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesReplace(Landroid/content/ContentValues;)J

    goto :goto_c

    .line 524
    .end local v29           #deleted:Z
    :cond_20
    const/16 v29, 0x0

    goto :goto_d

    .line 541
    .end local v47           #i$:Ljava/util/Iterator;
    .end local v53           #list:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    .end local v69           #status:Ljava/lang/Integer;
    .end local v73           #syncIdKey:Ljava/lang/String;
    .end local v74           #values:Landroid/content/ContentValues;
    :cond_21
    return-void

    .line 436
    .end local v51           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6       #recur:Lcom/android/calendarcommon/RecurrenceSet;
    .restart local v13       #dtstartMillis:J
    .restart local v18       #initialValues:Landroid/content/ContentValues;
    .restart local v20       #allDay:Z
    .restart local v25       #calendarId:J
    .restart local v29       #deleted:Z
    .restart local v37       #durationStr:Ljava/lang/String;
    .restart local v39       #eventId:Ljava/lang/Long;
    .restart local v40       #eventTimezone:Ljava/lang/String;
    .restart local v43       #exdateStr:Ljava/lang/String;
    .restart local v45       #exruleStr:Ljava/lang/String;
    .restart local v55       #originalEvent:Ljava/lang/String;
    .restart local v59       #originalInstanceTimeMillis:J
    .restart local v66       #rdateStr:Ljava/lang/String;
    .restart local v68       #rruleStr:Ljava/lang/String;
    .local v69, status:I
    .restart local v71       #syncId:Ljava/lang/String;
    .restart local v73       #syncIdKey:Ljava/lang/String;
    :catch_6
    move-exception v38

    move-object/from16 v12, v18

    .end local v18           #initialValues:Landroid/content/ContentValues;
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_5
.end method

.method public updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 26
    .parameter "values"
    .parameter "rowId"
    .parameter "newEvent"
    .parameter "db"

    .prologue
    .line 637
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v16

    .line 638
    .local v16, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    const-string v5, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 643
    .local v15, dtstartMillis:Ljava/lang/Long;
    if-nez v15, :cond_3

    .line 644
    if-eqz p4, :cond_2

    .line 646
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "DTSTART missing."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 648
    :cond_2
    const-string v5, "CalInstances"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 649
    const-string v5, "CalInstances"

    const-string v6, "Missing DTSTART.  No need to update instance."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 654
    :cond_3
    if-nez p4, :cond_4

    .line 660
    const-string v5, "Instances"

    const-string v6, "event_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v7, v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 665
    :cond_4
    const-string v5, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 666
    .local v23, rrule:Ljava/lang/String;
    const-string v5, "rdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 667
    .local v22, rdate:Ljava/lang/String;
    const-string v5, "original_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 668
    .local v19, originalId:Ljava/lang/String;
    const-string v5, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 669
    .local v21, originalSyncId:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 670
    const-string v5, "lastDate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 671
    .local v18, lastDateMillis:Ljava/lang/Long;
    const-string v5, "originalInstanceTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    .line 675
    .local v20, originalInstanceTime:Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_7

    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_7

    :cond_5
    const/16 v17, 0x1

    .line 680
    .local v17, insideWindow:Z
    :goto_1
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    const-wide/32 v24, 0x240c8400

    sub-long v7, v7, v24

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8

    const/4 v11, 0x1

    .line 687
    .local v11, affectsWindow:Z
    :goto_2
    if-nez v17, :cond_6

    if-eqz v11, :cond_0

    .line 688
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 675
    .end local v11           #affectsWindow:Z
    .end local v17           #insideWindow:Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_1

    .line 680
    .restart local v17       #insideWindow:Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 696
    .end local v17           #insideWindow:Z
    .end local v18           #lastDateMillis:Ljava/lang/Long;
    .end local v20           #originalInstanceTime:Ljava/lang/Long;
    :cond_9
    const-string v5, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 697
    .local v14, dtendMillis:Ljava/lang/Long;
    if-nez v14, :cond_a

    .line 698
    move-object v14, v15

    .line 706
    :cond_a
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 707
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 708
    .local v10, instanceValues:Landroid/content/ContentValues;
    const-string v5, "event_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 709
    const-string v5, "begin"

    invoke-virtual {v10, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 710
    const-string v5, "end"

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 712
    const/4 v12, 0x0

    .line 713
    .local v12, allDay:Z
    const-string v5, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 714
    .local v13, allDayInteger:Ljava/lang/Integer;
    if-eqz v13, :cond_b

    .line 715
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_c

    const/4 v12, 0x1

    .line 719
    :cond_b
    :goto_3
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 720
    .local v9, local:Landroid/text/format/Time;
    if-eqz v12, :cond_d

    .line 721
    const-string v5, "UTC"

    iput-object v5, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 726
    :goto_4
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static/range {v5 .. v10}, Lcom/android/providers/calendar/CalendarInstancesHelper;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v5, v10}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesInsert(Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 715
    .end local v9           #local:Landroid/text/format/Time;
    :cond_c
    const/4 v12, 0x0

    goto :goto_3

    .line 723
    .restart local v9       #local:Landroid/text/format/Time;
    :cond_d
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v5, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_4
.end method
