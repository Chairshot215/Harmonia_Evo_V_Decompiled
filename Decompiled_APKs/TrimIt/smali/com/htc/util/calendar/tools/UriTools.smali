.class public final Lcom/htc/util/calendar/tools/UriTools;
.super Ljava/lang/Object;
.source "UriTools.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENTS_ID:I = 0x3

.field private static final EVENT_WITH_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UriTools"

.field private static final THE_EVENT_WITH_GUID_TYPE:I = 0x4

.field private static final UNI_EVENT_WITH_TIME:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    .line 41
    sget-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#/EventTime/#/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "uni-event/#/EventTime/#/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "the-event/"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Debug(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 30
    if-eqz p0, :cond_0

    const-string v0, "UriTools"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

.method private static adjustEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 19
    .parameter "context"
    .parameter "eventUri"

    .prologue
    .line 301
    sget-object v3, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 302
    .local v15, match:I
    const/4 v3, 0x1

    if-eq v15, v3, :cond_1

    const/4 v10, 0x0

    .line 342
    :cond_0
    :goto_0
    return-object v10

    .line 304
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 305
    .local v12, eventId:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 306
    .local v16, startTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 307
    .local v7, endTime:J
    const/4 v10, 0x0

    .line 309
    .local v10, desUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 311
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 312
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "events"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 313
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v18, "allDay"

    aput-object v18, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "_id="

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 318
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    const-string v3, "allDay"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 321
    .local v14, isAllDay:I
    const/4 v3, 0x1

    if-ne v14, v3, :cond_4

    .line 322
    invoke-static/range {v16 .. v17}, Lcom/htc/util/calendar/tools/UriTools;->offsetToUTCDay(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 323
    .end local v16           #startTime:J
    .local v5, startTime:J
    :try_start_1
    invoke-static {v7, v8}, Lcom/htc/util/calendar/tools/UriTools;->offsetToUTCDay(J)J

    move-result-wide v7

    :goto_1
    move-wide v3, v12

    .line 326
    invoke-static/range {v3 .. v8}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUri(JJJ)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 334
    .end local v14           #isAllDay:I
    :goto_2
    if-eqz v9, :cond_0

    .line 335
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 337
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 328
    .end local v5           #startTime:J
    .restart local v16       #startTime:J
    :cond_2
    const/4 v10, 0x0

    move-wide/from16 v5, v16

    .end local v16           #startTime:J
    .restart local v5       #startTime:J
    goto :goto_2

    .line 330
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v5           #startTime:J
    .restart local v16       #startTime:J
    :catch_0
    move-exception v11

    move-wide/from16 v5, v16

    .line 331
    .end local v16           #startTime:J
    .restart local v5       #startTime:J
    .local v11, e:Ljava/lang/Exception;
    :goto_3
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    const/4 v10, 0x0

    .line 334
    if-eqz v9, :cond_0

    .line 335
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 337
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 334
    .end local v5           #startTime:J
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v16       #startTime:J
    :catchall_0
    move-exception v3

    move-wide/from16 v5, v16

    .end local v16           #startTime:J
    .restart local v5       #startTime:J
    :goto_4
    if-eqz v9, :cond_3

    .line 335
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 336
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 337
    const/4 v9, 0x0

    :cond_3
    throw v3

    .line 334
    :catchall_1
    move-exception v3

    goto :goto_4

    .line 330
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v14       #isAllDay:I
    :catch_1
    move-exception v11

    goto :goto_3

    .end local v5           #startTime:J
    .restart local v16       #startTime:J
    :cond_4
    move-wide/from16 v5, v16

    .end local v16           #startTime:J
    .restart local v5       #startTime:J
    goto :goto_1
.end method

.method private static doCheckEventExist(Landroid/content/Context;JJJ)Lcom/htc/util/calendar/EventInstance;
    .locals 19
    .parameter "context"
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 227
    const/16 v16, 0x0

    .line 228
    .local v16, ei:Lcom/htc/util/calendar/EventInstance;
    const-string v17, ""

    .line 229
    .local v17, title:Ljava/lang/String;
    const-string v8, ""

    .line 230
    .local v8, location:Ljava/lang/String;
    const-string v9, ""

    .line 231
    .local v9, description:Ljava/lang/String;
    move-wide/from16 v10, p3

    .line 232
    .local v10, begin:J
    move-wide/from16 v12, p5

    .line 233
    .local v12, end:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 234
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 235
    .local v3, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 237
    .local v14, c:Landroid/database/Cursor;
    const/4 v5, 0x6

    :try_start_0
    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "eventLocation"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "description"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "begin"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "end"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 246
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v7, v17

    .line 248
    .end local v17           #title:Ljava/lang/String;
    .local v7, title:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v5, "title"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 249
    const-string v5, "eventLocation"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 250
    const-string v5, "description"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 251
    const-string v5, "begin"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 252
    const-string v5, "end"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 253
    cmp-long v5, v10, p3

    if-nez v5, :cond_2

    cmp-long v5, v12, p5

    if-nez v5, :cond_2

    .line 254
    new-instance v4, Lcom/htc/util/calendar/EventInstance;

    move-wide/from16 v5, p1

    invoke-direct/range {v4 .. v13}, Lcom/htc/util/calendar/EventInstance;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .local v4, ei:Lcom/htc/util/calendar/EventInstance;
    :goto_0
    if-eqz v14, :cond_1

    .line 263
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 264
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 265
    const/4 v14, 0x0

    .line 270
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event is exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", title:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", begin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/util/calendar/tools/UriTools;->Debug(Ljava/lang/String;)V

    .line 272
    return-object v4

    .line 257
    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v16       #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_2
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v4, v16

    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v4       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_0

    .line 259
    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v7           #title:Ljava/lang/String;
    .restart local v16       #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v17       #title:Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object/from16 v7, v17

    .line 260
    .end local v17           #title:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    .local v15, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 262
    if-eqz v14, :cond_5

    .line 263
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 264
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 265
    const/4 v14, 0x0

    move-object/from16 v4, v16

    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v4       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_1

    .line 262
    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v7           #title:Ljava/lang/String;
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v17       #title:Ljava/lang/String;
    :catchall_0
    move-exception v5

    move-object/from16 v7, v17

    .end local v17           #title:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    :goto_4
    if-eqz v14, :cond_3

    .line 263
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 264
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 265
    const/4 v14, 0x0

    :cond_3
    throw v5

    .line 270
    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v4       #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 262
    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v16       #ei:Lcom/htc/util/calendar/EventInstance;
    :catchall_1
    move-exception v5

    goto :goto_4

    .line 259
    :catch_1
    move-exception v15

    goto :goto_3

    .restart local v15       #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v4, v16

    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v4       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_1

    .end local v4           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v7           #title:Ljava/lang/String;
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v17       #title:Ljava/lang/String;
    :cond_6
    move-object/from16 v7, v17

    .end local v17           #title:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    move-object/from16 v4, v16

    .end local v16           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v4       #ei:Lcom/htc/util/calendar/EventInstance;
    goto/16 :goto_0
.end method

.method private static doCheckEventExistForNotes(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;
    .locals 23
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 170
    const/16 v17, 0x0

    .line 171
    .local v17, ei:Lcom/htc/util/calendar/EventInstance;
    const-string v10, ""

    .line 172
    .local v10, title:Ljava/lang/String;
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 173
    .local v20, syncAccountType:Ljava/lang/String;
    const-string v3, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 174
    .local v18, gUid:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v20, v6, v3

    const/4 v3, 0x1

    aput-object v18, v6, v3

    .line 175
    .local v6, selectionArgs:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 176
    .local v19, selection:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    const-string v19, "iCalGUID"

    .line 185
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_type = (?) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = (?) AND deleted <> 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 190
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 192
    .local v15, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "_id"

    aput-object v22, v4, v21

    const/16 v21, 0x1

    const-string v22, "title"

    aput-object v22, v4, v21

    const/16 v21, 0x2

    const-string v22, "dtstart"

    aput-object v22, v4, v21

    const/16 v21, 0x3

    const-string v22, "dtend"

    aput-object v22, v4, v21

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 199
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 201
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 202
    .local v8, eventId:J
    const-string v3, "title"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 203
    const-string v3, "dtstart"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 204
    .local v11, begin:J
    const-string v3, "dtend"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 206
    .local v13, end:J
    new-instance v7, Lcom/htc/util/calendar/EventInstance;

    invoke-direct/range {v7 .. v14}, Lcom/htc/util/calendar/EventInstance;-><init>(JLjava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v8           #eventId:J
    .end local v11           #begin:J
    .end local v13           #end:J
    .end local v17           #ei:Lcom/htc/util/calendar/EventInstance;
    .local v7, ei:Lcom/htc/util/calendar/EventInstance;
    :goto_1
    if-eqz v15, :cond_0

    .line 217
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 219
    const/4 v15, 0x0

    .line 223
    :cond_0
    :goto_2
    return-object v7

    .line 178
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v5           #where:Ljava/lang/String;
    .end local v7           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v15           #c:Landroid/database/Cursor;
    .restart local v17       #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_1
    invoke-static/range {v20 .. v20}, Lcom/htc/util/calendar/tools/UriTools;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    const-string v19, "_sync_id"

    goto/16 :goto_0

    .line 180
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/htc/util/calendar/tools/UriTools;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    const-string v19, "facebook_source_id"

    goto/16 :goto_0

    .line 183
    :cond_3
    const-string v19, "iCalGUID"

    goto/16 :goto_0

    .line 212
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v15       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 213
    .local v16, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    if-eqz v15, :cond_5

    .line 217
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 218
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 219
    const/4 v15, 0x0

    move-object/from16 v7, v17

    .end local v17           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v7       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_2

    .line 216
    .end local v7           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v17       #ei:Lcom/htc/util/calendar/EventInstance;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_4

    .line 217
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 218
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 219
    const/4 v15, 0x0

    :cond_4
    throw v3

    .restart local v16       #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v7, v17

    .end local v17           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v7       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_2

    .end local v7           #ei:Lcom/htc/util/calendar/EventInstance;
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v17       #ei:Lcom/htc/util/calendar/EventInstance;
    :cond_6
    move-object/from16 v7, v17

    .end local v17           #ei:Lcom/htc/util/calendar/EventInstance;
    .restart local v7       #ei:Lcom/htc/util/calendar/EventInstance;
    goto :goto_1
.end method

.method public static generateEventUri(JJJ)Landroid/net/Uri;
    .locals 1
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 68
    invoke-static/range {p0 .. p5}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUriString(JJJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static generateEventUriString(JJJ)Ljava/lang/String;
    .locals 3
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.calendar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/events/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/EventTime/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateTheEventUri(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 16
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 422
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v14, sb:Ljava/lang/StringBuilder;
    const-string v4, "content://"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.android.calendar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/the-event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const/4 v10, 0x0

    .line 428
    .local v10, desUri:Landroid/net/Uri;
    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "events/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 429
    .local v3, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 431
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 432
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "account_type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_sync_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "iCalGUID"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "facebook_source_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 437
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uni-event count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/calendar/tools/UriTools;->Debug(Ljava/lang/String;)V

    .line 440
    const-string v4, "account_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 441
    .local v8, accountType:Ljava/lang/String;
    const-string v4, "_sync_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 442
    .local v15, syncId:Ljava/lang/String;
    const-string v4, "iCalGUID"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 443
    .local v13, iUid:Ljava/lang/String;
    const-string v4, "facebook_source_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 445
    .local v12, facebookId:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 447
    invoke-static {v8}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 448
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 468
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #facebookId:Ljava/lang/String;
    .end local v13           #iUid:Ljava/lang/String;
    .end local v15           #syncId:Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_0

    .line 469
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 470
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 471
    const/4 v9, 0x0

    .line 475
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_1
    return-object v10

    .line 450
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v8       #accountType:Ljava/lang/String;
    .restart local v12       #facebookId:Ljava/lang/String;
    .restart local v13       #iUid:Ljava/lang/String;
    .restart local v15       #syncId:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v8}, Lcom/htc/util/calendar/tools/UriTools;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 451
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    goto :goto_0

    .line 453
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/htc/util/calendar/tools/UriTools;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 454
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    goto :goto_0

    .line 457
    :cond_3
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_0

    .line 462
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #facebookId:Ljava/lang/String;
    .end local v13           #iUid:Ljava/lang/String;
    .end local v15           #syncId:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 464
    .end local v2           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v11

    .line 465
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    const/4 v10, 0x0

    .line 468
    if-eqz v9, :cond_0

    .line 469
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 470
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 471
    const/4 v9, 0x0

    goto :goto_1

    .line 468
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v9, :cond_5

    .line 469
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 470
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 471
    const/4 v9, 0x0

    :cond_5
    throw v4
.end method

.method public static generateTheEventUriString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 85
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UriTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event not exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v1, ""

    goto :goto_0
.end method

.method public static generateUniEventUri(Landroid/content/Context;JJJ)Landroid/net/Uri;
    .locals 17
    .parameter "context"
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 481
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v15, sb:Ljava/lang/StringBuilder;
    const-string v4, "content://"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.android.calendar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/uni-event/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/EventTime/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const/4 v10, 0x0

    .line 490
    .local v10, desUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 492
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 493
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "events/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 494
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "account_type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "_sync_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "iCalGUID"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "facebook_source_id"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "allDay"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 501
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uni-event count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/util/calendar/tools/UriTools;->Debug(Ljava/lang/String;)V

    .line 504
    const-string v4, "account_type"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 505
    .local v8, accountType:Ljava/lang/String;
    const-string v4, "_sync_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 506
    .local v16, syncId:Ljava/lang/String;
    const-string v4, "iCalGUID"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 507
    .local v13, iUid:Ljava/lang/String;
    const-string v4, "facebook_source_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 508
    .local v12, facebookId:Ljava/lang/String;
    const-string v4, "allDay"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 510
    .local v14, isAllDay:I
    const/4 v4, 0x1

    if-ne v14, v4, :cond_1

    .line 511
    invoke-static/range {p3 .. p4}, Lcom/htc/util/calendar/tools/UriTools;->offsetToUTCDay(J)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->offsetToUTCDay(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 520
    :goto_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 522
    invoke-static {v8}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 523
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 543
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #facebookId:Ljava/lang/String;
    .end local v13           #iUid:Ljava/lang/String;
    .end local v14           #isAllDay:I
    .end local v16           #syncId:Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_0

    .line 544
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 545
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 546
    const/4 v9, 0x0

    .line 550
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_2
    return-object v10

    .line 515
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v8       #accountType:Ljava/lang/String;
    .restart local v12       #facebookId:Ljava/lang/String;
    .restart local v13       #iUid:Ljava/lang/String;
    .restart local v14       #isAllDay:I
    .restart local v16       #syncId:Ljava/lang/String;
    :cond_1
    :try_start_1
    move-wide/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 539
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #facebookId:Ljava/lang/String;
    .end local v13           #iUid:Ljava/lang/String;
    .end local v14           #isAllDay:I
    .end local v16           #syncId:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 540
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    const/4 v10, 0x0

    .line 543
    if-eqz v9, :cond_0

    .line 544
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 545
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 546
    const/4 v9, 0x0

    goto :goto_2

    .line 525
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v8       #accountType:Ljava/lang/String;
    .restart local v12       #facebookId:Ljava/lang/String;
    .restart local v13       #iUid:Ljava/lang/String;
    .restart local v14       #isAllDay:I
    .restart local v16       #syncId:Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-static {v8}, Lcom/htc/util/calendar/tools/UriTools;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 526
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    .line 528
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/htc/util/calendar/tools/UriTools;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 529
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    goto :goto_1

    .line 532
    :cond_4
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v10

    goto :goto_1

    .line 537
    .end local v8           #accountType:Ljava/lang/String;
    .end local v12           #facebookId:Ljava/lang/String;
    .end local v13           #iUid:Ljava/lang/String;
    .end local v14           #isAllDay:I
    .end local v16           #syncId:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 543
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v4

    if-eqz v9, :cond_6

    .line 544
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 545
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 546
    const/4 v9, 0x0

    :cond_6
    throw v4
.end method

.method public static generateUniEventUriString(Landroid/content/Context;JJJ)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 75
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->generateUniEventUri(Landroid/content/Context;JJJ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UriTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event not exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", s/e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, ""

    goto :goto_0
.end method

.method public static getEventId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 276
    const-wide/16 v1, -0x1

    .line 277
    .local v1, id:J
    sget-object v5, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 278
    .local v3, match:I
    packed-switch v3, :pswitch_data_0

    .line 297
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v1

    .line 281
    :pswitch_1
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 282
    .local v4, uriCheck:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 284
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 286
    goto :goto_0

    .line 289
    .end local v4           #uriCheck:Landroid/net/Uri;
    :pswitch_2
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->doCheckEventExistForNotes(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    .line 290
    .local v0, ei:Lcom/htc/util/calendar/EventInstance;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/htc/util/calendar/EventInstance;->getId()J

    move-result-wide v1

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getEventInstance(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 346
    const/4 v7, 0x0

    .line 347
    .local v7, ei:Lcom/htc/util/calendar/EventInstance;
    const/4 v8, 0x0

    .line 349
    .local v8, eventUri:Landroid/net/Uri;
    sget-object v0, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 350
    .local v9, match:I
    packed-switch v9, :pswitch_data_0

    .line 365
    :goto_0
    :pswitch_0
    if-eqz v8, :cond_0

    .line 366
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 367
    .local v1, eventId:J
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 368
    .local v3, startTime:J
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x4

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .local v5, endTime:J
    move-object v0, p0

    .line 370
    invoke-static/range {v0 .. v6}, Lcom/htc/util/calendar/tools/UriTools;->doCheckEventExist(Landroid/content/Context;JJJ)Lcom/htc/util/calendar/EventInstance;

    move-result-object v7

    .end local v1           #eventId:J
    .end local v3           #startTime:J
    .end local v5           #endTime:J
    :cond_0
    move-object v0, v7

    .line 373
    :goto_1
    return-object v0

    .line 352
    :pswitch_1
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->adjustEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 353
    goto :goto_0

    .line 356
    :pswitch_2
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 357
    goto :goto_0

    .line 360
    :pswitch_3
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->doCheckEventExistForNotes(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    goto :goto_1

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getEventsUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .parameter "context"
    .parameter "eventUri"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 385
    sget-object v4, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 386
    .local v2, match:I
    const/4 v4, 0x3

    if-ne v4, v2, :cond_0

    .line 401
    .end local p1
    :goto_0
    return-object p1

    .line 387
    .restart local p1
    :cond_0
    if-eq v6, v2, :cond_1

    const/4 v4, 0x2

    if-ne v4, v2, :cond_4

    .line 388
    :cond_1
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 389
    .local v3, uriCheck:Landroid/net/Uri;
    if-nez v3, :cond_2

    move-object p1, v5

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 392
    .local v0, eventId:J
    cmp-long v4, v0, v7

    if-nez v4, :cond_3

    move-object p1, v5

    goto :goto_0

    .line 393
    :cond_3
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 395
    .end local v0           #eventId:J
    .end local v3           #uriCheck:Landroid/net/Uri;
    :cond_4
    const/4 v4, 0x4

    if-ne v4, v2, :cond_6

    .line 396
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->getEventId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 397
    .restart local v0       #eventId:J
    cmp-long v4, v0, v7

    if-nez v4, :cond_5

    move-object p1, v5

    goto :goto_0

    .line 398
    :cond_5
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .end local v0           #eventId:J
    :cond_6
    move-object p1, v5

    .line 401
    goto :goto_0
.end method

.method public static isEventExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 377
    invoke-static {p0, p1}, Lcom/htc/util/calendar/tools/UriTools;->getEventInstance(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    .line 379
    .local v0, ei:Lcom/htc/util/calendar/EventInstance;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isGoogleEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 61
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isHTCExchangeEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 48
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 53
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isHTCPCSyncEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 57
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static offsetToUTCDay(J)J
    .locals 9
    .parameter "localTime"

    .prologue
    const/4 v1, 0x0

    .line 407
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 408
    .local v0, t:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 409
    iget v6, v0, Landroid/text/format/Time;->year:I

    .line 410
    .local v6, y:I
    iget v5, v0, Landroid/text/format/Time;->month:I

    .line 411
    .local v5, m:I
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 413
    .local v4, d:I
    const-string v2, "UTC"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    move v2, v1

    move v3, v1

    .line 414
    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 416
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    .line 417
    .local v7, ret:J
    const-string v1, "UriTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offsetToUTCday: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-wide v7
.end method

.method public static toEventInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/util/calendar/EventInstance;
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 554
    if-nez p1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-object v0

    .line 556
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 557
    .local v9, uriValue:Landroid/net/Uri;
    sget-object v10, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v10, v9}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 558
    .local v7, match:I
    packed-switch v7, :pswitch_data_0

    .line 574
    :pswitch_0
    const-string v10, "UriTools"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No uri match, Uri : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :pswitch_1
    invoke-static {p0, v9}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 562
    .local v8, uriCheck:Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 564
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 565
    .local v1, eventId:J
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 566
    .local v3, startTime:J
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x4

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 568
    .local v5, endTime:J
    new-instance v0, Lcom/htc/util/calendar/EventInstance;

    invoke-direct/range {v0 .. v6}, Lcom/htc/util/calendar/EventInstance;-><init>(JJJ)V

    goto :goto_0

    .line 571
    .end local v1           #eventId:J
    .end local v3           #startTime:J
    .end local v5           #endTime:J
    .end local v8           #uriCheck:Landroid/net/Uri;
    :pswitch_2
    invoke-static {p0, v9}, Lcom/htc/util/calendar/tools/UriTools;->doCheckEventExistForNotes(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 21
    .parameter "context"
    .parameter "uniEvent"

    .prologue
    .line 95
    sget-object v3, Lcom/htc/util/calendar/tools/UriTools;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 96
    .local v16, match:I
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_0

    .line 152
    .end local p1
    :goto_0
    return-object p1

    .line 97
    .restart local p1
    :cond_0
    const/4 v3, 0x2

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    const/16 p1, 0x0

    goto :goto_0

    .line 99
    :cond_1
    const/4 v12, 0x0

    .line 101
    .local v12, desUri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 102
    .local v14, eventId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 103
    .local v18, startTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 105
    .local v7, endTime:J
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 106
    .local v10, accountType:Ljava/lang/String;
    const-string v3, "uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 107
    .local v20, uid:Ljava/lang/String;
    const/16 v17, 0x0

    .line 108
    .local v17, selection:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/util/calendar/tools/UriTools;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 109
    const-string v17, "iCalGUID"

    .line 118
    :goto_1
    const/4 v11, 0x0

    .line 120
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "events"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 122
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "allDay"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v20, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 128
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 129
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 130
    .local v9, _id:Ljava/lang/Long;
    const-string v3, "allDay"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 132
    .local v15, isAllDay:I
    const/4 v3, 0x1

    if-ne v15, v3, :cond_2

    .line 136
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v5, v18

    invoke-static/range {v3 .. v8}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUri(JJJ)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 144
    .end local v9           #_id:Ljava/lang/Long;
    .end local v15           #isAllDay:I
    :goto_2
    if-eqz v11, :cond_3

    .line 145
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 147
    const/4 v11, 0x0

    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    :goto_3
    move-object/from16 p1, v12

    .line 152
    goto/16 :goto_0

    .line 110
    .end local v11           #c:Landroid/database/Cursor;
    :cond_4
    invoke-static {v10}, Lcom/htc/util/calendar/tools/UriTools;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    const-string v17, "_sync_id"

    goto :goto_1

    .line 112
    :cond_5
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/htc/util/calendar/tools/UriTools;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 113
    const-string v17, "facebook_source_id"

    goto/16 :goto_1

    .line 115
    :cond_6
    const-string v17, "iCalGUID"

    goto/16 :goto_1

    .line 138
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 140
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v13

    .line 141
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    const/4 v12, 0x0

    .line 144
    if-eqz v11, :cond_3

    .line 145
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 147
    const/4 v11, 0x0

    goto :goto_3

    .line 144
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_8

    .line 145
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 146
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 147
    const/4 v11, 0x0

    :cond_8
    throw v3
.end method
