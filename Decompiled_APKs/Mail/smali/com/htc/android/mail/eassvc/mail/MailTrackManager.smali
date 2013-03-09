.class public Lcom/htc/android/mail/eassvc/mail/MailTrackManager;
.super Ljava/lang/Object;
.source "MailTrackManager.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailTrackManager"


# instance fields
.field mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field mContext:Landroid/content/Context;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailTrackManager"

    const-string v1, "MailTrackManager"

    invoke-static {v0, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    .line 38
    return-void
.end method

.method private static checkContain(Ljava/util/ArrayList;J)Z
    .locals 6
    .parameter
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 411
    if-nez p0, :cond_0

    .line 424
    :goto_0
    return v5

    .line 415
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 416
    .local v0, bRet:Ljava/lang/Boolean;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 417
    .local v4, objLong:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 418
    .local v2, l:J
    cmp-long v5, v2, p1

    if-nez v5, :cond_1

    .line 419
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 424
    .end local v2           #l:J
    .end local v4           #objLong:Ljava/lang/Long;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0
.end method

.method public static deleteMeetingResp(JLjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)I
    .locals 7
    .parameter "accountId"
    .parameter "collId"
    .parameter "uid"
    .parameter "usrResp"
    .parameter "context"

    .prologue
    .line 268
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_uid=\'%s\' AND _collectionId=\'%s\' AND _meetingResp=%d AND _accountId=%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, where:Ljava/lang/String;
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 270
    .local v0, count:I
    return v0
.end method

.method public static getMeetingRespCalendarEventId(JLjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)J
    .locals 11
    .parameter "accountId"
    .parameter "collId"
    .parameter "uid"
    .parameter "usrResp"
    .parameter "context"

    .prologue
    .line 249
    const-wide/16 v6, -0x1

    .line 250
    .local v6, calendarEventId:J
    const/4 v8, 0x0

    .line 251
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_calendarEventId"

    aput-object v4, v2, v1

    .line 254
    .local v2, proj:[Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_uid=\'%s\' AND _collectionId=\'%s\' AND _meetingResp=%d AND _accountId=%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v5, v9

    const/4 v9, 0x1

    aput-object p2, v5, v9

    const/4 v9, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    const/4 v9, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v5, v9

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 256
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 260
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_1
    return-wide v6

    .line 260
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 261
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_2
    throw v1
.end method


# virtual methods
.method public addSendMeetingMailRecord(J)V
    .locals 6
    .parameter "calendarEventId"

    .prologue
    const/4 v5, 0x0

    .line 182
    sget-boolean v1, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailTrackManager"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSendMeetingMailRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 183
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_accountId"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    const-string v1, "_message"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v1, "_modify"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v1, "_delete"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v1, "_move"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v1, "_meetingResp"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v1, "_calendarEventId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 192
    return-void
.end method

.method public combineMoveCommand(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)V
    .locals 31
    .parameter "moveItems"

    .prologue
    .line 336
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v7, "> combineMoveCommand"

    invoke-static {v3, v4, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 337
    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 338
    :cond_1
    const-string v3, "MailTrackManager"

    const-string v4, "combine move command failed: parameter is null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_2
    :goto_0
    return-void

    .line 342
    :cond_3
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    .line 344
    .local v18, item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_4

    .line 345
    move-object/from16 v0, v18

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    .end local v18           #item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    :cond_5
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v25, waitList_param1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v26, waitList_param2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v27, waitList_param2_id:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v11, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "_message"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "_param"

    aput-object v4, v5, v3

    .line 355
    .local v5, proj:[Ljava/lang/String;
    const-string v3, ","

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 356
    .local v17, idSeq:Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_message in (%s) AND _move=1 AND _accountId=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v17, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    aput-object v29, v7, v8

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, whereId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 359
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 360
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 362
    :cond_6
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 363
    .local v15, id:J
    const-string v3, "_message"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 364
    .local v22, message:J
    const-string v3, "_param"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 365
    .local v24, param:I
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-gtz v3, :cond_a

    .line 379
    :cond_7
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 384
    .end local v15           #id:J
    .end local v22           #message:J
    .end local v24           #param:I
    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 385
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_f

    .line 386
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 387
    .local v20, lp:J
    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->checkContain(Ljava/util/ArrayList;J)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 388
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 367
    .end local v13           #i:I
    .end local v20           #lp:J
    .restart local v15       #id:J
    .restart local v22       #message:J
    .restart local v24       #param:I
    :cond_a
    const-wide/16 v3, 0x0

    cmp-long v3, v22, v3

    if-gtz v3, :cond_b

    .line 368
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_b
    const/4 v3, 0x2

    move/from16 v0, v24

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    move/from16 v0, v24

    if-ne v0, v3, :cond_e

    .line 373
    :cond_c
    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v0, v22

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 402
    .end local v15           #id:J
    .end local v22           #message:J
    .end local v24           #param:I
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_d

    .line 403
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_d
    throw v3

    .line 374
    .restart local v15       #id:J
    .restart local v22       #message:J
    .restart local v24       #param:I
    :cond_e
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_7

    .line 375
    :try_start_1
    new-instance v3, Ljava/lang/Long;

    move-wide/from16 v0, v22

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v3, Ljava/lang/Long;

    move-wide v0, v15

    invoke-direct {v3, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 393
    .end local v15           #id:J
    .end local v22           #message:J
    .end local v24           #param:I
    :cond_f
    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_12

    .line 394
    const-string v3, ","

    const/4 v4, 0x1

    invoke-static {v11, v3, v4}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 395
    .local v12, delSeq:Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_id in (%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v7, v8

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 396
    .local v28, whereDel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v3, v4, v0, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 397
    .local v9, count:I
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "MailTrackManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "combineMoveCmd: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v9           #count:I
    .end local v12           #delSeq:Ljava/lang/String;
    .end local v28           #whereDel:Ljava/lang/String;
    :cond_10
    :goto_4
    if-eqz v10, :cond_11

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_11

    .line 403
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_11
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MailTrackManager"

    const-string v4, "< combineMoveCommand"

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :cond_12
    :try_start_2
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string v3, "MailTrackManager"

    const-string v4, "combineMoveCmd is empty"

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public deleteAccountCommand()I
    .locals 8

    .prologue
    .line 274
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_accountId=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 276
    .local v0, count:I
    return v0
.end method

.method public deleteDelCommand(Ljava/util/ArrayList;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 280
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 289
    :cond_1
    :goto_0
    return v3

    .line 284
    :cond_2
    const-string v5, ","

    invoke-static {p1, v5, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, uidSeq:Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_accountId=%d AND _uid in (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object v1, v7, v3

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, where:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, deleteRaw:I
    sget-boolean v5, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "MailTrackManager"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteDelCommand: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 289
    :cond_3
    if-gtz v0, :cond_1

    move v3, v4

    goto :goto_0
.end method

.method public deleteEmptyFolderCommand(Ljava/lang/String;)V
    .locals 8
    .parameter "collId"

    .prologue
    .line 149
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_accountId=%d AND _collectionId=\'%s\' AND _delete=2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, count:I
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailTrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteEmptyFolderCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public deleteMeetingMailRecord(J)V
    .locals 8
    .parameter "calendarEventId"

    .prologue
    .line 195
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_accountId=%d AND _meetingResp=%d AND _calendarEventId=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, count:I
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailTrackManager"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteMeetingMailRecord: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method

.method public deleteUpdCommand(Ljava/util/ArrayList;)Z
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, updList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 293
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v6, v7

    .line 307
    :cond_1
    :goto_0
    return v6

    .line 297
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v2, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;

    .line 299
    .local v4, updInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;
    iget-object v8, v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;->uid:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    .end local v4           #updInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;
    :cond_3
    const-string v8, ","

    invoke-static {v2, v8, v6}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, uidSeq:Ljava/lang/String;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "_accountId=%d AND _uid in (%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v11, v11, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    aput-object v3, v10, v6

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, where:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v5, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, deleteRaw:I
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "MailTrackManager"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteUpdCommand: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 307
    :cond_4
    if-gtz v0, :cond_1

    move v6, v7

    goto :goto_0
.end method

.method public getDelList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "collId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "MailTrackManager"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v4, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v1, "getDelList error: parameter empty"

    invoke-static {v0, v4, v5, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-object v7

    .line 53
    :cond_1
    const/4 v6, 0x0

    .line 54
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 56
    .local v7, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_message"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_uid"

    aput-object v1, v2, v0

    .line 57
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_accountId=%d AND _collectionId=\'%s\' AND _delete=1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 59
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v7           #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string v0, "_uid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, strUid:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MailTrackManager"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item(s) need to be deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    move-object v7, v8

    .line 68
    .end local v8           #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #strUid:Ljava/lang/String;
    .restart local v7       #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 68
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_5
    throw v0

    .end local v7           #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v8       #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8           #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public getEmptyFolderCommand(Ljava/lang/String;)Z
    .locals 10
    .parameter "collId"

    .prologue
    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, bRet:Z
    const/4 v7, 0x0

    .line 134
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 135
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_accountId=%d AND _collectionId=\'%s\' AND _delete=2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 137
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v6, 0x1

    .line 141
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_1
    return v6

    .line 141
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_2
    throw v0
.end method

.method public getMeetingInvitation()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailTrackManager"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v4, "- getMeetingInvitation"

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 221
    :cond_0
    const/4 v6, 0x0

    .line 222
    .local v6, cur:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 224
    .local v9, meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_meetingResp"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_calendarEventId"

    aput-object v1, v2, v0

    .line 225
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_message=0 AND _modify=0 AND _delete=0 AND _move=0 AND _meetingResp=%d AND _accountId=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    iget-object v11, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v11, v11, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 227
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailTrackManager"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v4, "easTracking table: need to send meeting invitation"

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 229
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v9           #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    .local v10, meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    :cond_2
    :try_start_1
    new-instance v8, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;

    invoke-direct {v8}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;-><init>()V

    .line 232
    .local v8, meetingInvitation:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
    const-string v0, "_meetingResp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;->meetResp:I

    .line 233
    const-string v0, "_calendarEventId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;->calendarEventId:J

    .line 234
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_2

    move-object v9, v10

    .line 241
    .end local v8           #meetingInvitation:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
    .end local v10           #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    .restart local v9       #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 242
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_4
    return-object v9

    .line 237
    :catch_0
    move-exception v7

    .line 238
    .local v7, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    const/4 v9, 0x0

    .line 241
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 242
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_5
    throw v0

    .end local v9           #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v10       #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    .restart local v9       #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    goto :goto_2

    .line 237
    .end local v9           #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    .restart local v10       #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    :catch_1
    move-exception v7

    move-object v9, v10

    .end local v10           #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    .restart local v9       #meetingInvitationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    goto :goto_1
.end method

.method public getMeetingResp()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailTrackManager"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v4, "- getMeetingResp()"

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 157
    :cond_0
    const/4 v6, 0x0

    .line 158
    .local v6, cur:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v8, meetingRespList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_uid"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_collectionId"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_meetingResp"

    aput-object v1, v2, v0

    .line 161
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_message=0 AND _modify=0 AND _delete=0 AND _move=0 AND _meetingResp != 0 AND _accountId=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v9, v9, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 163
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailTrackManager"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v4, "easTracking table: need to send meeting resp"

    invoke-static {v0, v1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 166
    :cond_1
    new-instance v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;

    invoke-direct {v7}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;-><init>()V

    .line 167
    .local v7, meetingResp:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
    const-string v0, "_uid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;->requestId:Ljava/lang/String;

    .line 168
    const-string v0, "_collectionId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;->collId:Ljava/lang/String;

    .line 169
    const-string v0, "_meetingResp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;->meetResp:I

    .line 170
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 174
    .end local v7           #meetingResp:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_3
    return-object v8

    .line 174
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_4
    throw v0
.end method

.method public getUpdList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .parameter "collId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    const-string v2, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v6, "getUpdList error: parameter empty"

    invoke-static {v2, v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 79
    const/16 v16, 0x0

    .line 127
    :cond_0
    :goto_0
    return-object v16

    .line 82
    :cond_1
    const/4 v8, 0x0

    .line 83
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 85
    .local v15, updList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;>;"
    const/4 v2, 0x4

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_uid"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "_modify"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "_param"

    aput-object v3, v4, v2

    .line 86
    .local v4, proj:[Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_accountId=%d AND _collectionId=\'%s\' AND _modify in (\'1\', \'2\')"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 88
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    .line 89
    :cond_2
    const/16 v16, 0x0

    .line 123
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    .end local v15           #updList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;>;"
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 92
    .restart local v15       #updList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;>;"
    :cond_3
    :try_start_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .end local v15           #updList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;>;"
    .local v16, updList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;>;"
    :cond_4
    const/4 v13, -0x1

    .local v13, read:I
    const/4 v9, -0x1

    .line 95
    .local v9, flag:I
    :try_start_2
    const-string v2, "_uid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 96
    .local v14, strUid:Ljava/lang/String;
    const-string v2, "_modify"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 97
    .local v11, modify:I
    const-string v2, "_param"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 99
    .local v12, param:I
    const/4 v2, 0x1

    if-ne v11, v2, :cond_9

    if-nez v12, :cond_9

    .line 100
    const/4 v13, 0x0

    .line 109
    :cond_5
    :goto_2
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, -0x1

    if-ne v13, v2, :cond_6

    const/4 v2, -0x1

    if-eq v9, v2, :cond_7

    .line 110
    :cond_6
    new-instance v10, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;

    invoke-direct {v10}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;-><init>()V

    .line 111
    .local v10, info:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;
    iput-object v14, v10, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;->uid:Ljava/lang/String;

    .line 112
    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;->collId:Ljava/lang/String;

    .line 113
    const/4 v2, -0x1

    if-eq v13, v2, :cond_c

    .line 114
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;->read:Ljava/lang/String;

    .line 118
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v10           #info:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 121
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "collId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " item(s) need to be updated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :cond_8
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 101
    :cond_9
    const/4 v2, 0x1

    if-ne v11, v2, :cond_a

    const/4 v2, 0x1

    if-ne v12, v2, :cond_a

    .line 102
    const/4 v13, 0x1

    goto :goto_2

    .line 103
    :cond_a
    const/4 v2, 0x2

    if-ne v11, v2, :cond_b

    if-nez v12, :cond_b

    .line 104
    const/4 v9, 0x0

    goto :goto_2

    .line 105
    :cond_b
    const/4 v2, 0x2

    if-ne v11, v2, :cond_5

    const/4 v2, 0x2

    if-ne v12, v2, :cond_5

    .line 106
    const/4 v9, 0x2

    goto/16 :goto_2

    .line 116
    .restart local v10       #info:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;
    :cond_c
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;->flag:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 123
    .end local v10           #info:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;
    .end local v11           #modify:I
    .end local v12           #param:I
    .end local v14           #strUid:Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v15, v16

    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #flag:I
    .end local v13           #read:I
    .end local v16           #updList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;>;"
    .restart local v15       #updList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;>;"
    :goto_4
    if-eqz v8, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_d

    .line 124
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_d
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_4
.end method

.method public isMeetingRecordExist(J)Z
    .locals 12
    .parameter "calendarEventId"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 201
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_accountId=%d AND _meetingResp=%d AND _calendarEventId=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, where:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 203
    .local v6, bRet:Ljava/lang/Boolean;
    const/4 v7, 0x0

    .line 205
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 206
    .local v2, proj:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 207
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 211
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 211
    .end local v2           #proj:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_2
    throw v0
.end method

.method public processMoveMailFail(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)Z
    .locals 17
    .parameter "moveItems"

    .prologue
    .line 535
    sget-boolean v1, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v3, "- processMoveMailFail"

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 536
    :cond_0
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 537
    :cond_1
    const-string v1, "MailTrackManager"

    const-string v2, "easTrackMoveMailFailProced failed: parameter is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v7, 0x0

    .line 578
    :cond_2
    :goto_0
    return v7

    .line 541
    :cond_3
    const/4 v7, 0x0

    .line 542
    .local v7, bRet:Z
    const/4 v8, 0x0

    .line 543
    .local v8, curTracking:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v10, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    .line 547
    .local v14, item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_message=%d AND _move=1 AND _accountId=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v15, v14, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v15, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 550
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    .line 566
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 567
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 553
    :cond_5
    :try_start_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 554
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "_message"

    iget-wide v2, v14, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    const-string v1, "_uid"

    iget-object v2, v14, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v1, "_collectionId"

    iget-object v2, v14, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcFldServerId:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "_move"

    const-string v2, "1"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v1, "_accountId"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 566
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 561
    .end local v4           #where:Ljava/lang/String;
    .end local v9           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 562
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-static {v1, v2, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    const/4 v7, 0x0

    .line 566
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 567
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 566
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 567
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 566
    :cond_6
    throw v1

    .line 572
    .end local v14           #item:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 573
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/content/ContentValues;

    .line 574
    .local v11, cvs:[Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v11}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 577
    .end local v11           #cvs:[Landroid/content/ContentValues;
    :cond_8
    const/4 v7, 0x1

    .line 578
    goto/16 :goto_0
.end method

.method public processMoveMailSuccess(Ljava/util/ArrayList;)Z
    .locals 28
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 429
    .local p1, moveMailRespList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;>;"
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v6, "> processMoveMailSuccess"

    invoke-static {v2, v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 430
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    :cond_1
    const-string v2, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v6, "move mail success proced failed: parameter is null"

    invoke-static {v2, v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 432
    const/4 v2, 0x0

    .line 531
    :goto_0
    return v2

    .line 435
    :cond_2
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v19, moveFailedIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v21, moveSuccessfulIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v20, moveSuccessList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v23, providerOpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v22, 0x0

    .line 441
    .local v22, opBuilder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v11, 0x0

    .line 443
    .local v11, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;

    .line 444
    .local v16, item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->status:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->bInvalid_src_colid:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 445
    :cond_3
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->messageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 525
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 526
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 525
    :cond_4
    throw v2

    .line 447
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;
    :cond_5
    :try_start_1
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->messageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    .end local v16           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;
    :cond_6
    if-eqz v20, :cond_9

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 456
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;

    .line 457
    .restart local v16       #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->DstMsgId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 458
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "MailTrackManager"

    const-string v3, "move mail update message, dstMsgid is null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 462
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "_uid="

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    .local v5, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->SrcMsgId:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 464
    const-string v2, " AND _account="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 466
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 467
    .local v12, cv:Landroid/content/ContentValues;
    const-string v2, "_uid"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->DstMsgId:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sSummariesMoveMailURI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v22

    .line 470
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 471
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 472
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "move mail update message table: where: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->DstMsgId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 477
    .end local v5           #where:Ljava/lang/StringBuilder;
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v16           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;
    :cond_9
    if-eqz v23, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "mail"

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 486
    :cond_a
    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 488
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    .line 489
    .local v15, idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_accountId=%d AND _message in (%s) AND _move=1 AND _param=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    aput-object v26, v6, v7

    const/4 v7, 0x1

    aput-object v15, v6, v7

    const/4 v7, 0x2

    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v6, v7

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 490
    .local v25, whereId:Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 491
    .local v13, cv1:Landroid/content/ContentValues;
    const-string v2, "_param"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v13, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 493
    .local v9, count:I
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "easTrackMoveMailSuccessProced update: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", where: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 496
    :cond_b
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_c
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;

    .line 497
    .restart local v16       #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->DstMsgId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->bInvalid_src_colid:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 498
    :cond_d
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update tracking failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->SrcMsgId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto :goto_3

    .line 502
    :cond_e
    const-wide/16 v17, -0x1

    .line 503
    .local v17, mailboxId:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_account=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND _uid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->DstMsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_mailboxId"

    aput-object v3, v4, v2

    .line 505
    .local v4, proj:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->MESSAGES_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 506
    if-eqz v11, :cond_f

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 507
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 509
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxSvrIdbyMailboxId(JLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v8

    .line 511
    .local v8, collId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_message=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->messageId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 512
    .local v24, where1:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 513
    .restart local v12       #cv:Landroid/content/ContentValues;
    const-string v2, "_uid"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->DstMsgId:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 515
    const-string v2, "_collectionId"

    invoke-virtual {v12, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v12, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 521
    .local v10, count2:I
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "MailTrackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update easTracking table: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", from: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->SrcMsgId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "=>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;->DstMsgId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", collId: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 517
    .end local v10           #count2:I
    :cond_11
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_10

    const-string v2, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v6, "Can\'t retrieve mailbox info"

    invoke-static {v2, v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 525
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #collId:Ljava/lang/String;
    .end local v9           #count:I
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v13           #cv1:Landroid/content/ContentValues;
    .end local v15           #idSeq:Ljava/lang/String;
    .end local v16           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;
    .end local v17           #mailboxId:J
    .end local v24           #where1:Ljava/lang/String;
    .end local v25           #whereId:Ljava/lang/String;
    :cond_12
    if-eqz v11, :cond_13

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_13

    .line 526
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_13
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v2, :cond_14

    const-string v2, "MailTrackManager"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v6, "<<< processMoveMailSuccess"

    invoke-static {v2, v3, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 531
    :cond_14
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailTrackManager"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v2, "release"

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 42
    :cond_0
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mContext:Landroid/content/Context;

    .line 43
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 44
    iput-object v3, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    .line 45
    return-void
.end method

.method public setMoveMailFlag(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;I)Z
    .locals 13
    .parameter "moveItems"
    .parameter "flag"

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 311
    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 312
    :cond_0
    const-string v5, "MailTrackManager"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v8, "set move mail flag failed: parameter is null"

    invoke-static {v5, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    move v5, v6

    .line 332
    :cond_1
    :goto_0
    return v5

    .line 316
    :cond_2
    sget-boolean v7, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "MailTrackManager"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setMoveMailFlag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 317
    :cond_3
    invoke-static {p1}, Lcom/htc/android/mail/database/ExchangeUtil;->getMsgIdList(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)Ljava/util/List;

    move-result-object v2

    .line 318
    .local v2, msgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_5

    :cond_4
    move v5, v6

    .line 319
    goto :goto_0

    .line 322
    :cond_5
    const-string v7, ","

    invoke-static {v2, v7, v5}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, where:Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "_accountId=%d AND _message in (%s) AND _move=1 AND _param <> %d"

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    aput-object v3, v9, v5

    const/4 v6, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, whereId:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 325
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "_param"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v1, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 327
    .local v0, count:I
    sget-boolean v6, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v6, :cond_6

    if-gtz v0, :cond_6

    .line 328
    const-string v6, "MailTrackManager"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set move mail flag failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_6
    sget-boolean v6, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 330
    const-string v6, "MailTrackManager"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set move mail flag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
