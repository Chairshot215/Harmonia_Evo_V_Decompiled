.class public Lcom/android/providers/calendar/HtcFilterImpl_note;
.super Lcom/android/providers/calendar/AbsHtcFilter;
.source "HtcFilterImpl_note.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;
    }
.end annotation


# static fields
.field private static final ALL_EVENTS_AT_CURRENT_TIME:I = 0x323

.field private static final ALL_EVENTS_AT_TIME:I = 0x322

.field private static final ASSOCIATE_NOTES_AT_CURRENT_TIME:I = 0x321

.field private static final ASSOCIATE_NOTES_AT_TIME:I = 0x320

.field private static final BASE:I = 0x320

.field private static final NOT_ASSOCIATE_NOTES_AT_CURRENT_TIME:I = 0x325

.field private static final NOT_ASSOCIATE_NOTES_AT_TIME:I = 0x324

.field private static final TAG:Ljava/lang/String; = "HtcFilterImpl_note"

.field private static final notesQueryTable:Ljava/lang/String; = "Instances INNER JOIN Events ON (Instances.event_id=Events._id) INNER JOIN Calendars ON (Events.calendar_id = Calendars._id)"

.field private static final sCalendarNotesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mQb:Landroid/database/sqlite/SQLiteQueryBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->sCalendarNotesProjectionMap:Ljava/util/HashMap;

    .line 47
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->sCalendarNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "Instances._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->sCalendarNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->sCalendarNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->sCalendarNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->sCalendarNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->sCalendarNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v2, "Instances.event_id AS event_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->sCalendarNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/providers/calendar/AbsHtcFilter;-><init>()V

    .line 37
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/HtcFilterImpl_note;->mQb:Landroid/database/sqlite/SQLiteQueryBuilder;

    .line 58
    const-string v0, "HtcFilterImpl_note"

    const-string v1, "Init...HtcFilterImpl_note"

    invoke-static {v0, v1}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/providers/calendar/HtcFilterImpl_note;->initMatcher()V

    .line 60
    return-void
.end method

