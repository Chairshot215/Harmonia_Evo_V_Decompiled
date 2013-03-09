.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    }
.end annotation


# static fields
.field static final CALLLOG_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field private static final CLAUSE_ONLY_VISIBLE:Ljava/lang/String; = "in_visible_group=1"

.field static final CONTACTS_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACTS_NAME_COLUMN_INDEX:I = 0x1

.field static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final PHONE_NUMBER_COLUMN_INDEX:I = 0x3

.field static final SORT_ORDER_PHONE_NUMBER:Ljava/lang/String; = "data1 ASC"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapVcardManager"

.field private static final V:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 85
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 105
    return-void
.end method


# virtual methods
.method public final composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZ)I
    .locals 19
    .parameter "type"
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"

    .prologue
    .line 277
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 278
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v6, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/16 v2, 0xd0

    .line 333
    :goto_0
    return v2

    .line 281
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, typeSelection:Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 284
    .local v3, myUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 287
    .local v4, CALLLOG_PROJECTION:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 289
    .local v12, ID_COLUMN_INDEX:I
    const/4 v13, 0x0

    .line 290
    .local v13, callsCursor:Landroid/database/Cursor;
    const-wide/16 v17, 0x0

    .line 291
    .local v17, startPointId:J
    const-wide/16 v14, 0x0

    .line 294
    .local v14, endPointId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 296
    if-eqz v13, :cond_2

    .line 297
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 298
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v17

    .line 300
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 301
    move-wide/from16 v14, v17

    .line 309
    :cond_2
    :goto_1
    if-eqz v13, :cond_3

    .line 310
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 325
    .local v16, recordSelection:Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_7

    .line 326
    move-object/from16 v8, v16

    .line 333
    .local v8, selection:Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v9, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v2

    goto :goto_0

    .line 303
    .end local v8           #selection:Ljava/lang/String;
    .end local v16           #recordSelection:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p4, -0x1

    :try_start_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 304
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    goto :goto_1

    .line 309
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_5

    .line 310
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_5
    throw v2

    .line 320
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id>="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_id"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "<="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #recordSelection:Ljava/lang/String;
    goto :goto_2

    .line 328
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #selection:Ljava/lang/String;
    goto :goto_3
.end method

.method public final composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;I)I
    .locals 12
    .parameter "op"
    .parameter "offset"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "orderByWhat"

    .prologue
    .line 383
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 384
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Internal error: offset is not correct."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/16 v1, 0xd0

    .line 427
    :goto_0
    return v1

    .line 387
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 388
    .local v2, myUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 389
    .local v9, contactCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 390
    .local v5, selection:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 391
    .local v10, contactId:J
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_4

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "_id"

    .end local v5           #selection:Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 395
    if-eqz v9, :cond_1

    .line 396
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 397
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 401
    :cond_1
    if-eqz v9, :cond_2

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 423
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 427
    .restart local v5       #selection:Ljava/lang/String;
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v1

    goto :goto_0

    .line 401
    .end local v5           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_3
    throw v1

    .line 405
    .restart local v5       #selection:Ljava/lang/String;
    :cond_4
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_7

    .line 407
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "display_name"

    .end local v5           #selection:Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 409
    if-eqz v9, :cond_5

    .line 410
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 411
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v10

    .line 415
    :cond_5
    if-eqz v9, :cond_2

    .line 416
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 415
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_6

    .line 416
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 415
    :cond_6
    throw v1

    .line 420
    .restart local v5       #selection:Ljava/lang/String;
    :cond_7
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Parameter orderByWhat is not supported!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v1, 0xd0

    goto/16 :goto_0
.end method

.method public final composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I
    .locals 15
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "ownerVCard"

    .prologue
    .line 338
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 339
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v4, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/16 v2, 0xd0

    .line 378
    :goto_0
    return v2

    .line 342
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 344
    .local v3, myUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 345
    .local v10, contactCursor:Landroid/database/Cursor;
    const-wide/16 v13, 0x0

    .line 346
    .local v13, startPointId:J
    const-wide/16 v11, 0x0

    .line 348
    .local v11, endPointId:J
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 350
    if-eqz v10, :cond_2

    .line 351
    add-int/lit8 v2, p2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 352
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    .line 354
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 355
    move-wide v11, v13

    .line 363
    :cond_2
    :goto_1
    if-eqz v10, :cond_3

    .line 364
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in_visible_group=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, selection:Ljava/lang/String;
    :goto_2
    const/4 v9, 0x1

    move-object v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v2

    goto :goto_0

    .line 357
    .end local v6           #selection:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p3, -0x1

    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 358
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v11

    goto :goto_1

    .line 363
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    .line 364
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_5
    throw v2

    .line 372
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in_visible_group=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #selection:Ljava/lang/String;
    goto :goto_2
