.class public Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;
.super Landroid/app/Activity;
.source "ContactBirthdaySendGreetingActivity.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DIALOG_EVENT:I = 0xea60

.field private static final LOG_TAG:Ljava/lang/String; = "ContactBirthdaySendGreetingActivity"


# instance fields
.field private mContactDisplayName:Ljava/lang/String;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private mDataID:J

.field private mEventName:Ljava/lang/String;

.field private mEventTime:J

.field private mEventTypeInDialog:I

.field private mFBBirthday:J

.field private mFBSourceID:J

.field private mRawContactID:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mData:Ljava/util/ArrayList;

    .line 60
    iput-wide v1, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mDataID:J

    .line 61
    iput-wide v1, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBSourceID:J

    .line 62
    iput-wide v1, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBBirthday:J

    .line 63
    iput v3, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mRawContactID:I

    .line 68
    iput v3, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventTypeInDialog:I

    return-void
.end method

.method private clearData()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mRawContactID:I

    .line 206
    iput-wide v1, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mDataID:J

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mData:Ljava/util/ArrayList;

    .line 208
    iput-wide v1, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBSourceID:J

    .line 209
    iput-wide v1, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBBirthday:J

    .line 210
    return-void
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;->buildDialog(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private genContentEntity(J)Ljava/util/ArrayList;
    .locals 27
    .parameter "rawContactID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "display_name"

    aput-object v4, v5, v3

    .line 313
    .local v5, RAWCONTACTS_PROJECTION:[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v12, v3

    .line 321
    .local v12, CONTACTS_PROJECTION:[Ljava/lang/String;
    const/4 v3, 0x6

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v13, v3

    const/4 v3, 0x1

    const-string v4, "mimetype"

    aput-object v4, v13, v3

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v13, v3

    const/4 v3, 0x3

    const-string v4, "data1"

    aput-object v4, v13, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v13, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v13, v3

    .line 331
    .local v13, DATA_PROJECTION:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 332
    .local v17, cr:Landroid/content/ContentResolver;
    if-nez v17, :cond_0

    .line 333
    const/4 v3, 0x0

    .line 420
    :goto_0
    return-object v3

    .line 335
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v22, sql:Ljava/lang/StringBuilder;
    const-string v3, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v3, "="

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 340
    .local v20, cursorRaw:Landroid/database/Cursor;
    if-nez v20, :cond_1

    .line 341
    const/4 v3, 0x0

    goto :goto_0

    .line 344
    :cond_1
    const-wide/16 v15, -0x1

    .line 345
    .local v15, contactID:J
    const-string v14, ""

    .line 347
    .local v14, accountType:Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 348
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 350
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 351
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 353
    :cond_2
    if-eqz v20, :cond_3

    .line 354
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v24, sqlQuery:Ljava/lang/StringBuilder;
    const-string v3, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v3, "="

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    move-object/from16 v0, v24

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v12

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 363
    .local v18, cursor:Landroid/database/Cursor;
    if-nez v18, :cond_4

    .line 364
    const/4 v3, 0x0

    goto :goto_0

    .line 366
    :cond_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 367
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_5

    .line 369
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 370
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 376
    :cond_5
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v25, values:Landroid/content/ContentValues;
    const-string v3, "contact_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    const-string v3, "account_type"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v21, Landroid/content/Entity;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 381
    .local v21, entity:Landroid/content/Entity;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mContactDisplayName:Ljava/lang/String;

    .line 385
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v23, sqlData:Ljava/lang/StringBuilder;
    const-string v3, "contact_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v3, "="

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v13

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 391
    .local v19, cursorData:Landroid/database/Cursor;
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 393
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 396
    :cond_6
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v26, valuesData:Landroid/content/ContentValues;
    const-string v3, "_id"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    const-string v3, "mimetype"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v3, "is_super_primary"

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    const-string v3, "data1"

    const/4 v4, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v3, "data2"

    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v3, "data3"

    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 406
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 408
    .end local v26           #valuesData:Landroid/content/ContentValues;
    :cond_7
    if-eqz v19, :cond_8

    .line 409
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mData:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 417
    if-eqz v18, :cond_9

    .line 418
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 420
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mData:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method private getDataFromFacebookSourceID(J)I
    .locals 19
    .parameter "fbSourceID"

    .prologue
    .line 548
    const-string v4, "ContactBirthdaySendGreetingActivity"

    const-string v6, "getDataFromFacebookSourceID()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/16 v16, -0x1

    .line 553
    .local v16, retDataID:I
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "sourceid"

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const-string v6, "account_type"

    aput-object v6, v5, v4

    .line 561
    .local v5, RAWCONTACTS_PROJECTION:[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v12, v4

    const/4 v4, 0x1

    const-string v6, "raw_contact_id"

    aput-object v6, v12, v4

    .line 568
    .local v12, DATA_PROJECTION:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 569
    .local v3, cr:Landroid/content/ContentResolver;
    if-nez v3, :cond_0

    .line 570
    const/4 v4, -0x1

    .line 637
    :goto_0
    return v4

    .line 572
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v17, sql:Ljava/lang/StringBuilder;
    const-string v4, "sourceid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v4, "="

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 576
    const-string v4, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v4, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v4, "="

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v4, "\""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v4, "com.facebook.auth.login"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v4, "\""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 584
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_1

    .line 585
    const/4 v4, -0x1

    goto :goto_0

    .line 587
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 588
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 590
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 591
    const/4 v4, -0x1

    goto :goto_0

    .line 596
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 598
    .local v15, rawContactID:I
    const-string v4, "ContactBirthdaySendGreetingActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDataFromFacebookSourceID() - Query returned RawContactID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v4, -0x1

    if-ne v4, v15, :cond_5

    .line 602
    if-eqz v13, :cond_3

    .line 603
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_3
    :goto_1
    if-eqz v13, :cond_4

    .line 634
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    move/from16 v4, v16

    .line 637
    goto/16 :goto_0

    .line 608
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .local v18, sqlData:Ljava/lang/StringBuilder;
    const-string v4, "raw_contact_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v4, "="

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    const-string v4, " AND "

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v4, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v4, "="

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    move-object v8, v12

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 618
    .local v14, cursorData:Landroid/database/Cursor;
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_6

    .line 620
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 623
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 628
    :cond_6
    if-eqz v14, :cond_7

    .line 629
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 632
    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1
.end method

.method private getEventTimeNameTypeInDialog(J)I
    .locals 11
    .parameter "dataID"

    .prologue
    .line 215
    const/4 v7, 0x0

    .line 216
    .local v7, cursor:Landroid/database/Cursor;
    const-wide/16 v0, -0x1

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 217
    const/4 v0, -0x1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "raw_contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "data12"

    aput-object v1, v2, v0

    .line 229
    .local v2, DATA_PROJECTION:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 230
    .local v6, cr:Landroid/content/ContentResolver;
    if-nez v6, :cond_2

    .line 231
    const/4 v0, -0x1

    .line 293
    if-eqz v7, :cond_0

    .line 294
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 233
    :cond_2
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v10, sql:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v0, "="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 238
    if-nez v7, :cond_3

    .line 239
    const/4 v0, -0x1

    .line 293
    if-eqz v7, :cond_0

    goto :goto_1

    .line 241
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 242
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 245
    const/4 v0, -0x1

    .line 293
    if-eqz v7, :cond_0

    goto :goto_1

    .line 250
    :cond_4
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mRawContactID:I

    .line 252
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 253
    .local v9, eventType:I
    const/4 v0, 0x3

    if-ne v9, v0, :cond_7

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventTypeInDialog:I

    .line 256
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventName:Ljava/lang/String;

    .line 269
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 270
    .local v8, date:Ljava/util/Calendar;
    iget-wide v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBSourceID:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBBirthday:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_a

    .line 273
    iget-wide v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBBirthday:J

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 282
    :goto_3
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventTime:J

    .line 284
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 293
    if-eqz v7, :cond_6

    .line 294
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v8           #date:Ljava/util/Calendar;
    .end local v9           #eventType:I
    .end local v10           #sql:Ljava/lang/StringBuilder;
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_6
    iget v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventTypeInDialog:I

    goto/16 :goto_0

    .line 258
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v9       #eventType:I
    .restart local v10       #sql:Ljava/lang/StringBuilder;
    :cond_7
    const/4 v0, 0x1

    if-ne v9, v0, :cond_8

    .line 260
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventTypeInDialog:I

    .line 261
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventName:Ljava/lang/String;

    goto :goto_2

    .line 287
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v9           #eventType:I
    .end local v10           #sql:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 293
    if-eqz v7, :cond_6

    goto :goto_4

    .line 263
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v9       #eventType:I
    .restart local v10       #sql:Ljava/lang/StringBuilder;
    :cond_8
    const/4 v0, 0x2

    if-ne v9, v0, :cond_5

    .line 265
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventTypeInDialog:I

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 293
    .end local v6           #cr:Landroid/content/ContentResolver;
    .end local v9           #eventType:I
    .end local v10           #sql:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 294
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_9
    throw v0

    .line 278
    .restart local v6       #cr:Landroid/content/ContentResolver;
    .restart local v8       #date:Ljava/util/Calendar;
    .restart local v9       #eventType:I
    .restart local v10       #sql:Ljava/lang/StringBuilder;
    :cond_a
    const/4 v0, 0x3

    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 279
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->add(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method private prepareDialog(Landroid/app/Dialog;)V
    .locals 8
    .parameter "dialog"

    .prologue
    .line 525
    if-nez p1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 528
    :cond_0
    new-instance v0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity$1;-><init>(Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 539
    iget v2, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventTypeInDialog:I

    iget-object v3, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mContactDisplayName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mEventTime:J

    iget-object v7, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mData:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;->prepareDialog(Landroid/content/Context;Landroid/app/Dialog;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, -0x1

    const-wide/16 v9, -0x1

    .line 74
    const-string v5, "ContactBirthdaySendGreetingActivity"

    const-string v6, "ContactBirthdaySendGreetingActivity.onCreate()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const-wide/high16 v5, 0x4010

    invoke-static {v5, v6}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    const-string v5, "ContactBirthdaySendGreetingActivity"

    const-string v6, "ContactBirthdaySendGreetingActivity.onCreate() - HTC Sense Version is lower than 4.0, Feature Disabled !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->finish()V

    .line 143
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.CONTACT_BIRTHDAY_GREETING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 90
    const-string v5, "CONTACT_BIRTHDAY_GREETING.FACEBOOK.SourceID"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, strFBSourceID:Ljava/lang/String;
    const-string v5, "ContactBirthdaySendGreetingActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContactBirthdaySendGreetingActivity.onCreate() - From Calendar Intent extra Fackbook Source ID  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v3, :cond_1

    .line 95
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBSourceID:J

    .line 98
    :cond_1
    const-string v5, "CONTACT_BIRTHDAY_GREETING.FACEBOOK.Birthday"

    invoke-virtual {v1, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBBirthday:J

    .line 100
    const-string v5, "ContactBirthdaySendGreetingActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContactBirthdaySendGreetingActivity.onCreate() - From Calendar Intent extra Fackbook Birthday  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBBirthday:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-wide v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBSourceID:J

    cmp-long v5, v9, v5

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBBirthday:J

    cmp-long v5, v9, v5

    if-nez v5, :cond_6

    .line 105
    :cond_2
    const-string v5, "CONTACT_BIRTHDAY_GREETING.EventID"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, strDataID:Ljava/lang/String;
    const-string v5, "ContactBirthdaySendGreetingActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContactBirthdaySendGreetingActivity.onCreate() - From Calendar Intent extra Data._ID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz v2, :cond_3

    .line 110
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mDataID:J

    .line 118
    .end local v2           #strDataID:Ljava/lang/String;
    :cond_3
    :goto_1
    iget-wide v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mDataID:J

    invoke-direct {p0, v5, v6}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getEventTimeNameTypeInDialog(J)I

    .line 119
    iget v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mRawContactID:I

    int-to-long v5, v5

    invoke-direct {p0, v5, v6}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->genContentEntity(J)Ljava/util/ArrayList;

    .line 122
    .end local v3           #strFBSourceID:Ljava/lang/String;
    :cond_4
    iget-wide v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mDataID:J

    cmp-long v5, v9, v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mRawContactID:I

    if-ne v11, v5, :cond_7

    .line 125
    :cond_5
    const-string v5, "ContactBirthdaySendGreetingActivity"

    const-string v6, "ContactBirthdaySendGreetingActivity.onCreate() - No Intent Data !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 115
    .restart local v3       #strFBSourceID:Ljava/lang/String;
    :cond_6
    iget-wide v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mFBSourceID:J

    invoke-direct {p0, v5, v6}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getDataFromFacebookSourceID(J)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->mDataID:J

    goto :goto_1

    .line 129
    .end local v3           #strFBSourceID:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 131
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 133
    .local v0, backgroundColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 137
    .local v4, view:Landroid/view/View;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 186
    const v0, 0xea60

    if-ne p1, v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 149
    const-string v0, "ContactBirthdaySendGreetingActivity"

    const-string v1, "ContactBirthdaySendGreetingActivity.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 152
    invoke-direct {p0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->clearData()V

    .line 153
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 195
    const v0, 0xea60

    if-ne v0, p1, :cond_0

    .line 196
    invoke-direct {p0, p2}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->prepareDialog(Landroid/app/Dialog;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "ContactBirthdaySendGreetingActivity"

    const-string v1, "ContactBirthdaySendGreetingActivity.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/dialog/ContactBirthdaySendGreetingActivity;->showDialog(I)V

    .line 180
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "ContactBirthdaySendGreetingActivity"

    const-string v1, "ContactBirthdaySendGreetingActivity.onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 161
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "ContactBirthdaySendGreetingActivity"

    const-string v1, "ContactBirthdaySendGreetingActivity.onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 170
    return-void
.end method