.method private buildANoteRow(ILandroid/database/Cursor;I)[Ljava/lang/Object;
    .locals 14
    .parameter "id"
    .parameter "c"
    .parameter "associateNote"

    .prologue
    .line 236
    sget-object v10, Lcom/htc/provider/HtcCalendar$AssociatedNotes;->EVENTS_PROJECTION:[Ljava/lang/String;

    array-length v10, v10

    new-array v6, v10, [Ljava/lang/Object;

    .line 237
    .local v6, o:[Ljava/lang/Object;
    const/4 v10, 0x0

    const-string v11, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v10

    .line 238
    const/4 v10, 0x1

    const-string v11, "calendar_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v10

    .line 240
    const/4 v10, 0x2

    :try_start_0
    const-string v11, "title"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    const/4 v10, 0x3

    const-string v11, "begin"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v10

    .line 245
    const/4 v10, 0x4

    const-string v11, "end"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v10

    .line 246
    const/4 v10, 0x5

    const-string v11, "allDay"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v10

    .line 248
    const-string v10, "event_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 249
    .local v4, eventId:J
    const-string v10, "begin"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 250
    .local v7, startTime:J
    const-string v10, "end"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 252
    .local v2, endTime:J
    iget-object v10, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v10}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Lcom/htc/util/calendar/HtcCalendarManager;->generateTheEventUri(J)Landroid/net/Uri;

    move-result-object v9

    .line 254
    .local v9, uri:Landroid/net/Uri;
    if-nez v9, :cond_0

    .line 255
    const/4 v10, 0x6

    const-string v11, ""

    aput-object v11, v6, v10

    .line 272
    :goto_1
    if-nez p3, :cond_1

    .line 273
    const/4 v10, 0x7

    new-instance v11, Ljava/lang/Long;

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13}, Ljava/lang/Long;-><init>(J)V

    aput-object v11, v6, v10

    .line 286
    :goto_2
    return-object v6

    .line 241
    .end local v2           #endTime:J
    .end local v4           #eventId:J
    .end local v7           #startTime:J
    .end local v9           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Ljava/lang/Exception;
    const/4 v10, 0x2

    const-string v11, ""

    aput-object v11, v6, v10

    goto/16 :goto_0

    .line 257
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #endTime:J
    .restart local v4       #eventId:J
    .restart local v7       #startTime:J
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_0
    const/4 v10, 0x6

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    goto :goto_1

    .line 274
    :cond_1
    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    .line 275
    const/4 v10, 0x7

    new-instance v11, Ljava/lang/Long;

    const-wide/16 v12, 0x1

    invoke-direct {v11, v12, v13}, Ljava/lang/Long;-><init>(J)V

    aput-object v11, v6, v10

    goto :goto_2

    .line 277
    :cond_2
    if-eqz v9, :cond_3

    .line 278
    const/4 v10, 0x7

    iget-object v11, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v11}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v11

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/util/calendar/HtcCalendarManager;->checkIfAssociatedNotes(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v6, v10

    goto :goto_2

    .line 281
    :cond_3
    const/4 v10, 0x7

    new-instance v11, Ljava/lang/Long;

    const-wide/16 v12, -0x1

    invoke-direct {v11, v12, v13}, Ljava/lang/Long;-><init>(J)V

    aput-object v11, v6, v10

    goto :goto_2
.end method

.method private buildAllEventsAtTimeForNotes(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;IZ)Landroid/database/Cursor;
    .locals 30
    .parameter "db"
    .parameter "uri"
    .parameter "match"
    .parameter "isNotAssociatedOnly"

    .prologue
    .line 349
    const-wide/16 v24, 0x0

    .line 350
    .local v24, longTime:J
    const/16 v3, 0x322

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 351
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 355
    :goto_0
    const-string v3, "HtcFilterImpl_note"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALL EVENTS AT TIME FOR NOTES:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/calendar/debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v3, v3, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v10

    .line 358
    .local v10, instancesTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    const-wide/32 v4, 0x5265c00

    sub-long v4, v24, v4

    const-wide/32 v6, 0x5265c00

    add-long v6, v6, v24

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v11}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v11

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->mQb:Landroid/database/sqlite/SQLiteQueryBuilder;

    const-string v4, "Instances INNER JOIN Events ON (Instances.event_id=Events._id) INNER JOIN Calendars ON (Events.calendar_id = Calendars._id)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->mQb:Landroid/database/sqlite/SQLiteQueryBuilder;

    sget-object v4, Lcom/android/providers/calendar/HtcFilterImpl_note;->sCalendarNotesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 368
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v28, sbWhere:Ljava/lang/StringBuilder;
    const-string v3, " Events.allDay != 1 AND "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v3, " Instances.begin <= ? AND Instances.end >= ? "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const/4 v3, 0x2

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3

    const/4 v3, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3

    .line 376
    .local v15, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/calendar/HtcFilterImpl_note;->mQb:Landroid/database/sqlite/SQLiteQueryBuilder;

    const/4 v13, 0x0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 377
    .local v19, c:Landroid/database/Cursor;
    if-nez v19, :cond_1

    .line 378
    const/16 v20, 0x0

    .line 419
    :goto_1
    return-object v20

    .line 353
    .end local v10           #instancesTimezone:Ljava/lang/String;
    .end local v15           #selectionArgs:[Ljava/lang/String;
    .end local v19           #c:Landroid/database/Cursor;
    .end local v28           #sbWhere:Ljava/lang/StringBuilder;
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    goto/16 :goto_0

    .line 381
    .restart local v10       #instancesTimezone:Ljava/lang/String;
    .restart local v15       #selectionArgs:[Ljava/lang/String;
    .restart local v19       #c:Landroid/database/Cursor;
    .restart local v28       #sbWhere:Ljava/lang/StringBuilder;
    :cond_1
    new-instance v20, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/htc/provider/HtcCalendar$AssociatedNotes;->EVENTS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 382
    .local v20, cursorMatrix:Landroid/database/MatrixCursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 383
    const/16 v22, 0x1

    .line 384
    .local v22, id:I
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v27, objectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    :goto_2
    add-int/lit8 v23, v22, 0x1

    .end local v22           #id:I
    .local v23, id:I
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/HtcFilterImpl_note;->buildANoteRow(ILandroid/database/Cursor;I)[Ljava/lang/Object;

    move-result-object v26

    .line 387
    .local v26, o:[Ljava/lang/Object;
    if-eqz v26, :cond_2

    .line 388
    if-eqz p4, :cond_3

    .line 389
    const/4 v3, 0x7

    aget-object v29, v26, v3

    check-cast v29, Ljava/lang/Long;

    .line 390
    .local v29, val:Ljava/lang/Long;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 391
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v29           #val:Ljava/lang/Long;
    :cond_2
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 399
    new-instance v3, Lcom/android/providers/calendar/HtcFilterImpl_note$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/providers/calendar/HtcFilterImpl_note$1;-><init>(Lcom/android/providers/calendar/HtcFilterImpl_note;)V

    move-object/from16 v0, v27

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 413
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .end local v26           #o:[Ljava/lang/Object;
    check-cast v26, [Ljava/lang/Object;

    .line 414
    .restart local v26       #o:[Ljava/lang/Object;
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    .line 394
    .end local v21           #i$:Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 416
    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 418
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v23           #id:I
    .end local v26           #o:[Ljava/lang/Object;
    .end local v27           #objectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    :cond_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .restart local v23       #id:I
    .restart local v26       #o:[Ljava/lang/Object;
    .restart local v27       #objectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    :cond_6
    move/from16 v22, v23

    .end local v23           #id:I
    .restart local v22       #id:I
    goto :goto_2
.end method

.method private buildAssociateNotes(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)Landroid/database/Cursor;
    .locals 21
    .parameter "db"
    .parameter "uri"
    .parameter "match"

    .prologue
    .line 311
    const-wide/16 v18, 0x0

    .line 312
    .local v18, longTime:J
    const/16 v3, 0x320

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 313
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 318
    :goto_0
    const-string v3, "HtcFilterImpl_note"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ASSOCIATE_NOTES_AT :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/calendar/debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/HtcFilterImpl_note;->getAssociatedNotesEvents(J)Ljava/util/ArrayList;

    move-result-object v13

    .line 321
    .local v13, eventsInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;>;"
    if-nez v13, :cond_2

    .line 322
    const/4 v12, 0x0

    .line 345
    :cond_0
    :goto_1
    return-object v12

    .line 315
    .end local v13           #eventsInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;>;"
    :cond_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    goto :goto_0

    .line 324
    .restart local v13       #eventsInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;>;"
    :cond_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 325
    const/4 v12, 0x0

    goto :goto_1

    .line 328
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v3, v3, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v10

    .line 329
    .local v10, instancesTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    const-wide/32 v4, 0x5265c00

    sub-long v4, v18, v4

    const-wide/32 v6, 0x5265c00

    add-long v6, v6, v18

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v11}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v11

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 336
    new-instance v12, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/htc/provider/HtcCalendar$AssociatedNotes;->EVENTS_PROJECTION:[Ljava/lang/String;

    invoke-direct {v12, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 338
    .local v12, cursorMatrix:Landroid/database/MatrixCursor;
    const/4 v15, 0x1

    .line 339
    .local v15, id:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;

    .line 340
    .local v17, info:Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;
    add-int/lit8 v16, v15, 0x1

    .end local v15           #id:I
    .local v16, id:I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/providers/calendar/HtcFilterImpl_note;->getAEventForNotes(Landroid/database/sqlite/SQLiteDatabase;ILcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;I)[Ljava/lang/Object;

    move-result-object v20

    .line 341
    .local v20, o:[Ljava/lang/Object;
    if-eqz v20, :cond_4

    .line 342
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_4
    move/from16 v15, v16

    .line 344
    .end local v16           #id:I
    .restart local v15       #id:I
    goto :goto_2
.end method

.method private getAEventForNotes(Landroid/database/sqlite/SQLiteDatabase;ILcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;I)[Ljava/lang/Object;
    .locals 11
    .parameter "db"
    .parameter "id"
    .parameter "info"
    .parameter "associateNote"

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/providers/calendar/HtcFilterImpl_note;->mQb:Landroid/database/sqlite/SQLiteQueryBuilder;

    const-string v1, "Instances INNER JOIN Events ON (Instances.event_id=Events._id) INNER JOIN Calendars ON (Events.calendar_id = Calendars._id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/providers/calendar/HtcFilterImpl_note;->mQb:Landroid/database/sqlite/SQLiteQueryBuilder;

    sget-object v1, Lcom/android/providers/calendar/HtcFilterImpl_note;->sCalendarNotesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 292
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v10, sbWhere:Ljava/lang/StringBuilder;
    const-string v0, " Instances.event_id = ? AND Instances.begin = ? AND Instances.end = ? "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v5, p3, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;->event_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-wide v5, p3, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;->begin_time:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget-wide v5, p3, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;->end_time:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 298
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/calendar/HtcFilterImpl_note;->mQb:Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 299
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 308
    :goto_0
    return-object v2

    .line 303
    :cond_0
    const/4 v9, 0x0

    .line 304
    .local v9, o:[Ljava/lang/Object;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-direct {p0, p2, v8, p4}, Lcom/android/providers/calendar/HtcFilterImpl_note;->buildANoteRow(ILandroid/database/Cursor;I)[Ljava/lang/Object;

    move-result-object v9

    .line 307
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    .line 308
    goto :goto_0
.end method

.method private getAssociatedNotesEvents(J)Ljava/util/ArrayList;
    .locals 20
    .parameter "longTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v16, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 186
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/htc/provider/Notes;->ASSOCIATIONS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 188
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 212
    :goto_0
    return-object v16

    .line 190
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    :cond_1
    :try_start_0
    const-string v3, "association_uri"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 195
    .local v19, uriString:Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 196
    .local v18, segments:[Ljava/lang/String;
    const/4 v3, 0x4

    aget-object v3, v18, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 197
    .local v14, id:J
    const/4 v3, 0x6

    aget-object v3, v18, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 198
    .local v8, beginTime:J
    const/4 v3, 0x7

    aget-object v3, v18, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 199
    .local v12, endTime:J
    cmp-long v3, v8, p1

    if-gtz v3, :cond_2

    cmp-long v3, p1, v12

    if-gtz v3, :cond_2

    .line 200
    new-instance v17, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;-><init>(Lcom/android/providers/calendar/HtcFilterImpl_note;Lcom/android/providers/calendar/HtcFilterImpl_note$1;)V

    .line 201
    .local v17, o:Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;
    move-object/from16 v0, v17

    iput-wide v14, v0, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;->event_id:J

    .line 202
    move-object/from16 v0, v17

    iput-wide v8, v0, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;->begin_time:J

    .line 203
    move-object/from16 v0, v17

    iput-wide v12, v0, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;->end_time:J

    .line 204
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v8           #beginTime:J
    .end local v12           #endTime:J
    .end local v14           #id:J
    .end local v17           #o:Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;
    .end local v18           #segments:[Ljava/lang/String;
    .end local v19           #uriString:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 206
    :catch_0
    move-exception v11

    .line 207
    .local v11, e:Ljava/lang/Exception;
    const-string v3, "HtcFilterImpl_note"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notes Association not correct:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/providers/calendar/debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public handle_Delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 148
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 157
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete into that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handle_Insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 109
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 118
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot insert into that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method handle_Query(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "uri"
    .parameter "db"
    .parameter "qb"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "groupBy"
    .parameter "limit"

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 87
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot query into that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :pswitch_0
    invoke-direct {p0, p2, p1, v0}, Lcom/android/providers/calendar/HtcFilterImpl_note;->buildAssociateNotes(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)Landroid/database/Cursor;

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    .line 94
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/providers/calendar/HtcFilterImpl_note;->buildAllEventsAtTimeForNotes(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;IZ)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 98
    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/android/providers/calendar/HtcFilterImpl_note;->buildAllEventsAtTimeForNotes(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;IZ)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public handle_Update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 129
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 138
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot insert into that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method handle_getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 164
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 173
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 171
    :pswitch_0
    const-string v1, "vnd.android.cursor.item/associate-notes"

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initMatcher()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "AssociatedNotesAtTime"

    const/16 v3, 0x321

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "AssociatedNotesAtTime/#"

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "NotAssociatedNotesAtTime"

    const/16 v3, 0x325

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "NotAssociatedNotesAtTime/#"

    const/16 v3, 0x324

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "AllEventsAtTime"

    const/16 v3, 0x323

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "AllEventsAtTime/#"

    const/16 v3, 0x322

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    return-void
.end method