.end method

.method public final composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I
    .locals 11
    .parameter "op"
    .parameter "selection"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "isContacts"

    .prologue
    .line 432
    const-wide/16 v4, 0x0

    .line 435
    .local v4, timestamp:J
    if-eqz p5, :cond_10

    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, composer:Lcom/android/vcard/VCardComposer;
    const/4 v0, 0x0

    .line 441
    .local v0, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    if-eqz p3, :cond_3

    .line 442
    const/high16 v7, -0x4000

    .line 446
    .local v7, vcardType:I
    :goto_0
    const/high16 v8, 0x80

    or-int/2addr v7, v8

    .line 448
    :try_start_0
    new-instance v3, Lcom/android/vcard/VCardComposer;

    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-direct {v3, v8, v7, v9}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    .end local v2           #composer:Lcom/android/vcard/VCardComposer;
    .local v3, composer:Lcom/android/vcard/VCardComposer;
    :try_start_1
    new-instance v8, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;

    invoke-direct {v8, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-virtual {v3, v8}, Lcom/android/vcard/VCardComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 464
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 465
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v1, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_2
    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string v10, "_id"

    invoke-virtual {v3, v8, p2, v9, v10}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result v8

    if-nez v8, :cond_4

    .line 467
    :cond_0
    const/16 v8, 0xd0

    .line 488
    if-eqz v3, :cond_1

    .line 489
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 491
    :cond_1
    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_2
    move-object v0, v1

    .line 535
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v7           #vcardType:I
    .end local p1
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :goto_1
    return v8

    .line 444
    .restart local v2       #composer:Lcom/android/vcard/VCardComposer;
    .restart local p1
    :cond_3
    const v7, -0x3fffffff

    .restart local v7       #vcardType:I
    goto :goto_0

    .line 470
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_5

    .line 471
    sget-boolean v8, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v8, :cond_8

    .line 472
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v8, 0x1

    iput-boolean v8, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 473
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 488
    :cond_5
    if-eqz v3, :cond_6

    .line 489
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 491
    :cond_6
    if-eqz v1, :cond_7

    .line 492
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_7
    move-object v0, v1

    .line 535
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v7           #vcardType:I
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :goto_2
    const/16 v8, 0xa0

    goto :goto_1

    .line 476
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v7       #vcardType:I
    .restart local p1
    :cond_8
    :try_start_4
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, vcard:Ljava/lang/String;
    if-nez v6, :cond_b

    .line 478
    const-string v8, "BluetoothPbapVcardManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read a contact. Error reason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 480
    const/16 v8, 0xd0

    .line 488
    if-eqz v3, :cond_9

    .line 489
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 491
    :cond_9
    if-eqz v1, :cond_a

    .line 492
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_a
    move-object v0, v1

    .line 480
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto :goto_1

    .line 482
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :cond_b
    :try_start_5
    invoke-virtual {v1, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result v8

    if-nez v8, :cond_4

    .line 484
    const/16 v8, 0xd0

    .line 488
    if-eqz v3, :cond_c

    .line 489
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 491
    :cond_c
    if-eqz v1, :cond_d

    .line 492
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_d
    move-object v0, v1

    .line 484
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto :goto_1

    .line 488
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v6           #vcard:Ljava/lang/String;
    .restart local v2       #composer:Lcom/android/vcard/VCardComposer;
    :catchall_0
    move-exception v8

    .end local p1
    :goto_3
    if-eqz v2, :cond_e

    .line 489
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 491
    :cond_e
    if-eqz v0, :cond_f

    .line 492
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 488
    :cond_f
    throw v8

    .line 496
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2           #composer:Lcom/android/vcard/VCardComposer;
    .end local v7           #vcardType:I
    .restart local p1
    :cond_10
    const/4 v2, 0x0

    .line 497
    .local v2, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    const/4 v0, 0x0

    .line 500
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_6
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 501
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v3, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :try_start_7
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 502
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_8
    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string v10, "_id DESC"

    invoke-virtual {v3, v8, p2, v9, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v8

    if-nez v8, :cond_15

    .line 505
    :cond_11
    const/16 v8, 0xd0

    .line 523
    if-eqz v3, :cond_12

    .line 524
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 526
    :cond_12
    if-eqz v1, :cond_13

    .line 527
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_13
    move-object v0, v1

    .line 505
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_1

    .line 520
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v6       #vcard:Ljava/lang/String;
    :cond_14
    :try_start_9
    invoke-virtual {v1, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    .line 508
    .end local v6           #vcard:Ljava/lang/String;
    :cond_15
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_16

    .line 509
    sget-boolean v8, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v8, :cond_19

    .line 510
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v8, 0x1

    iput-boolean v8, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 511
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 523
    :cond_16
    if-eqz v3, :cond_17

    .line 524
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 526
    :cond_17
    if-eqz v1, :cond_18

    .line 527
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_18
    move-object v0, v1

    .line 529
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_2

    .line 514
    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local p1
    :cond_19
    :try_start_a
    invoke-virtual {v3, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v6

    .line 515
    .restart local v6       #vcard:Ljava/lang/String;
    if-nez v6, :cond_14

    .line 516
    const-string v8, "BluetoothPbapVcardManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read a contact. Error reason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 518
    const/16 v8, 0xd0

    .line 523
    if-eqz v3, :cond_1a

    .line 524
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 526
    :cond_1a
    if-eqz v1, :cond_1b

    .line 527
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_1b
    move-object v0, v1

    .line 518
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_1

    .line 523
    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local v6           #vcard:Ljava/lang/String;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_1
    move-exception v8

    .end local p1
    :goto_4
    if-eqz v2, :cond_1c

    .line 524
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 526
    :cond_1c
    if-eqz v0, :cond_1d

    .line 527
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 523
    :cond_1d
    throw v8

    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local p1
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_4

    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local p1
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_3
    move-exception v8

    move-object v0, v1

    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v2, v3

    .end local v3           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v2       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_4

    .line 488
    .end local v2           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v3, composer:Lcom/android/vcard/VCardComposer;
    .restart local v7       #vcardType:I
    .restart local p1
    :catchall_4
    move-exception v8

    move-object v2, v3

    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .local v2, composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_3

    .end local v0           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2           #composer:Lcom/android/vcard/VCardComposer;
    .end local p1
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    :catchall_5
    move-exception v8

    move-object v0, v1

    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v2, v3

    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v2       #composer:Lcom/android/vcard/VCardComposer;
    goto/16 :goto_3
.end method

.method public final getCallHistorySize(I)I
    .locals 8
    .parameter "type"

    .prologue
    .line 148
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 149
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 151
    .local v7, size:I
    const/4 v6, 0x0

    .line 153
    .local v6, callCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    if-eqz v6, :cond_0

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 159
    :cond_0
    if-eqz v6, :cond_1

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_1
    return v7

    .line 159
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 160
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_2
    throw v0
.end method

.method public final getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "phoneNumber"
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
    .line 239
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v10, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 242
    .local v6, contactCursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 244
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 245
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 252
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 255
    if-eqz v6, :cond_3

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 258
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, name:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 260
    .local v7, id:J
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 264
    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 268
    .end local v7           #id:J
    .end local v9           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_1
    throw v0

    .line 247
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 268
    :cond_3
    if-eqz v6, :cond_4

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_4
    return-object v10
.end method

.method public final getContactsSize()I
    .locals 8

    .prologue
    .line 131
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 132
    .local v1, myUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 133
    .local v7, size:I
    const/4 v6, 0x0

    .line 135
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    if-eqz v6, :cond_0

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 140
    :cond_0
    if-eqz v6, :cond_1

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    return v7

    .line 140
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_2
    throw v0
.end method

.method public final getOwnerPhoneNumberVcard(Z)Ljava/lang/String;
    .locals 5
    .parameter "vcardType21"

    .prologue
    .line 108
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, number:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, vcard:Ljava/lang/String;
    return-object v3
.end method

.method public final getPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "orderByWhat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v8, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 209
    .local v1, myUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 211
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 220
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 223
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 227
    :cond_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 231
    .end local v7           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_2
    throw v0

    .line 215
    :cond_3
    :try_start_1
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 231
    :cond_4
    if-eqz v6, :cond_5

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_5
    return-object v8
.end method

.method public final getPhonebookSize(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistorySize(I)I

    move-result v0

    .line 127
    .local v0, size:I
    :goto_0
    return v0

    .line 120
    .end local v0           #size:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactsSize()I

    move-result v0

    .line 121
    .restart local v0       #size:I
    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final loadCallHistoryList(I)Ljava/util/ArrayList;
    .locals 11
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 168
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v4

    const-string v0, "name"

    aput-object v0, v2, v5

    .line 172
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 173
    .local v7, CALLS_NUMBER_COLUMN_INDEX:I
    const/4 v6, 0x1

    .line 175
    .local v6, CALLS_NAME_COLUMN_INDEX:I
    const/4 v8, 0x0

    .line 176
    .local v8, callCursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 180
    if-eqz v8, :cond_3

    .line 181
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 183
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 184
    .local v10, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 187
    const-string v0, "-1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040004

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 193
    :cond_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    .end local v10           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 198
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_2
    throw v0

    :cond_3
    if-eqz v8, :cond_4

    .line 198
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_4
    return-object v9
.end method
