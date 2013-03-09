.class public Lcom/android/mms/util/SimIoUtil;
.super Ljava/lang/Object;
.source "SimIoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/SimIoUtil$SimInfo;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SIM_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "SimIoUtil"

.field private static mDoneSimSmsAutoSync:Z

.field private static syncSMSrunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    const-string v0, "content://sms/sim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/SimIoUtil;->SIM_URI:Landroid/net/Uri;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/SimIoUtil;->PROJECTION:[Ljava/lang/String;

    .line 235
    new-instance v0, Lcom/android/mms/util/SimIoUtil$1;

    invoke-direct {v0}, Lcom/android/mms/util/SimIoUtil$1;-><init>()V

    sput-object v0, Lcom/android/mms/util/SimIoUtil;->syncSMSrunnable:Ljava/lang/Runnable;

    .line 830
    sput-boolean v3, Lcom/android/mms/util/SimIoUtil;->mDoneSimSmsAutoSync:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method

.method private static copyToPhoneMemory(Landroid/database/Cursor;)V
    .locals 29
    .parameter "cursor"

    .prologue
    .line 291
    const/4 v11, 0x0

    .line 292
    .local v11, uri:Landroid/net/Uri;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v16, body:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    const-string v2, "address"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, address:Ljava/lang/String;
    const-string v2, "body"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v2, "date"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 299
    .local v6, date:Ljava/lang/Long;
    const-string v2, "index_on_sim"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 300
    .local v8, sIndexes:Ljava/lang/String;
    const-string v2, "read"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 302
    .local v26, read:I
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v17

    .line 305
    .local v17, context:Landroid/content/Context;
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v26, :cond_1

    const/4 v7, 0x0

    :goto_0
    invoke-static/range {v2 .. v8}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 394
    .end local v3           #address:Ljava/lang/String;
    .end local v6           #date:Ljava/lang/Long;
    .end local v8           #sIndexes:Ljava/lang/String;
    .end local v17           #context:Landroid/content/Context;
    .end local v26           #read:I
    :goto_1
    if-eqz v11, :cond_0

    .line 396
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v23

    .line 397
    .local v23, ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Lcom/android/mms/util/VCardSaveIndicatorCache;->setSMSvCardtoParse(ILjava/lang/String;)V

    .line 399
    .end local v23           #ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    :cond_0
    return-void

    .line 305
    .restart local v3       #address:Ljava/lang/String;
    .restart local v6       #date:Ljava/lang/Long;
    .restart local v8       #sIndexes:Ljava/lang/String;
    .restart local v17       #context:Landroid/content/Context;
    .restart local v26       #read:I
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 306
    :catch_0
    move-exception v18

    .line 307
    .local v18, e:Landroid/database/sqlite/SQLiteException;
    invoke-static/range {v17 .. v18}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 308
    .end local v18           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v18

    .line 309
    .local v18, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 312
    .end local v3           #address:Ljava/lang/String;
    .end local v6           #date:Ljava/lang/Long;
    .end local v8           #sIndexes:Ljava/lang/String;
    .end local v17           #context:Landroid/content/Context;
    .end local v18           #e:Ljava/lang/IllegalArgumentException;
    .end local v26           #read:I
    :cond_2
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const/16 v25, 0x0

    .line 317
    .local v25, messageId:I
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v27, simInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/util/SimIoUtil$SimInfo;>;"
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 321
    :cond_3
    :goto_2
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 322
    const-string v2, "message_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 324
    const/16 v19, 0x0

    .line 325
    .local v19, find:Z
    if-eqz v25, :cond_5

    .line 326
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/util/SimIoUtil$SimInfo;

    .line 327
    .local v22, info:Lcom/android/mms/util/SimIoUtil$SimInfo;
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/mms/util/SimIoUtil$SimInfo;->mMessageId:I

    move/from16 v0, v25

    if-ne v2, v0, :cond_4

    .line 328
    const/16 v19, 0x1

    .line 334
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v22           #info:Lcom/android/mms/util/SimIoUtil$SimInfo;
    :cond_5
    if-nez v19, :cond_3

    .line 335
    new-instance v22, Lcom/android/mms/util/SimIoUtil$SimInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Lcom/android/mms/util/SimIoUtil$SimInfo;-><init>(Lcom/android/mms/util/SimIoUtil$1;)V

    .line 336
    .restart local v22       #info:Lcom/android/mms/util/SimIoUtil$SimInfo;
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/mms/util/SimIoUtil$SimInfo;->mStartPosition:I

    .line 337
    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/mms/util/SimIoUtil$SimInfo;->mMessageId:I

    .line 338
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 343
    .end local v19           #find:Z
    .end local v22           #info:Lcom/android/mms/util/SimIoUtil$SimInfo;
    :cond_6
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v21, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    move-object/from16 v28, v11

    .end local v11           #uri:Landroid/net/Uri;
    .local v28, uri:Landroid/net/Uri;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/util/SimIoUtil$SimInfo;

    .line 351
    .restart local v22       #info:Lcom/android/mms/util/SimIoUtil$SimInfo;
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/mms/util/SimIoUtil$SimInfo;->mStartPosition:I

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 353
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 355
    const-string v2, "address"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    .restart local v3       #address:Ljava/lang/String;
    const-string v2, "body"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v2, "date"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 358
    .restart local v6       #date:Ljava/lang/Long;
    const-string v2, "index_on_sim"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 359
    .restart local v8       #sIndexes:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/android/mms/util/SimIndexUtil;->addSimIndexes(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 360
    const-string v2, "read"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 361
    .restart local v26       #read:I
    const-string v2, "message_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 362
    const-string v2, "is_cdma_format"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 363
    .local v24, isCdmaFormat:I
    const-string v2, "copyToPhoneMemory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "~~~~~~~~~~~~~~~~~~~~~~~~isCdmaFormat : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-eqz v25, :cond_8

    .line 365
    :cond_7
    :goto_4
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    .line 366
    const-string v2, "message_id"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v0, v25

    if-ne v0, v2, :cond_7

    .line 367
    const-string v2, "index_on_sim"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 368
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/android/mms/util/SimIndexUtil;->addSimIndexes(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    .line 369
    const-string v2, "body"

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 375
    :cond_8
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    if-nez v26, :cond_a

    const/4 v14, 0x0

    :goto_5
    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/SimIndexUtil;->turnIndexesToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v15

    move-object v10, v3

    move-object v13, v6

    invoke-static/range {v9 .. v15}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    .line 385
    .end local v28           #uri:Landroid/net/Uri;
    .restart local v11       #uri:Landroid/net/Uri;
    :goto_6
    if-eqz v11, :cond_9

    .line 386
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 387
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "is_cdma_format"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v12           #values:Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v28, v11

    .line 390
    .end local v11           #uri:Landroid/net/Uri;
    .restart local v28       #uri:Landroid/net/Uri;
    goto/16 :goto_3

    .line 375
    :cond_a
    const/4 v14, 0x1

    goto :goto_5

    .line 378
    :catch_2
    move-exception v18

    .line 379
    .local v18, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    move-object/from16 v11, v28

    .line 382
    .end local v28           #uri:Landroid/net/Uri;
    .restart local v11       #uri:Landroid/net/Uri;
    goto :goto_6

    .line 380
    .end local v11           #uri:Landroid/net/Uri;
    .end local v18           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v28       #uri:Landroid/net/Uri;
    :catch_3
    move-exception v18

    .line 381
    .local v18, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object/from16 v11, v28

    .end local v28           #uri:Landroid/net/Uri;
    .restart local v11       #uri:Landroid/net/Uri;
    goto :goto_6

    .end local v3           #address:Ljava/lang/String;
    .end local v6           #date:Ljava/lang/Long;
    .end local v8           #sIndexes:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    .end local v18           #e:Ljava/lang/IllegalArgumentException;
    .end local v22           #info:Lcom/android/mms/util/SimIoUtil$SimInfo;
    .end local v24           #isCdmaFormat:I
    .end local v26           #read:I
    .restart local v28       #uri:Landroid/net/Uri;
    :cond_b
    move-object/from16 v11, v28

    .end local v28           #uri:Landroid/net/Uri;
    .restart local v11       #uri:Landroid/net/Uri;
    goto/16 :goto_1
.end method

.method private static deleteContactBaseSimSms(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 27
    .parameter "context"
    .parameter "uriMsg"

    .prologue
    .line 447
    const/4 v15, 0x0

    .line 450
    .local v15, bHaveDelete:Z
    if-nez p1, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const-string v2, "mms-sms-v2"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "allmessages"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    .line 457
    .local v23, sContactId:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 459
    const/4 v4, 0x0

    .line 461
    .local v4, contactUri:Landroid/net/Uri;
    const-string v2, "mms-sms-v2"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms-sms-v2/get-contactThreadPhone/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 466
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 468
    .local v16, contactCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_0

    .line 471
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v14, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_5

    .line 473
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 463
    .end local v14           #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #contactCursor:Landroid/database/Cursor;
    :cond_4
    const-string v2, "allmessages"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://allmessages/get-contactThreadPhone/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 479
    .restart local v14       #addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #contactCursor:Landroid/database/Cursor;
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 480
    .local v25, str:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 481
    const-string v2, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 482
    const-string v2, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 483
    .local v12, Tos:[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    array-length v2, v12

    move/from16 v0, v18

    if-ge v0, v2, :cond_7

    .line 485
    aget-object v2, v12, v18

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 489
    .end local v12           #Tos:[Ljava/lang/String;
    .end local v18           #i:I
    :cond_6
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 496
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 498
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .local v26, where:Ljava/lang/StringBuilder;
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_b

    .line 503
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_9

    .line 504
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 505
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 506
    .local v13, addr:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->refineSQLSelectionKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_NUMBERS_EQUAL(address, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 509
    .end local v13           #addr:Ljava/lang/String;
    :cond_8
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->refineSQLSelectionKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 510
    .restart local v13       #addr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 513
    .end local v13           #addr:Ljava/lang/String;
    :cond_9
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 514
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 515
    .restart local v13       #addr:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->refineSQLSelectionKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONE_NUMBERS_EQUAL(address , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 518
    .end local v13           #addr:Ljava/lang/String;
    :cond_a
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->refineSQLSelectionKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 519
    .restart local v13       #addr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 524
    .end local v13           #addr:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "index_on_sim"

    aput-object v3, v8, v2

    const/4 v2, 0x1

    const-string v3, "is_cdma_format"

    aput-object v3, v8, v2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 527
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_12

    .line 528
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v24

    .line 530
    .local v24, smsManager:Landroid/telephony/SmsManager;
    :cond_c
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 531
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SimIndexUtil;->getSimIndexes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 532
    .local v21, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    const/16 v22, 0x1

    .line 533
    .local v22, isCdmaFormat:Z
    :goto_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_d
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 534
    .local v20, index:Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_d

    .line 535
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v2

    if-nez v2, :cond_e

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-ne v2, v3, :cond_10

    .line 537
    :cond_e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(ZI)Z

    .line 540
    :goto_7
    const/4 v15, 0x1

    goto :goto_6

    .line 532
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #index:Ljava/lang/Integer;
    .end local v22           #isCdmaFormat:Z
    :cond_f
    const/16 v22, 0x0

    goto :goto_5

    .line 539
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v20       #index:Ljava/lang/Integer;
    .restart local v22       #isCdmaFormat:Z
    :cond_10
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 545
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #index:Ljava/lang/Integer;
    .end local v21           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v22           #isCdmaFormat:Z
    :catchall_0
    move-exception v2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_11
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 549
    .end local v24           #smsManager:Landroid/telephony/SmsManager;
    :cond_12
    const/4 v2, 0x1

    if-ne v15, v2, :cond_0

    .line 550
    const/16 v2, 0xea

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public static deleteFromSim(Landroid/content/Context;ZI)V
    .locals 13
    .parameter "context"
    .parameter "isCdmaFormat"
    .parameter "index"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 556
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "locked"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index_on_sim = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 560
    .local v8, lockCursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 590
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 564
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 573
    :cond_1
    sget-object v0, Lcom/android/mms/util/SimIoUtil;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 575
    .local v10, simUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    if-eq v0, v11, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-ne v0, v1, :cond_3

    .line 577
    :cond_2
    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 578
    .local v6, builder:Landroid/net/Uri$Builder;
    if-ne p1, v11, :cond_5

    .line 579
    const-string v0, "isCdmaFormat"

    const-string v1, "true"

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 582
    :goto_1
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 585
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0, v10, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 587
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 588
    .local v7, deleteUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index_on_sim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v7, v1, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 566
    .end local v7           #deleteUri:Landroid/net/Uri;
    .end local v10           #simUri:Landroid/net/Uri;
    :cond_4
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 567
    .local v9, locked:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 568
    if-eqz v9, :cond_1

    goto :goto_0

    .line 581
    .end local v9           #locked:I
    .restart local v6       #builder:Landroid/net/Uri$Builder;
    .restart local v10       #simUri:Landroid/net/Uri;
    :cond_5
    const-string v0, "isCdmaFormat"

    const-string v1, "false"

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method public static deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 14
    .parameter "context"
    .parameter "uriMsg"

    .prologue
    .line 402
    const/4 v7, 0x0

    .line 404
    .local v7, bHaveDelete:Z
    if-nez p1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    const-string v0, "mms"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "htcmsgs"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "sms"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 411
    invoke-static {p0, p1}, Lcom/android/mms/util/SimIoUtil;->deleteContactBaseSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "index_on_sim"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    const-string v2, "is_cdma_format"

    aput-object v2, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 418
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_8

    .line 419
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v13

    .line 421
    .local v13, smsManager:Landroid/telephony/SmsManager;
    :cond_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 422
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/SimIndexUtil;->getSimIndexes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 423
    .local v11, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v12, 0x1

    .line 424
    .local v12, isCdmaFormat:Z
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 425
    .local v10, index:Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    .line 426
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-ne v0, v1, :cond_6

    .line 427
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v13, v12, v0}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(ZI)Z

    .line 431
    :goto_3
    const/4 v7, 0x1

    goto :goto_2

    .line 423
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #index:Ljava/lang/Integer;
    .end local v12           #isCdmaFormat:Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 429
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #index:Ljava/lang/Integer;
    .restart local v12       #isCdmaFormat:Z
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 436
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #index:Ljava/lang/Integer;
    .end local v11           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12           #isCdmaFormat:Z
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 440
    .end local v13           #smsManager:Landroid/telephony/SmsManager;
    :cond_8
    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    .line 441
    const/16 v0, 0xea

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method public static doneSimSmsAutoSync()V
    .locals 1

    .prologue
    .line 838
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/util/SimIoUtil;->mDoneSimSmsAutoSync:Z

    .line 839
    return-void
.end method

.method public static doneVeryFirstExecute()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 819
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    const-string v4, "VERY_FIRST_EXECUTE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 822
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "KEY_VERY_FIRST_EXECUTE"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 823
    .local v0, bFirst:Z
    if-ne v0, v6, :cond_0

    .line 824
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 825
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "KEY_VERY_FIRST_EXECUTE"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 826
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 828
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static fillGsmSubmitPduWithValidityTime([B)[B
    .locals 10
    .parameter "pdu"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 189
    if-eqz p0, :cond_0

    array-length v6, p0

    const/4 v7, 0x7

    if-ge v6, v7, :cond_1

    :cond_0
    move-object v1, v5

    .line 226
    :goto_0
    return-object v1

    .line 193
    :cond_1
    aget-byte v6, p0, v8

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    move-object v1, v5

    .line 194
    goto :goto_0

    .line 197
    :cond_2
    aget-byte v6, p0, v9

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    aget-byte v6, p0, v9

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v0, v6, 0x2

    .line 200
    .local v0, addressBytes:I
    :goto_1
    array-length v6, p0

    add-int/lit8 v6, v6, 0x7

    new-array v1, v6, [B

    .line 202
    .local v1, newPdu:[B
    if-nez v1, :cond_4

    move-object v1, v5

    .line 203
    goto :goto_0

    .line 197
    .end local v0           #addressBytes:I
    .end local v1           #newPdu:[B
    :cond_3
    aget-byte v6, p0, v9

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v0, v6, 0x3

    goto :goto_1

    .line 206
    .restart local v0       #addressBytes:I
    .restart local v1       #newPdu:[B
    :cond_4
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-static {p0, v8, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, p0, v5

    .line 208
    .local v4, userDataLength:I
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x9

    add-int/lit8 v7, v4, 0x1

    invoke-static {p0, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    aget-byte v5, v1, v8

    or-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v1, v8

    .line 214
    new-instance v3, Landroid/text/format/Time;

    const-string v5, "UTC"

    invoke-direct {v3, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 215
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 217
    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v2, v5, 0x2

    .line 218
    .local v2, startIndex:I
    iget v5, v3, Landroid/text/format/Time;->year:I

    rem-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v5

    aput-byte v5, v1, v2

    .line 219
    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v6

    aput-byte v6, v1, v5

    .line 220
    add-int/lit8 v5, v2, 0x2

    iget v6, v3, Landroid/text/format/Time;->monthDay:I

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v6

    aput-byte v6, v1, v5

    .line 221
    add-int/lit8 v5, v2, 0x3

    iget v6, v3, Landroid/text/format/Time;->hour:I

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v6

    aput-byte v6, v1, v5

    .line 222
    add-int/lit8 v5, v2, 0x4

    iget v6, v3, Landroid/text/format/Time;->minute:I

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v6

    aput-byte v6, v1, v5

    .line 223
    add-int/lit8 v5, v2, 0x5

    iget v6, v3, Landroid/text/format/Time;->second:I

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->intToBcdByte(I)B

    move-result v6

    aput-byte v6, v1, v5

    .line 224
    add-int/lit8 v5, v2, 0x6

    aput-byte v8, v1, v5

    goto/16 :goto_0
.end method

.method public static hasDoneSimSmsAutoSync()Z
    .locals 1

    .prologue
    .line 833
    sget-boolean v0, Lcom/android/mms/util/SimIoUtil;->mDoneSimSmsAutoSync:Z

    return v0
.end method

.method public static isUsingRuim()Z
    .locals 2

    .prologue
    .line 842
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-ne v0, v1, :cond_0

    .line 843
    const/4 v0, 0x1

    .line 845
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveDeliverySmstoUim(Landroid/net/Uri;I)I
    .locals 32
    .parameter "uri"
    .parameter "status"

    .prologue
    .line 595
    const/4 v3, 0x5

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x7

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 596
    :cond_0
    const/4 v15, -0x1

    .line 721
    :goto_0
    return v15

    .line 599
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/mms/util/SimIoUtil;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 603
    .local v11, cursor:Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v16, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v11, :cond_2

    .line 606
    const/4 v15, -0x1

    goto :goto_0

    .line 608
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_3

    .line 609
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 610
    const/4 v15, -0x1

    goto :goto_0

    .line 613
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 614
    .local v25, sBody:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 615
    .local v24, sAddress:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 616
    .local v26, sCallback:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 617
    .local v27, sPriority:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 618
    .local v17, lDate:J
    const/4 v3, 0x5

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 619
    .local v31, type:I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 621
    .local v20, nPriority:I
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 623
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 624
    const/4 v15, -0x1

    goto :goto_0

    .line 626
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 627
    .local v21, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    .line 628
    :cond_5
    const/4 v15, -0x1

    goto :goto_0

    .line 632
    :cond_6
    const/16 v23, 0x0

    .line 633
    .local v23, refNumber:I
    const/4 v14, 0x0

    .line 636
    .local v14, encoding:I
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v12

    .line 639
    .local v12, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v3, v12, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v14, v3, :cond_8

    if-eqz v14, :cond_7

    const/4 v3, 0x1

    if-ne v14, v3, :cond_8

    .line 642
    :cond_7
    iget v14, v12, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 646
    :cond_8
    const/4 v3, 0x1

    if-ne v14, v3, :cond_d

    .line 647
    const/4 v14, 0x2

    .line 653
    :goto_1
    new-instance v19, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;-><init>()V

    .line 654
    .local v19, mEncoder:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;
    const/16 v22, 0x0

    .line 657
    .local v22, pdu:[B
    :try_start_0
    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 658
    .local v10, addrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 659
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_9

    .line 660
    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 663
    :cond_9
    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_e

    .line 664
    const/4 v3, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTransportParamDestAddress(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V

    .line 672
    :cond_a
    :goto_2
    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_UNKNOWN:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 673
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 674
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_b

    .line 675
    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;->TYPE_INTERNATIONAL:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;

    .line 677
    :cond_b
    const/4 v3, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamCallBack(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V

    .line 681
    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTransportParamBearerReplyOption(B)V

    .line 682
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamMessageID(S)V

    .line 684
    const/4 v3, 0x4

    if-ne v14, v3, :cond_f

    .line 685
    int-to-byte v4, v14

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "utf-16be"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamUserData(B[B[B)V

    .line 691
    :goto_3
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 692
    .local v29, time:Landroid/text/format/Time;
    move-object/from16 v0, v29

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 693
    const/4 v3, 0x6

    new-array v0, v3, [S

    move-object/from16 v30, v0

    .line 694
    .local v30, timeStamp:[S
    const/4 v3, 0x0

    move-object/from16 v0, v29

    iget v4, v0, Landroid/text/format/Time;->year:I

    int-to-short v4, v4

    aput-short v4, v30, v3

    .line 695
    const/4 v3, 0x1

    move-object/from16 v0, v29

    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    aput-short v4, v30, v3

    .line 696
    const/4 v3, 0x2

    move-object/from16 v0, v29

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    int-to-short v4, v4

    aput-short v4, v30, v3

    .line 697
    const/4 v3, 0x3

    move-object/from16 v0, v29

    iget v4, v0, Landroid/text/format/Time;->hour:I

    int-to-short v4, v4

    aput-short v4, v30, v3

    .line 698
    const/4 v3, 0x4

    move-object/from16 v0, v29

    iget v4, v0, Landroid/text/format/Time;->minute:I

    int-to-short v4, v4

    aput-short v4, v30, v3

    .line 699
    const/4 v3, 0x5

    move-object/from16 v0, v29

    iget v4, v0, Landroid/text/format/Time;->second:I

    int-to-short v4, v4

    aput-short v4, v30, v3

    .line 700
    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamAbsoluteValidity([S)V

    .line 702
    move/from16 v0, v20

    int-to-byte v3, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamPriority(B)V

    .line 703
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamLanguage(S)V

    .line 704
    const/16 v3, 0x1002

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->encodePdu(IB)[B

    move-result-object v22

    .line 711
    if-nez v22, :cond_10

    .line 712
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 649
    .end local v10           #addrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    .end local v19           #mEncoder:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;
    .end local v22           #pdu:[B
    .end local v29           #time:Landroid/text/format/Time;
    .end local v30           #timeStamp:[S
    :cond_d
    const/4 v14, 0x4

    goto/16 :goto_1

    .line 667
    .restart local v10       #addrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    .restart local v19       #mEncoder:Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;
    .restart local v22       #pdu:[B
    :cond_e
    const/4 v3, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTransportParamOrigAddress(Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 706
    .end local v10           #addrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    :catch_0
    move-exception v13

    .line 707
    .local v13, e:Ljava/lang/Exception;
    const-string v3, "savetoUim"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encode PDU exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 688
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v10       #addrType:Lcom/android/internal/telephony/cdma/CdmaSmsIdValue$AddrNumberType;
    :cond_f
    int-to-byte v4, v14

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/internal/telephony/cdma/CdmaSmsEncoder;->fillinTeleserviceParamUserData(B[B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 719
    .restart local v29       #time:Landroid/text/format/Time;
    .restart local v30       #timeStamp:[S
    :cond_10
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v28

    .line 720
    .local v28, smsManager:Landroid/telephony/SmsManager;
    const/4 v3, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move/from16 v2, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/telephony/SmsManager;->copyMessageToIccForResult([B[BI)I

    move-result v15

    .line 721
    .local v15, index:I
    goto/16 :goto_0
.end method

.method public static savetoCSIM(Landroid/net/Uri;I)Ljava/util/ArrayList;
    .locals 33
    .parameter "uri"
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/mms/util/SimIoUtil;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 64
    .local v18, cursor:Landroid/database/Cursor;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v24, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v18, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-object v24

    .line 69
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 70
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 74
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 75
    .local v28, sBody:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, sAddress:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, sCallback:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 78
    .local v29, sPriority:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 79
    .local v7, lDate:J
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 81
    .local v5, nPriority:I
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 83
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v9, 0x1

    if-eq v4, v9, :cond_0

    .line 86
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v6}, Landroid/telephony/SmsMessage;->fragmentTextForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 87
    .local v26, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v26, :cond_0

    .line 92
    const/16 v27, 0x0

    .line 93
    .local v27, refNumber:I
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 94
    .local v25, msgCount:I
    const/16 v21, 0x0

    .line 96
    .local v21, encoding:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 97
    const/4 v15, 0x0

    .line 98
    .local v15, address:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/16 v16, 0x0

    .line 99
    .local v16, callback:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 100
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v15

    .line 101
    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 102
    const/4 v4, 0x0

    invoke-static {v6, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v16

    .line 104
    :cond_4
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v4, v15, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v20

    .line 107
    .local v20, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v0, v21

    if-eq v0, v4, :cond_6

    if-eqz v21, :cond_5

    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_6

    .line 110
    :cond_5
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v21, v0

    .line 96
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 114
    .end local v15           #address:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v16           #callback:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v20           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_7
    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 115
    new-instance v30, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v30 .. v30}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 116
    .local v30, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/4 v4, 0x1

    move/from16 v0, v25

    if-le v0, v4, :cond_8

    .line 117
    new-instance v17, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 118
    .local v17, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 119
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, v17

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 120
    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 121
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 122
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 125
    .end local v17           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_8
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 126
    .local v3, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 127
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 133
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_c

    .line 139
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 149
    :goto_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v31

    .line 150
    .local v31, smsManager:Landroid/telephony/SmsManager;
    const/4 v4, 0x5

    move/from16 v0, p1

    if-eq v0, v4, :cond_9

    const/4 v4, 0x7

    move/from16 v0, p1

    if-ne v0, v4, :cond_d

    .line 151
    :cond_9
    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v32

    .line 154
    .local v32, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-eqz v32, :cond_0

    .line 158
    const/4 v4, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, v32

    iget-object v10, v0, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v4, v9, v10, v1}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v23

    .line 172
    .end local v32           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .local v23, index:I
    :goto_4
    if-nez v22, :cond_a

    if-nez v27, :cond_a

    if-lez v23, :cond_a

    .line 178
    :cond_a
    if-lez v23, :cond_b

    .line 179
    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 141
    .end local v23           #index:I
    .end local v31           #smsManager:Landroid/telephony/SmsManager;
    :cond_c
    const/4 v4, 0x4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_3

    .line 160
    .restart local v31       #smsManager:Landroid/telephony/SmsManager;
    :cond_d
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v14, bundle:Landroid/os/Bundle;
    const-string v4, "CALLBACK"

    invoke-virtual {v14, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v4, "PRIORITY"

    invoke-virtual {v14, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    iget-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-nez v4, :cond_e

    const/4 v13, 0x1

    :goto_5
    move-object v9, v2

    move-wide v10, v7

    move-object v12, v3

    invoke-static/range {v9 .. v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v19

    .line 166
    .local v19, deliveryPdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    if-eqz v19, :cond_0

    .line 169
    const/4 v4, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, v19

    iget-object v10, v0, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedMessage:[B

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v4, v9, v10, v1}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v23

    .restart local v23       #index:I
    goto :goto_4

    .line 163
    .end local v19           #deliveryPdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    .end local v23           #index:I
    :cond_e
    const/4 v13, 0x0

    goto :goto_5
.end method

.method public static simSmsAutoSync()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 244
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v6

    .line 247
    .local v6, context:Landroid/content/Context;
    const-string v0, "power"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 248
    .local v11, pm:Landroid/os/PowerManager;
    const-string v0, "SimIoUtil"

    invoke-virtual {v11, v13, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 249
    .local v10, partialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 252
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 253
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "index_on_sim <> -1 AND Length(index_on_sim) > 0"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    const-string v0, "phone"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 257
    .local v12, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v13, :cond_3

    .line 258
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->doneSimSmsAutoSync()V

    .line 259
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->doneVeryFirstExecute()V

    .line 263
    sget-object v1, Lcom/android/mms/util/QueryURI;->SIM_CONTENT_URI:Landroid/net/Uri;

    .line 264
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 265
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 267
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 283
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 271
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 272
    .local v9, nCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 273
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-ne v0, v13, :cond_1

    .line 274
    invoke-static {v7}, Lcom/android/mms/util/SimIoUtil;->copyToPhoneMemory(Landroid/database/Cursor;)V

    .line 272
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 278
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 282
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #i:I
    .end local v9           #nCount:I
    :cond_3
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public static syncSmsOnBG()V
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getLowPriorityHandler()Landroid/os/Handler;

    move-result-object v0

    .line 231
    .local v0, handler:Landroid/os/Handler;
    sget-object v1, Lcom/android/mms/util/SimIoUtil;->syncSMSrunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method private static updateMessageIdInCdmaSmsPdu([BI)[B
    .locals 10
    .parameter "pdu"
    .parameter "messageId"

    .prologue
    const/4 v7, 0x4

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 727
    array-length v6, p0

    if-ge v6, v7, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-object p0

    .line 730
    :cond_1
    const/4 v0, 0x2

    .line 734
    .local v0, currentPosition:I
    aget-byte v2, p0, v0

    .line 735
    .local v2, id:I
    :goto_1
    if-eq v2, v8, :cond_2

    .line 737
    array-length v6, p0

    add-int/lit8 v7, v0, 0x2

    if-lt v6, v7, :cond_0

    .line 741
    add-int/lit8 v0, v0, 0x1

    aget-byte v6, p0, v0

    and-int/lit16 v3, v6, 0xff

    .line 744
    .local v3, length:I
    array-length v6, p0

    add-int v7, v0, v3

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_0

    .line 748
    add-int/lit8 v6, v3, 0x1

    add-int/2addr v0, v6

    .line 749
    aget-byte v2, p0, v0

    goto :goto_1

    .line 752
    .end local v3           #length:I
    :cond_2
    if-ne v2, v8, :cond_0

    .line 756
    array-length v6, p0

    add-int/lit8 v7, v0, 0x2

    if-le v6, v7, :cond_0

    .line 760
    add-int/lit8 v0, v0, 0x2

    .line 761
    aget-byte v2, p0, v0

    .line 763
    :goto_2
    if-eqz v2, :cond_3

    .line 765
    array-length v6, p0

    add-int/lit8 v7, v0, 0x2

    if-lt v6, v7, :cond_0

    .line 769
    add-int/lit8 v0, v0, 0x1

    aget-byte v6, p0, v0

    and-int/lit16 v3, v6, 0xff

    .line 772
    .restart local v3       #length:I
    array-length v6, p0

    add-int v7, v0, v3

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_0

    .line 776
    add-int/lit8 v6, v3, 0x1

    add-int/2addr v0, v6

    .line 777
    aget-byte v2, p0, v0

    goto :goto_2

    .line 780
    .end local v3           #length:I
    :cond_3
    if-nez v2, :cond_0

    .line 784
    array-length v6, p0

    add-int/lit8 v7, v0, 0x2

    if-lt v6, v7, :cond_0

    .line 788
    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v3, v6, 0xff

    .line 791
    .restart local v3       #length:I
    array-length v6, p0

    add-int v7, v0, v3

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_0

    .line 794
    add-int/lit8 v6, v3, 0x2

    new-array v4, v6, [B

    .line 797
    .local v4, messageIdentifier:[B
    array-length v6, v4

    invoke-static {p0, v0, v4, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    new-instance v5, Lcom/android/internal/util/BitwiseOutputStream;

    array-length v6, v4

    invoke-direct {v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 802
    .local v5, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v6, 0x8

    const/4 v7, 0x0

    :try_start_0
    aget-byte v7, v4, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 803
    const/16 v6, 0x8

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 804
    const/4 v6, 0x4

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    shr-int/lit8 v7, v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 805
    const/16 v6, 0x8

    shr-int/lit8 v7, p1, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 806
    const/16 v6, 0x8

    invoke-virtual {v5, v6, p1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 807
    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    invoke-virtual {v5}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v4

    .line 814
    array-length v6, v4

    invoke-static {v4, v9, p0, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 808
    :catch_0
    move-exception v1

    .line 809
    .local v1, e:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    goto/16 :goto_0
.end method
