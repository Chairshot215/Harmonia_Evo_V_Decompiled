.class public Lcom/android/providers/calendar/HtcFilterImpl_google;
.super Lcom/android/providers/calendar/AbsHtcFilter;
.source "HtcFilterImpl_google.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcFilterImpl_google"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/providers/calendar/AbsHtcFilter;-><init>()V

    .line 23
    const-string v0, "HtcFilterImpl_google"

    const-string v1, "Init...HtcFilterImpl_google"

    invoke-static {v0, v1}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/providers/calendar/HtcFilterImpl_google;->initMatcher()V

    .line 25
    return-void
.end method

.method private do_Query_CALENDAR_ALERTS(Landroid/net/Uri;ILandroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "match"
    .parameter "db"
    .parameter "qb"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 364
    const-string v5, "event_id"

    .line 365
    .local v5, groupBy:Ljava/lang/String;
    const-string v0, "CalendarAlerts, view_events"

    invoke-virtual {p4, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p4, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 367
    const-string v0, "view_events._id=CalendarAlerts.event_id"

    invoke-virtual {p4, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 368
    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p3

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private do_Query_CALENDAR_ALERTS_BY_INSTANCE(Landroid/net/Uri;ILandroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "match"
    .parameter "db"
    .parameter "qb"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 380
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 382
    .local v9, needGroundBy:Ljava/lang/String;
    const-string v0, "CalendarAlerts, view_events"

    invoke-virtual {p4, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 383
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p4, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 384
    const-string v0, "view_events._id=CalendarAlerts.event_id"

    invoke-virtual {p4, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 385
    const-string v7, "event_id,begin"

    .line 387
    .local v7, groupBy:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    const-string v0, "0"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const/4 v7, 0x0

    .line 391
    :cond_0
    const-string v0, "HtcFilterImpl_google"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALENDAR_ALERTS_BY_INSTANCE needGroundBy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :goto_0
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    const/4 v8, 0x0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 393
    :cond_1
    const-string v0, "HtcFilterImpl_google"

    const-string v1, "CALENDAR_ALERTS_BY_INSTANCE needGroundBy is null"

    invoke-static {v0, v1}, Lcom/android/providers/calendar/debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private do_Query_INSTANCES(Landroid/net/Uri;ILandroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "uri"
    .parameter "match"
    .parameter "db"
    .parameter "qb"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 275
    const-string v1, "EXCLUDE_ASSOCIATE_NOTES"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/QueryParameterUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v15

    .line 277
    .local v15, excludeNotes:Z
    const-string v1, "EXCLUDE_ASSOCIATE_NOTES_V2"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/QueryParameterUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v16

    .line 280
    .local v16, excludeNotes_V2:Z
    const-string v1, "HtcFilterImpl_google"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSTANCES_BY_DAY EXCLUDE_ASSOCIATE_NOTES: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 291
    .local v3, begin:J
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v5

    .line 297
    .local v5, end:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v1, v1, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v13

    .line 298
    .local v13, instancesTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    const/16 v2, 0xf

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    const/4 v11, 0x1

    :goto_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v14

    move-object/from16 v2, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v16}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZ)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 286
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v13           #instancesTimezone:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 287
    .local v17, nfe:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse begin "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x2

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    .end local v17           #nfe:Ljava/lang/NumberFormatException;
    .restart local v3       #begin:J
    :catch_1
    move-exception v17

    .line 293
    .restart local v17       #nfe:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse end "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    .end local v17           #nfe:Ljava/lang/NumberFormatException;
    .restart local v5       #end:J
    .restart local v13       #instancesTimezone:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private do_Query_REMINDERS(Landroid/net/Uri;ILandroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .parameter "uri"
    .parameter "match"
    .parameter "db"
    .parameter "qb"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 314
    .local v11, c:Landroid/database/Cursor;
    new-instance v14, Landroid/database/MatrixCursor;

    move-object/from16 v0, p5

    invoke-direct {v14, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 315
    .local v14, mc:Landroid/database/MatrixCursor;
    if-nez v11, :cond_1

    .line 316
    const/4 v14, 0x0

    .line 351
    .end local v11           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v11

    .line 319
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_1
    const-string v1, "HtcFilterImpl_google"

    const-string v2, "Need fixed Reminder Method"

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->alwaysLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v10

    .line 321
    .local v10, allColumns:[Ljava/lang/String;
    const/4 v15, -0x1

    .line 322
    .local v15, needFixIndex:I
    const/4 v13, 0x0

    .local v13, idx:I
    :goto_1
    array-length v1, v10

    if-ge v13, v1, :cond_3

    .line 323
    aget-object v1, v10, v13

    const-string v2, "method"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    move v15, v13

    .line 322
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 327
    :cond_3
    const-string v1, "HtcFilterImpl_google"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needFixIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-ltz v15, :cond_0

    .line 332
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 333
    const-string v1, "HtcFilterImpl_google"

    const-string v2, "package new cursor"

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    array-length v1, v10

    new-array v0, v1, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 335
    .local v16, o:[Ljava/lang/Object;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    array-length v1, v10

    if-ge v12, v1, :cond_5

    .line 336
    if-ne v12, v15, :cond_4

    .line 337
    const-string v1, "HtcFilterImpl_google"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needFixIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " c.getInt("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v16, v12

    .line 335
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 345
    :cond_4
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v16, v12

    goto :goto_4

    .line 348
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 349
    const/16 v16, 0x0

    goto :goto_2

    .end local v12           #i:I
    .end local v16           #o:[Ljava/lang/Object;
    :cond_6
    move-object v11, v14

    .line 351
    goto/16 :goto_0
.end method


# virtual methods
.method public handle_Delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 146
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 155
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :pswitch_1
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

    .line 146
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handle_Insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "callerIsSyncAdapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 107
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 116
    :pswitch_0
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 114
    :pswitch_1
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

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handle_Query(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "db"
    .parameter "qb"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "groupBy"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 50
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 98
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 53
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/calendar/HtcFilterImpl_google;->do_Query_INSTANCES(Landroid/net/Uri;ILandroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 62
    :pswitch_2
    const-string v0, "Reminders"

    invoke-virtual {p3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 64
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/calendar/HtcFilterImpl_google;->do_Query_REMINDERS(Landroid/net/Uri;ILandroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 75
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/calendar/HtcFilterImpl_google;->do_Query_CALENDAR_ALERTS(Landroid/net/Uri;ILandroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 86
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/calendar/HtcFilterImpl_google;->do_Query_CALENDAR_ALERTS_BY_INSTANCE(Landroid/net/Uri;ILandroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot query into that URL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public handle_Update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 127
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 136
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :pswitch_1
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

    .line 127
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method handle_getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 162
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 172
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :pswitch_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot getType that URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public initMatcher()V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/when/*/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "instances/whenbyday/*/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "reminders"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendar_alerts/by_instance/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    iget-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "calendars/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method
