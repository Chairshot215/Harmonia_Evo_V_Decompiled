.class public Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;
.super Landroid/os/Handler;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcUtils/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WorkHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$Entry;,
        Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;,
        Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;
    }
.end annotation


# instance fields
.field private final SQL_IN_LIMIT:I

.field eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2
    .parameter "looper"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 219
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->SQL_IN_LIMIT:I

    .line 221
    new-instance v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;-><init>(Lcom/android/providers/contacts/HtcUtils/NotificationUtils$1;)V

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    .line 222
    new-instance v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;-><init>(Lcom/android/providers/contacts/HtcUtils/NotificationUtils$1;)V

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    .line 226
    iput-object p2, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mContext:Landroid/content/Context;

    .line 227
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mResolver:Landroid/content/ContentResolver;

    .line 228
    return-void
.end method

.method private getUnreadEvent(Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;)Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;
    .locals 27
    .parameter "result"

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "une_event"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 439
    .local v24, isEventEnabled:I
    if-nez v24, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-object p1

    .line 442
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 443
    .local v9, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 444
    .local v11, current:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "show_events_within_days"

    const/4 v6, 0x3

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 445
    .local v14, days:I
    const-wide/32 v5, 0x5265c00

    int-to-long v7, v14

    mul-long/2addr v5, v7

    add-long/2addr v5, v11

    invoke-virtual {v9, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 446
    const/16 v3, 0xb

    const/16 v5, 0x17

    invoke-virtual {v9, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 447
    const/16 v3, 0xc

    const/16 v5, 0x3b

    invoke-virtual {v9, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 448
    const/16 v3, 0xd

    const/16 v5, 0x3b

    invoke-virtual {v9, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 449
    const/16 v3, 0xe

    const/16 v5, 0x3e7

    invoke-virtual {v9, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 450
    move-wide/from16 v25, v11

    .line 451
    .local v25, startTime:J
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 452
    .local v16, endTime:J
    sget-object v3, Lcom/htc/provider/HtcContactsContract$EventInstance;->WITH_RANGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "e_start"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v25

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "e_end"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 453
    .local v4, queryUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const-string v6, "notify_location=0 AND in_visible_group=1 AND is_read=0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 461
    .local v13, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->clear()V

    .line 462
    move-wide/from16 v0, v25

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->startTime:J

    .line 463
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->endTime:J

    .line 464
    if-eqz v13, :cond_0

    .line 466
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 467
    .local v10, count:I
    if-lez v10, :cond_2

    .line 468
    const-string v3, "_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 469
    .local v20, idxEventId:I
    const-string v3, "display_name"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 470
    .local v22, idxName:I
    const-string v3, "contact_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 471
    .local v19, idxContactId:I
    const-string v3, "raw_contact_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 472
    .local v23, idxRawContactId:I
    const-string v3, "lookup"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 474
    .local v21, idxLookup:I
    move-object/from16 v0, p1

    iput v10, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    .line 475
    new-array v3, v10, [Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->names:[Ljava/lang/String;

    .line 476
    new-array v3, v10, [J

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->contactId:[J

    .line 477
    new-array v3, v10, [J

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->rawContactId:[J

    .line 478
    new-array v3, v10, [J

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->eventId:[J

    .line 479
    new-array v3, v10, [Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->lookupKey:[Ljava/lang/String;

    .line 480
    const/16 v18, 0x0

    .line 481
    .local v18, i:I
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 482
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->names:[Ljava/lang/String;

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v18

    .line 483
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->contactId:[J

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v3, v18

    .line 484
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->rawContactId:[J

    move/from16 v0, v23

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v3, v18

    .line 485
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->eventId:[J

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v3, v18

    .line 486
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->lookupKey:[Ljava/lang/String;

    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 495
    .end local v18           #i:I
    .end local v19           #idxContactId:I
    .end local v20           #idxEventId:I
    .end local v21           #idxLookup:I
    .end local v22           #idxName:I
    .end local v23           #idxRawContactId:I
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 491
    .end local v10           #count:I
    :catch_0
    move-exception v15

    .line 492
    .local v15, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "NotificationUtils"

    const-string v5, "Exception when trying to query People event notification"

    invoke-static {v3, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private getUnreadUpdate(Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;)Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;
    .locals 0
    .parameter "result"

    .prologue
    .line 615
    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 232
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v12, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 235
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->getUnreadUpdate(Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;)Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    .line 238
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->getUnreadEvent(Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;)Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v3, v3, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    add-int v19, v2, v3

    .line 240
    .local v19, totalCount:I
    const/4 v10, 0x0

    .line 241
    .local v10, intent:Landroid/content/Intent;
    const-string v5, ""

    .line 242
    .local v5, text1:Ljava/lang/String;
    const-string v9, ""

    .line 244
    .local v9, text2:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_4

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    if-lez v2, :cond_3

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-object v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->contactId:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-object v4, v4, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->lookupKey:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 248
    .local v20, uri:Landroid/net/Uri;
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "tab"

    const-string v4, "UnE"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v20

    .line 249
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v10, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 250
    .restart local v10       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0500a7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    .end local v20           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    if-eqz v10, :cond_0

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-object v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->names:[Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-object v11, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->names:[Ljava/lang/String;

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_b

    aget-object v18, v11, v13

    .line 296
    .local v18, name:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 299
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 295
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 252
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v17           #len$:I
    .end local v18           #name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    if-lez v2, :cond_1

    .line 257
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "tab"

    const-string v4, "UnE"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v20

    .line 259
    .restart local v20       #uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v10, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    .restart local v10       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0500a5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 261
    goto :goto_1

    .line 264
    .end local v20           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_a

    .line 265
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "tab"

    const-string v4, "UnE"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v20

    .line 266
    .restart local v20       #uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v10, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 268
    .restart local v10       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    if-lez v2, :cond_5

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0500a6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v7, v7, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 271
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    if-nez v2, :cond_6

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0500a4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v7, v7, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 274
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0500a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 277
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0500ab

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v7, v7, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 280
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0500aa

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v7, v7, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 283
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f0500a8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget v7, v7, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget v7, v7, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 289
    .end local v20           #uri:Landroid/net/Uri;
    :cond_a
    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->access$200()Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1

    .line 303
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget-object v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->names:[Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->updateResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;

    iget-object v11, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$UpdateResult;->names:[Ljava/lang/String;

    .restart local v11       #arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_d

    aget-object v18, v11, v13

    .line 305
    .restart local v18       #name:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 308
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 304
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 312
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v17           #len$:I
    .end local v18           #name:Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->access$200()Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    move-result-object v2

    iget-object v0, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    new-instance v2, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f020005

    const-wide/16 v6, 0x0

    move-object v8, v5

    invoke-direct/range {v2 .. v10}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 377
    .end local v5           #text1:Ljava/lang/String;
    .end local v9           #text2:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v19           #totalCount:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    if-eqz v2, :cond_12

    .line 378
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-wide v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-wide v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->endTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-object v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->eventId:[J

    if-eqz v2, :cond_12

    .line 383
    const/16 v16, 0x0

    .line 384
    .local v16, idCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-object v11, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->eventId:[J

    .local v11, arr$:[J
    array-length v0, v11

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_4
    move/from16 v0, v17

    if-ge v13, v0, :cond_10

    aget-wide v14, v11, v13

    .line 385
    .local v14, id:J
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 386
    const/16 v2, 0x2c

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    :cond_e
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 389
    add-int/lit8 v16, v16, 0x1

    .line 390
    const/16 v2, 0xc8

    move/from16 v0, v16

    if-lt v0, v2, :cond_f

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$EventInstance;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-wide v6, v6, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->startTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND time<="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-wide v6, v6, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->endTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND _id IN("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 394
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 395
    const/16 v16, 0x0

    .line 384
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 398
    .end local v14           #id:J
    :cond_10
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/provider/HtcContactsContract$EventInstance;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-wide v6, v6, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->startTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND time<="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    iget-wide v6, v6, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->endTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND _id IN("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;->eventResult:Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;

    invoke-virtual {v2}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler$EventResult;->clear()V

    .line 406
    .end local v11           #arr$:[J
    .end local v13           #i$:I
    .end local v16           #idCount:I
    .end local v17           #len$:I
    :cond_12
    const-string v2, "a"

    const-string v3, "cancel notification"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->access$200()Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mNotificationMgr:Landroid/app/NotificationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
