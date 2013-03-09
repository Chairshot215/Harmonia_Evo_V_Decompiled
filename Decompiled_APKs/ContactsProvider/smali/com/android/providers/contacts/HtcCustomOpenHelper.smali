.class public Lcom/android/providers/contacts/HtcCustomOpenHelper;
.super Ljava/lang/Object;
.source "HtcCustomOpenHelper.java"

# interfaces
.implements Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcCustomOpenHelper$NamePatternType;,
        Lcom/android/providers/contacts/HtcCustomOpenHelper$NamePatternColumns;,
        Lcom/android/providers/contacts/HtcCustomOpenHelper$Views;,
        Lcom/android/providers/contacts/HtcCustomOpenHelper$Tables;,
        Lcom/android/providers/contacts/HtcCustomOpenHelper$PreferenceDB;,
        Lcom/android/providers/contacts/HtcCustomOpenHelper$ExtRawContactsColumns;,
        Lcom/android/providers/contacts/HtcCustomOpenHelper$ExtContactsColumns;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME_MY_CONTACT:Ljava/lang/String; = "HTC"

.field public static final ACCOUNT_TYPE_MY_CONTACT:Ljava/lang/String; = "DeviceOnly"

.field private static final DEBUG:Z = true

.field public static ExcludeRestrictedContacts:Ljava/lang/String; = null

.field public static ExcludeRestrictedRawContactsData:Ljava/lang/String; = null

.field private static final NAME:Ljava/lang/String; = "HtcContacts"

.field public static final SOURCE_ID_MY_CONTACT:Ljava/lang/String; = "HTC_01"

.field private static final TAG:Ljava/lang/String; = "HtcCustomOpenHelper"

.field private static final UPGRADE_TAG:Ljava/lang/String; = "Contacts_Uprading"

.field public static final VERSION:I = 0x45

.field private static mMyContactCardId:J

.field private static mMyContactCardRawId:J


# instance fields
.field private mContext:Landroid/content/Context;

.field final mdbForProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 127
    sput-wide v0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    .line 128
    sput-wide v0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    .line 144
    const-string v0, "single_is_restricted = 0 "

    sput-object v0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->ExcludeRestrictedContacts:Ljava/lang/String;

    .line 147
    const-string v0, "is_restricted = 0 "

    sput-object v0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->ExcludeRestrictedRawContactsData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "dbForProfile"

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mContext:Landroid/content/Context;

    .line 386
    iput p2, p0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mdbForProfile:I

    .line 387
    return-void
.end method

.method private addContactIsReadOnly(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2890
    :try_start_0
    const-string v0, "ALTER TABLE contacts ADD COLUMN contact_is_read_only INTEGER NOT NULL DEFAULT 0 "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2896
    :goto_0
    return-void

    .line 2893
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private addExtAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2805
    :try_start_0
    const-string v1, "ALTER TABLE contacts ADD COLUMN ext_account_name TEXT NOT NULL DEFAULT \'0\' "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2813
    :goto_0
    return-void

    .line 2810
    :catch_0
    move-exception v0

    .line 2811
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "add ext account name to contacts table fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addRestrictedColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2901
    :try_start_0
    const-string v0, "ALTER TABLE raw_contacts ADD COLUMN is_restricted INTEGER NOT NULL DEFAULT 0 "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2909
    :goto_0
    :try_start_1
    const-string v0, "ALTER TABLE contacts ADD COLUMN single_is_restricted INTEGER NOT NULL DEFAULT 0 "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2915
    :goto_1
    return-void

    .line 2912
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2905
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private addVIPColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1946
    :try_start_0
    const-string v1, "ALTER TABLE contacts ADD COLUMN vip INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1951
    const-string v1, "ALTER TABLE raw_contacts ADD COLUMN vip INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    :goto_0
    return-void

    .line 1954
    :catch_0
    move-exception v0

    .line 1955
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "add colunm VIP fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private alterCallsCsFields(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 24
    .parameter "db"

    .prologue
    .line 2555
    :try_start_0
    const-string v2, "ALTER TABLE calls ADD COLUMN cs_local_uuid TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2556
    const-string v2, "ALTER TABLE calls ADD COLUMN cs_timestamp INTEGER NOT NULL DEFAULT 0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2559
    :goto_0
    const/4 v11, 0x0

    .line 2560
    .local v11, callIds:[J
    const-string v3, "calls"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2562
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    .line 2566
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 2567
    .local v21, size:I
    if-lez v21, :cond_0

    .line 2568
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 2569
    .local v19, idx:I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2570
    move/from16 v0, v21

    new-array v11, v0, [J

    .line 2571
    const/4 v14, 0x0

    .local v14, i:I
    move v15, v14

    .line 2573
    .end local v14           #i:I
    .local v15, i:I
    :goto_1
    add-int/lit8 v14, v15, 0x1

    .end local v15           #i:I
    .restart local v14       #i:I
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v11, v15

    .line 2574
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 2577
    .end local v14           #i:I
    .end local v19           #idx:I
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2580
    .end local v21           #size:I
    :cond_1
    const/4 v12, 0x0

    .line 2583
    if-eqz v11, :cond_3

    .line 2584
    move-object v10, v11

    .local v10, arr$:[J
    array-length v0, v10

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-wide v17, v10, v16

    .line 2585
    .local v17, id:J
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2586
    .local v22, uuid:Ljava/lang/String;
    if-eqz v22, :cond_2

    .line 2587
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 2588
    .local v23, values:Landroid/content/ContentValues;
    const-string v2, "cs_local_uuid"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    :try_start_2
    const-string v2, "calls"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2584
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 2577
    .end local v10           #arr$:[J
    .end local v16           #i$:I
    .end local v17           #id:J
    .end local v20           #len$:I
    .end local v22           #uuid:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2591
    .restart local v10       #arr$:[J
    .restart local v16       #i$:I
    .restart local v17       #id:J
    .restart local v20       #len$:I
    .restart local v22       #uuid:Ljava/lang/String;
    .restart local v23       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v13

    .line 2592
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "HtcCustomOpenHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCallsCsLocalUuid(): Exception happen during updating id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2597
    .end local v10           #arr$:[J
    .end local v13           #e:Ljava/lang/Exception;
    .end local v16           #i$:I
    .end local v17           #id:J
    .end local v20           #len$:I
    .end local v22           #uuid:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_3
    return-void

    .line 2557
    .end local v11           #callIds:[J
    .end local v12           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .restart local v11       #callIds:[J
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v14       #i:I
    .restart local v19       #idx:I
    .restart local v21       #size:I
    :cond_4
    move v15, v14

    .end local v14           #i:I
    .restart local v15       #i:I
    goto/16 :goto_1
.end method

.method private alterTableAddContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2057
    :try_start_0
    const-string v0, "ALTER TABLE contacts  ADD COLUMN   display_name TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2061
    :goto_0
    const-string v0, "DROP TRIGGER IF EXISTS contact_display_name_updated"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2062
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->fillContactDisplyName(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2122
    return-void

    .line 2058
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 17
    .parameter "db"
    .parameter "oldCustomVersion"
    .parameter "newCustomVersion"

    .prologue
    .line 399
    const-string v14, "HtcCustomOpenHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bootstrapping HtcContacts database - oldCustomVersion: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " newCustomVersion: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    move/from16 v9, p2

    .line 405
    .local v9, currentVersion:I
    const-string v14, "ALTER TABLE contacts  ADD COLUMN   ext_account_Type TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 409
    const-string v14, "CREATE INDEX contact_extaccount_index ON contacts (ext_account_Type);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 414
    const-string v14, "ALTER TABLE contacts ADD COLUMN ext_photo_url TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 419
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->addVIPColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 422
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->addContactIsReadOnly(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 425
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->addRestrictedColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 427
    sget-boolean v14, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v14, :cond_0

    .line 428
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->addExtAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 433
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createEventInstanceTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createSuggetionTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createBlacklistTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 458
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createManageCallsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 461
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->alterTableAddContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 463
    const-string v14, "CREATE INDEX IF NOT EXISTS contact_display_index ON contacts (display_name);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 469
    const-string v14, "ALTER TABLE groups  ADD COLUMN   photo BLOB"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    const-string v14, "ALTER TABLE groups  ADD COLUMN    sortorder   INTEGER NOT NULL DEFAULT 0 "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 479
    const-string v14, "ALTER TABLE groups  ADD COLUMN    display_title   TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    const-string v14, "ALTER TABLE groups  ADD COLUMN   is_hide  INTEGER "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 490
    const-string v14, "ALTER TABLE groups  ADD COLUMN   display_order  INTEGER NOT NULL DEFAULT 2147483647"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 494
    const-string v14, "ALTER TABLE groups  ADD COLUMN   is_attribute_set  INTEGER NOT NULL DEFAULT 0 "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 500
    const-string v14, "CREATE INDEX IF NOT EXISTS group_title_index ON groups (title);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 504
    const-string v14, "CREATE INDEX IF NOT EXISTS group_sortorder_index ON groups ( sortorder );"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 510
    const-string v14, " CREATE INDEX IF NOT EXISTS mimetypes_mimetype_mimetype_index ON mimetypes (mimetype)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 513
    const-string v2, "default_action"

    .line 514
    .local v2, DEFAULT_ACTION:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ALTER TABLE contacts  ADD COLUMN   "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->dbForProfile()I

    move-result v13

    .line 535
    .local v13, whichDB:I
    const/4 v14, 0x1

    if-ne v14, v13, :cond_1

    .line 536
    invoke-static/range {p1 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createMyContactIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)J

    .line 541
    :cond_1
    const-string v7, "account_name AS account_name, account_type AS account_type, sourceid AS sourceid, contact_id AS contact_id, count(contact_id) AS account_count"

    .line 554
    .local v7, accountsColumns:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELECT "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " FROM "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "raw_contacts"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, accountSelect:Ljava/lang/String;
    const-string v1, "data   JOIN mimetypes ON ( mimetypes._id = data.mimetype_id)  JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN groups ON (groups._id = data.data1)"

    .line 565
    .local v1, DATA_JOIN_RAW_CONTACTS_GROUPS_MIMETYPE:Ljava/lang/String;
    const-string v5, "Starred in Android"

    .line 567
    .local v5, STARRED_IN_ANDROID_TITLE:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " SELECT  COUNT (DISTINCT contact_id) FROM  (     SELECT  contact_id   FROM   data   JOIN mimetypes ON ( mimetypes._id = data.mimetype_id)  JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN groups ON (groups._id = data.data1)    WHERE  mimetype = \'vnd.android.cursor.item/group_membership\'title = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Starred in Android"

    invoke-static {v15}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "    UNION  ALL "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "    SELECT  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   AS  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "contact_id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   FROM  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "contacts"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   WHERE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "starred"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  =1   "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  )  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 580
    .local v12, favorite_count_query:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  SELECT  contact_id as _id    FROM data join mimetypes on(mimetypes ._id = data.mimetype_id) join raw_contacts on (raw_contacts._id = data.raw_contact_id) join groups on ( groups._id = data.data1)    WHERE mimetype ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "vnd.android.cursor.item/group_membership"

    invoke-static {v15}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "title"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Starred in Android"

    invoke-static {v15}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, STARRED_IN_ANDROID_MEMBER_QUERY:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  SELECT photo   FROM groups    WHERE title = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Favorite_8656150684447252476_6727701920173350445"

    invoke-static {v15}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "account_name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "HTC"

    invoke-static {v15}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "account_type"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "DeviceOnly"

    invoke-static {v15}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  LIMIT 1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, QUERY_FAVORITE_PHOTO:Ljava/lang/String;
    const-string v8, "SELECT sum(total) FROM ( \t    SELECT count(_id) as total FROM contacts \t    WHERE starred > 0 \t    UNION ALL        SELECT count(raw_contacts._id) as total FROM data \t    JOIN mimetypes ON (mimetypes._id = data.mimetype_id) \t    JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id)  \t    JOIN contacts ON (contacts._id = raw_contacts.contact_id) \t    JOIN groups ON (groups._id = data.data1) \t    WHERE mimetype = \'vnd.android.cursor.item/group_membership\' \t    AND groups.title = \'Starred in Android\'        AND contacts.starred = 0 )  "

    .line 611
    .local v8, calculate_favorite_count:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createRestrictedViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 613
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcContactView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 615
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcFavoriteView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 617
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcSyncTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 619
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isAABEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 620
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createAAB_TablesAndTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 624
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 625
    .local v10, cv:Landroid/content/ContentValues;
    const-string v14, "account_name"

    const-string v15, "pcsc"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v14, "account_type"

    const-string v15, "com.htc.android.pcsc"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v14, "ungrouped_visible"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 628
    const-string v14, "should_sync"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 629
    const-string v14, "settings"

    const-string v15, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 633
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 634
    const-string v14, "account_name"

    const-string v15, "HTC"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v14, "account_type"

    const-string v15, "DeviceOnly"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v14, "sourceid"

    const-string v15, "HTC_01"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v14, "system_id"

    const-string v15, "HTC_01"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v14, "group_visible"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    const-string v14, "sortorder"

    const/4 v15, -0x5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string v14, "title"

    const-string v15, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v14, "system_id"

    const-string v15, "Favorites"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v14, "display_title"

    const-string v15, "Favorites"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v14, "groups"

    const-string v15, "sourceid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 652
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 653
    const-string v14, "account_name"

    const-string v15, "HTC"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v14, "account_type"

    const-string v15, "DeviceOnly"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v14, "sourceid"

    const-string v15, "HTC_01"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v14, "group_visible"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v14, "sortorder"

    const/16 v15, 0x32

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    const-string v14, "title"

    const-string v15, "VIP"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v14, "system_id"

    const-string v15, "VIP"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v14, "display_title"

    const-string v15, "VIP"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v14, "groups"

    const-string v15, "sourceid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 665
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 666
    const-string v14, "account_name"

    const-string v15, "HTC"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v14, "account_type"

    const-string v15, "DeviceOnly"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v14, "sourceid"

    const-string v15, "HTC_01"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v14, "group_visible"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    const-string v14, "sortorder"

    const/16 v15, 0x28

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    const-string v14, "title"

    const-string v15, "Family"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v14, "system_id"

    const-string v15, "Family"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v14, "display_title"

    const-string v15, "Family"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v14, "group_is_read_only"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 679
    const-string v14, "groups"

    const-string v15, "sourceid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 682
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 683
    const-string v14, "account_name"

    const-string v15, "HTC"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v14, "account_type"

    const-string v15, "DeviceOnly"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v14, "sourceid"

    const-string v15, "HTC_01"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v14, "group_visible"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    const-string v14, "sortorder"

    const/16 v15, 0x1e

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string v14, "title"

    const-string v15, "Friends"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v14, "system_id"

    const-string v15, "Friends"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v14, "display_title"

    const-string v15, "Friends"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v14, "group_is_read_only"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    const-string v14, "groups"

    const-string v15, "sourceid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 698
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 699
    const-string v14, "account_name"

    const-string v15, "HTC"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v14, "account_type"

    const-string v15, "DeviceOnly"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v14, "sourceid"

    const-string v15, "HTC_01"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v14, "group_visible"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    const-string v14, "sortorder"

    const/16 v15, 0x14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    const-string v14, "title"

    const-string v15, "Coworkers"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v14, "system_id"

    const-string v15, "Coworkers"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v14, "display_title"

    const-string v15, "Coworkers"

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v14, "group_is_read_only"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    const-string v14, "groups"

    const-string v15, "sourceid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 713
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->insertFrequentGroup(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 725
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createSpeedDialTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 734
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createOrderShipTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 735
    invoke-static/range {p1 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createFrequencyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 738
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->alterCallsCsFields(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 742
    invoke-static/range {p1 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createIpDialTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->presetIpDialNumber(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;)V

    .line 749
    invoke-static/range {p1 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createCSFriendTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 751
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->extendsCallLogTableForSense40(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 754
    invoke-static/range {p1 .. p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createPeopleYouKnowTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 755
    return-void

    .line 435
    .end local v1           #DATA_JOIN_RAW_CONTACTS_GROUPS_MIMETYPE:Ljava/lang/String;
    .end local v2           #DEFAULT_ACTION:Ljava/lang/String;
    .end local v3           #QUERY_FAVORITE_PHOTO:Ljava/lang/String;
    .end local v4           #STARRED_IN_ANDROID_MEMBER_QUERY:Ljava/lang/String;
    .end local v5           #STARRED_IN_ANDROID_TITLE:Ljava/lang/String;
    .end local v6           #accountSelect:Ljava/lang/String;
    .end local v7           #accountsColumns:Ljava/lang/String;
    .end local v8           #calculate_favorite_count:Ljava/lang/String;
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v12           #favorite_count_query:Ljava/lang/String;
    .end local v13           #whichDB:I
    :catch_0
    move-exception v11

    .line 436
    .local v11, e:Ljava/lang/Exception;
    const-string v14, "HtcCustomOpenHelper"

    const-string v15, "createEventInstanceTable"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 451
    .end local v11           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 453
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v14, "HtcCustomOpenHelper"

    const-string v15, "createSuggetionTable"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 726
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v1       #DATA_JOIN_RAW_CONTACTS_GROUPS_MIMETYPE:Ljava/lang/String;
    .restart local v2       #DEFAULT_ACTION:Ljava/lang/String;
    .restart local v3       #QUERY_FAVORITE_PHOTO:Ljava/lang/String;
    .restart local v4       #STARRED_IN_ANDROID_MEMBER_QUERY:Ljava/lang/String;
    .restart local v5       #STARRED_IN_ANDROID_TITLE:Ljava/lang/String;
    .restart local v6       #accountSelect:Ljava/lang/String;
    .restart local v7       #accountsColumns:Ljava/lang/String;
    .restart local v8       #calculate_favorite_count:Ljava/lang/String;
    .restart local v10       #cv:Landroid/content/ContentValues;
    .restart local v12       #favorite_count_query:Ljava/lang/String;
    .restart local v13       #whichDB:I
    :catch_2
    move-exception v11

    .line 727
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v14, "HtcCustomOpenHelper"

    const-string v15, "createSpeedDialTable"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static cacheMyContactIds(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 1674
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1675
    .local v3, rawQuery:Ljava/lang/StringBuilder;
    const-string v4, " SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "contact_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw_contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    const-string v4, "data_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1684
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1685
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1686
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1687
    .local v2, idxId:I
    const-string v4, "contact_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1688
    .local v1, idxContactId:I
    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    .line 1689
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    .line 1690
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    .line 1693
    .end local v1           #idxContactId:I
    .end local v2           #idxId:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1694
    const/4 v0, 0x0

    .line 1696
    :cond_1
    const-string v4, "HtcCustomOpenHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cacheMyContactIds mMyContactCardRawId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const-string v4, "HtcCustomOpenHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cacheMyContactIds mMyContactCardId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    return-void
.end method

.method private createAAB_TablesAndTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2155
    const-string v0, "CREATE TABLE IF NOT EXISTS aabTracking(_id INTEGER REFERENCES raw_contacts(_id) PRIMARY KEY,_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2158
    const-string v0, "CREATE INDEX IF NOT EXISTS aabTrackingIndex ON aabTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2159
    const-string v0, "CREATE INDEX IF NOT EXISTS aabTrackingIndex2 ON aabTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2161
    const-string v0, "DROP TRIGGER IF EXISTS aabTracking_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2162
    const-string v0, "DROP TRIGGER IF EXISTS aabTracking_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2163
    const-string v0, "DROP TRIGGER IF EXISTS aabTracking_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2165
    const-string v0, "CREATE TRIGGER IF NOT EXISTS aabTracking_update AFTER UPDATE OF is_restricted,sourceid,version,dirty,aggregation_mode,aggregation_needed,times_contacted,last_time_contacted,starred,display_name,display_name_source ON raw_contacts WHEN new.account_type = \'com.htc.android.pcsc\' BEGIN UPDATE aabTracking SET _modify=1 WHERE _id=new._id;UPDATE raw_contacts SET sync4=current_timestamp WHERE _id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2172
    const-string v0, "CREATE TRIGGER IF NOT EXISTS aabTracking_delete AFTER DELETE ON raw_contacts WHEN old.account_type = \'com.htc.android.pcsc\' BEGIN UPDATE aabTracking SET _delete=1 WHERE _id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2176
    const-string v0, "CREATE TRIGGER IF NOT EXISTS aabTracking_insert AFTER INSERT ON raw_contacts FOR EACH ROW BEGIN INSERT INTO aabTracking(_id,_add) select new._id,1 WHERE new.account_type = \'com.htc.android.pcsc\';END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2183
    const-string v0, "CREATE TABLE IF NOT EXISTS aabGroupsTracking(_id INTEGER REFERENCES groups(_id) PRIMARY KEY,_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2186
    const-string v0, "CREATE INDEX IF NOT EXISTS aabGroupsTrackingIndex ON aabGroupsTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2187
    const-string v0, "CREATE INDEX IF NOT EXISTS aabGroupsTrackingIndex2 ON aabGroupsTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2189
    const-string v0, "DROP TRIGGER IF EXISTS aabGroupsTracking_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2190
    const-string v0, "DROP TRIGGER IF EXISTS aabGroupsTracking_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2191
    const-string v0, "DROP TRIGGER IF EXISTS aabGroupsTracking_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2193
    const-string v0, "CREATE TRIGGER IF NOT EXISTS aabGroupsTracking_update AFTER UPDATE OF sourceid,version,dirty,title,title_res,notes,system_id,photo,display_title ON groups WHEN new.account_type = \'com.htc.android.pcsc\' BEGIN UPDATE aabGroupsTracking SET _modify=1 WHERE _id=new._id;UPDATE groups SET sync4=current_timestamp WHERE _id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2200
    const-string v0, "CREATE TRIGGER IF NOT EXISTS aabGroupsTracking_delete AFTER UPDATE ON groups WHEN new.account_type = \'com.htc.android.pcsc\' AND new.deleted = 1 BEGIN UPDATE aabGroupsTracking SET _delete=1 WHERE _id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2204
    const-string v0, "CREATE TRIGGER IF NOT EXISTS aabGroupsTracking_insert AFTER INSERT ON groups FOR EACH ROW BEGIN INSERT INTO aabGroupsTracking(_id,_add) select new._id,1 WHERE new.account_type = \'com.htc.android.pcsc\';END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2209
    return-void
.end method

.method private createBlacklistTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1906
    :try_start_0
    const-string v1, "CREATE TABLE IF NOT EXISTS blocked_number (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT, UNIQUE(number));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1912
    const-string v1, "CREATE TABLE IF NOT EXISTS blacklist_password (password TEXT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1916
    const-string v1, "CREATE TABLE IF NOT EXISTS blocked_sim_contact (_id INTEGER PRIMARY KEY AUTOINCREMENT,serial_number TEXT NOT NULL, record_number TEXT NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    :goto_0
    return-void

    .line 1921
    :catch_0
    move-exception v0

    .line 1922
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "create blacklist Table fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static createCSFriendTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2667
    const-string v0, "CREATE TABLE IF NOT EXISTS csfriends (friendid VARCHAR(255),contactid INTEGER,type   INTEGER,name TEXT,state  INTEGER,contact_serverid  VARCHAR(255),profile_name TEXT,email  TEXT,phonenumber  TEXT,photo_url  TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2679
    return-void
.end method

.method private createEventInstanceTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1961
    const-string v0, "CREATE TABLE IF NOT EXISTS event_instance (_id INTEGER PRIMARY KEY AUTOINCREMENT,data_ref_id INTEGER REFERENCES data(_id),time INTEGER NOT NULL DEFAULT 0,is_read INTEGER NOT NULL DEFAULT 0,notify_location INTEGER NOT NULL,UNIQUE(data_ref_id,time,notify_location));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1973
    return-void
.end method

.method private static createFrequencyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2390
    const-string v0, "CREATE TABLE IF NOT EXISTS frequency ( _id INTEGER PRIMARY KEY AUTOINCREMENT, raw_contact_id INTEGER REFERENCES raw_contacts(_id),  type INTEGER,  times INTEGER NOT NULL DEFAULT 0 ,  UNIQUE( raw_contact_id , type ) ON CONFLICT REPLACE );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2400
    const-string v0, "DROP TRIGGER IF EXISTS raw_contact_deleted_trigger_frequency;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2401
    const-string v0, "CREATE TRIGGER IF NOT EXISTS raw_contact_deleted_trigger_frequency    BEFORE DELETE ON raw_contacts BEGIN    DELETE FROM frequency     WHERE raw_contact_id=OLD._id; END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2408
    return-void
.end method

.method private createHTCFavoriteIfNotExist(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 7
    .parameter "db"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1769
    const/4 v0, 0x0

    .line 1770
    .local v0, cursor:Landroid/database/Cursor;
    const-string v3, " SELECT title  ,  system_id   FROM groups   WHERE system_id = HTC Favorite"

    .line 1772
    .local v3, rawQueryStr:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1773
    .local v4, values:Landroid/content/ContentValues;
    const-wide/16 v1, 0x0

    .line 1775
    .local v1, id:J
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1776
    if-eqz v0, :cond_0

    .line 1777
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1778
    const-string v5, "title"

    const-string v6, "HTC Favorite"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const-string v5, "system_id"

    const-string v6, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    const-string v5, "deleted"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1781
    const-string v5, "group_visible"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1782
    const-string v5, "groups"

    const-string v6, "account_name"

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1789
    :cond_0
    if-eqz v0, :cond_1

    .line 1790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1793
    :cond_1
    :goto_0
    return-wide v1

    .line 1786
    :catch_0
    move-exception v5

    .line 1789
    if-eqz v0, :cond_1

    .line 1790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1789
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    .line 1790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5
.end method

.method private createHtcContactView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 2232
    const-string v0, "has_phone_number, name_raw_contact_id, lookup, photo_id, photo_file_id, CAST(EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS INTEGER) AS in_visible_group, status_update_id"

    .line 2242
    .local v0, baseContactColumns:Ljava/lang/String;
    const-string v1, "name_raw_contact.display_name_source AS display_name_source, name_raw_contact.display_name AS display_name, name_raw_contact.display_name_alt AS display_name_alt, name_raw_contact.phonetic_name AS phonetic_name, name_raw_contact.phonetic_name_style AS phonetic_name_style, name_raw_contact.sort_key AS sort_key, name_raw_contact.sort_key_alt AS sort_key_alt"

    .line 2260
    .local v1, contactNameColumns:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contacts.custom_ringtone AS custom_ringtone, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "contacts.last_time_contacted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "last_time_contacted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "contacts.send_to_voicemail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "send_to_voicemail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "contacts.starred"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "starred"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "contacts.times_contacted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "times_contacted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2274
    .local v2, contactsColumns:Ljava/lang/String;
    const-string v4, " contacts.vip AS vip, ext_account_Type, ext_photo_url, default_action , name_raw_contact_id , contact_is_read_only , single_is_restricted"

    .line 2285
    .local v4, htc_extra_contactsColumns:Ljava/lang/String;
    sget-boolean v5, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v5, :cond_0

    .line 2286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ext_account_name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2290
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT contacts._id AS _id,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "contacts._id"

    const-string v7, "photo_uri"

    invoke-static {v6, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "contacts._id"

    const-string v7, "photo_thumb_uri"

    invoke-static {v6, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->dbForProfile()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is_user_profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "contacts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " JOIN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "raw_contacts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS name_raw_contact ON("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name_raw_contact_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=name_raw_contact."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2302
    .local v3, htc_contactsSelect:Ljava/lang/String;
    const-string v5, "DROP VIEW IF EXISTS view_htc_contacts"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE VIEW IF NOT EXISTS view_htc_contacts AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2307
    const-string v5, "DROP VIEW IF EXISTS view_htc_contacts_restricted"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE VIEW IF NOT EXISTS view_htc_contacts_restricted AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "single_is_restricted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= 0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2331
    return-void
.end method

.method private createHtcFavoriteView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 2334
    const-string v3, "DROP VIEW IF EXISTS view_all_favorite"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2335
    const-string v0, " SELECT count(_id)  FROM contacts WHERE starred > 0"

    .line 2352
    .local v0, calculate_starredMark_count:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(-1) AS _id,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "HTC"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DeviceOnly"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "HTC"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sourceid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1 AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0 AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dirty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Favorite_8656150684447252476_6727701920173350445"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "title_res"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "notes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "system_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0 AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1 AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "group_visible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0 AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "should_sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0 AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "auto_add"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0 AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "favorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0 AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "group_is_read_only"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sync1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sync2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sync3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sync4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NULL AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res_package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " 0 AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_attribute_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "photo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SELECT count(_id)  FROM contacts WHERE starred > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )   AS  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "summ_count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2379
    .local v1, favoiteGroupColumn:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Favorite_8656150684447252476_6727701920173350445"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "HTC"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DeviceOnly"

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2386
    .local v2, favoriteSelect:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE VIEW IF NOT EXISTS view_all_favorite AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2387
    return-void
.end method

.method private createHtcSyncTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 788
    const-string v0, "CREATE TABLE IF NOT EXISTS easTracking(_id INTEGER REFERENCES raw_contacts(_id) PRIMARY KEY,serverId STRING ,_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 ,accountName STRING);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 797
    const-string v0, "CREATE INDEX IF NOT EXISTS easTrackingIndex ON easTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 798
    const-string v0, "CREATE INDEX IF NOT EXISTS easTrackingIndex2 ON easTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 799
    const-string v0, "CREATE INDEX IF NOT EXISTS easTrackingIndex3 ON easTracking(serverId);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 801
    const-string v0, "CREATE TABLE IF NOT EXISTS easSyncInfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,synckey STRING, CollID STRING, LastSyncResult INTEGER, LastSyncTime INTEGER, LastSyncErrorCode INTEGER, Enabled INTEGER,accountName STRING NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 815
    const-string v0, "CREATE TABLE IF NOT EXISTS pcscTracking(_id INTEGER REFERENCES raw_contacts(_id) PRIMARY KEY,_guid STRING NOT NULL DEFAULT \'null\',_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 823
    const-string v0, "CREATE INDEX IF NOT EXISTS pcscTrackingIndex ON pcscTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 824
    const-string v0, "CREATE INDEX IF NOT EXISTS pcscTrackingIndex2 ON pcscTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 826
    const-string v0, "CREATE TABLE IF NOT EXISTS pcscSyncInfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,LastSyncTime INTEGER, NextSyncTime INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 832
    const-string v0, "INSERT INTO pcscSyncInfo (LastSyncTime, NextSyncTime) VALUES (\'0\', \'0\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 837
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    const-string v0, "CREATE TABLE IF NOT EXISTS myphonebookTracking(_id INTEGER REFERENCES raw_contacts(_id) PRIMARY KEY,_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 845
    const-string v0, "CREATE INDEX IF NOT EXISTS myphonebookTrackingIndex ON myphonebookTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 846
    const-string v0, "CREATE INDEX IF NOT EXISTS myphonebookTrackingIndex2 ON myphonebookTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 849
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    const-string v0, "CREATE TABLE IF NOT EXISTS myphonebookProfileTracking(_id INTEGER REFERENCES raw_contacts(_id) PRIMARY KEY,_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 857
    const-string v0, "CREATE INDEX IF NOT EXISTS myphonebookProfileTrackingIndex ON myphonebookProfileTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 858
    const-string v0, "CREATE INDEX IF NOT EXISTS myphonebookProfileTrackingIndex2 ON myphonebookProfileTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 859
    sget-wide v0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO myphonebookProfileTracking(_id,_add) values (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 863
    :cond_1
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 864
    return-void
.end method

.method static createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 867
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 868
    return-void
.end method

.method static createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 5
    .parameter "db"
    .parameter "enableSense_2_0"

    .prologue
    .line 873
    const-string v2, "CREATE TRIGGER IF NOT EXISTS tracking_insert AFTER INSERT ON raw_contacts FOR EACH ROW BEGIN "

    .line 876
    .local v2, trackingStr:Ljava/lang/String;
    const-string v0, "com.htc.android.mail.eas"

    .line 877
    .local v0, accountType_eas:Ljava/lang/String;
    const-string v1, "com.htc.android.windowslive"

    .line 878
    .local v1, accountType_windowslive:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "INSERT INTO eastracking(_id,_add,accountName) select new._id,1,new.account_name WHERE new.account_type IN (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "INSERT INTO pcscTracking(_id,_add) select new._id,1 WHERE new.account_type = \'com.htc.android.pcsc\';"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 884
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 885
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "INSERT INTO myphonebookTracking(_id,_add) select new._id,1 WHERE new.account_type = \'com.htc.android.myphonebook\';"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 887
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookProfileEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "INSERT INTO myphonebookProfileTracking(_id,_add) select new._id,1 WHERE new.account_type = \'DeviceOnly\' AND new.account_name = \'HTC\' AND new.sourceid = \'HTC_01\';"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 892
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 894
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 899
    const-string v0, "com.htc.android.mail.eas"

    .line 900
    const-string v1, "com.htc.android.windowslive"

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TRIGGER IF NOT EXISTS easTracking_update AFTER UPDATE OF dirty ON raw_contacts WHEN new.account_type IN (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ( new.dirty = 1 ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BEGIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UPDATE easTracking SET _modify=1 WHERE _id=new._id;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TRIGGER IF NOT EXISTS easTracking_delete AFTER UPDATE ON raw_contacts WHEN new.account_type IN (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND new.deleted = 1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BEGIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UPDATE easTracking SET _delete=1 WHERE _id=new._id;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TRIGGER IF NOT EXISTS easTracking_delete2 AFTER DELETE ON raw_contacts WHEN old.account_type IN (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BEGIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UPDATE easTracking SET _delete=1 WHERE _id=old._id;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 924
    const-string v3, "CREATE TRIGGER IF NOT EXISTS pcscTracking_update AFTER UPDATE ON raw_contacts WHEN new.account_type = \'com.htc.android.pcsc\' AND old.version != new.version   BEGIN UPDATE raw_contacts SET sync4=current_timestamp WHERE _id=new._id;UPDATE pcscTracking SET _modify=1 WHERE _id=new._id;END"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 932
    const-string v3, "CREATE TRIGGER IF NOT EXISTS pcscTracking_delete AFTER DELETE ON raw_contacts WHEN old.account_type = \'com.htc.android.pcsc\' BEGIN UPDATE pcscTracking SET _delete=1 WHERE _id=old._id;END"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 943
    const-string v3, "CREATE TRIGGER IF NOT EXISTS groups_update AFTER UPDATE OF title ON groups BEGIN UPDATE raw_contacts SET sync4=current_timestamp WHERE account_type=\'com.htc.android.pcsc\' AND _id IN (SELECT data.raw_contact_id FROM data WHERE data.data1=new._id AND \'vnd.android.cursor.item/group_membership\'=(SELECT mimetype FROM mimetypes WHERE mimetypes._id=data.mimetype_id));END"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 952
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 953
    const-string v3, "CREATE TRIGGER IF NOT EXISTS myphonebookTracking_update AFTER UPDATE OF is_restricted,sourceid,version,dirty,aggregation_mode,aggregation_needed,times_contacted,last_time_contacted,starred,display_name,display_name_source ON raw_contacts WHEN new.account_type = \'com.htc.android.myphonebook\' BEGIN UPDATE myphonebookTracking SET _modify=1 WHERE _id=new._id;UPDATE raw_contacts SET sync4=current_timestamp WHERE _id=new._id;END"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 962
    const-string v3, "CREATE TRIGGER IF NOT EXISTS myphonebookTracking_delete AFTER UPDATE ON raw_contacts WHEN new.account_type = \'com.htc.android.myphonebook\' AND new.deleted = 1 BEGIN UPDATE myphonebookTracking SET _delete=1 WHERE _id=new._id;END"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 969
    const-string v3, "CREATE TRIGGER IF NOT EXISTS myphonebookGroups_update AFTER UPDATE OF dirty ON groups WHEN new.account_type = \'com.htc.android.myphonebook\' BEGIN UPDATE myphonebookTracking SET _modify=1 WHERE _id in (select raw_contact_id from data join mimetypes on data.mimetype_id = mimetypes._id where mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' and data1=new._id);END"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 979
    :cond_2
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookProfileEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 980
    const-string v3, "CREATE TRIGGER IF NOT EXISTS myphonebookProfileTracking_update AFTER UPDATE OF is_restricted,sourceid,version,dirty,contact_id,aggregation_mode,aggregation_needed,times_contacted,last_time_contacted,starred,display_name,display_name_source ON raw_contacts WHEN new.account_type = \'DeviceOnly\' AND new.account_name = \'HTC\' AND new.sourceid = \'HTC_01\' BEGIN UPDATE myphonebookProfileTracking SET _modify=1 WHERE _id=new._id;UPDATE raw_contacts SET sync4=current_timestamp WHERE _id=new._id;END"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 991
    const-string v3, "CREATE TRIGGER IF NOT EXISTS myphonebookProfileTracking_delete AFTER UPDATE ON raw_contacts WHEN new.account_type = \'DeviceOnly\' AND new.account_name = \'HTC\' AND new.sourceid = \'HTC_01\' AND new.deleted = 1 BEGIN UPDATE myphonebookProfileTracking SET _delete=1 WHERE _id=new._id;END"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1000
    :cond_3
    return-void
.end method

.method private static createIpDialTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2637
    const-string v0, "CREATE TABLE IF NOT EXISTS ip_dial (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT, state INTEGER,UNIQUE(number));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2643
    return-void
.end method

.method private createManageCallsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1930
    :try_start_0
    const-string v1, "CREATE TABLE IF NOT EXISTS vip_sim_contact (_id INTEGER PRIMARY KEY AUTOINCREMENT,serial_number TEXT NOT NULL, record_number TEXT NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1940
    :goto_0
    return-void

    .line 1936
    :catch_0
    move-exception v0

    .line 1937
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "create manage calls Table fail!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static createMyContactIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 13
    .parameter "db"

    .prologue
    const-wide/16 v11, 0x0

    .line 1703
    const-string v8, "HtcCustomOpenHelper"

    const-string v9, "createMyContactIfNotExists"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const-string v6, "SELECT _id FROM contacts WHERE lookup=\'profile\'"

    .line 1709
    .local v6, profileQuery:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1710
    .local v0, cursor:Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    .line 1711
    .local v2, myContactId:J
    const-wide/16 v4, 0x0

    .line 1713
    .local v4, myContactRawId:J
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1714
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1717
    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1718
    const-string v8, "HtcCustomOpenHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createMyContactIfNotExists myContactId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :cond_0
    cmp-long v8, v11, v2

    if-nez v8, :cond_2

    .line 1722
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1723
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1724
    const-string v8, "account_type"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1725
    const-string v8, "data_set"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1726
    const-string v8, "aggregation_mode"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1727
    const-string v8, "contact_id"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1728
    const-string v8, "raw_contacts"

    const-string v9, "contact_id"

    invoke-virtual {p0, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 1729
    const-string v8, "HtcCustomOpenHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createMyContactIfNotExists myContactRawId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    cmp-long v8, v11, v4

    if-gez v8, :cond_1

    .line 1732
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1733
    const-string v8, "name_raw_contact_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1734
    const-string v8, "lookup"

    const-string v9, "profile"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const-string v8, "contacts"

    const-string v9, "_id"

    invoke-virtual {p0, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1736
    const-string v8, "HtcCustomOpenHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createMyContactIfNotExists myContactId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_1
    cmp-long v8, v11, v2

    if-gez v8, :cond_2

    .line 1741
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1742
    const-string v8, "contact_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1743
    const-string v8, "raw_contacts"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_2
    if-eqz v0, :cond_3

    .line 1752
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1755
    :cond_3
    :goto_0
    sput-wide v4, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    .line 1756
    sput-wide v2, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    .line 1757
    const-string v8, "HtcCustomOpenHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createMyContactIfNotExists mMyContactCardRawId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-wide v10, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    const-string v8, "HtcCustomOpenHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createMyContactIfNotExists mMyContactCardId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-wide v10, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    return-wide v2

    .line 1748
    :catch_0
    move-exception v1

    .line 1749
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "HtcCustomOpenHelper"

    const-string v9, "createMyContactIfNotExists exception"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1751
    if-eqz v0, :cond_3

    .line 1752
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1751
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v0, :cond_4

    .line 1752
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v8
.end method

.method private createMyPhoneBook(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2141
    const-string v0, "CREATE TABLE IF NOT EXISTS myphonebookTracking(_id INTEGER REFERENCES raw_contacts(_id) PRIMARY KEY,_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2148
    const-string v0, "CREATE INDEX IF NOT EXISTS myphonebookTrackingIndex ON myphonebookTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2149
    const-string v0, "CREATE INDEX IF NOT EXISTS myphonebookTrackingIndex2 ON myphonebookTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2151
    return-void
.end method

.method private createMyPhoneBookProfile(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2213
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2214
    const-string v0, "CREATE TABLE myphonebookProfileTracking(_id INTEGER REFERENCES raw_contacts(_id) PRIMARY KEY,_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2221
    const-string v0, "CREATE INDEX IF NOT EXISTS myphonebookProfileTrackingIndex ON myphonebookProfileTracking(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2222
    const-string v0, "CREATE INDEX IF NOT EXISTS myphonebookProfileTrackingIndex2 ON myphonebookProfileTracking(_syncing);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2223
    sget-wide v0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO myphonebookProfileTracking(_id,_add) values (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2227
    :cond_0
    return-void
.end method

.method private createOrderShipTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 759
    const-string v0, "CREATE TABLE IF NOT EXISTS orderships(group_id Integer DEFAULT (-1),raw_contact_id INTEGER NOT NULL DEFAULT 0 ,display_order INTEGER NOT NULL DEFAULT 2147483647);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 764
    const-string v0, "CREATE INDEX IF NOT EXISTS ordershipIndex ON orderships(group_id, raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 767
    const-string v0, "DROP TRIGGER IF EXISTS delete_contract_delete_ordership;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    const-string v0, "CREATE TRIGGER delete_contract_delete_ordership    BEFORE DELETE ON raw_contacts BEGIN    DELETE FROM orderships     WHERE orderships.raw_contact_id=OLD._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 776
    const-string v0, "DROP TRIGGER IF EXISTS delete_group_delete_ordership;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 777
    const-string v0, "CREATE TRIGGER delete_group_delete_ordership    BEFORE DELETE ON groups BEGIN    DELETE FROM orderships     WHERE orderships.group_id=OLD._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method private static createPeopleYouKnowTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2683
    const-string v0, "CREATE TABLE IF NOT EXISTS peopleyouknow_plugins(_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,account_type  TEXT,package_name TEXT,class_name TEXT,icon_id INTEGER,should_upload_contacts INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2693
    const-string v0, "CREATE TABLE IF NOT EXISTS peopleyouknow_suggestionrequests(_id INTEGER PRIMARY KEY AUTOINCREMENT,plugin_id INTEGER,raw_contact_id INTEGER,friend_uid   TEXT,friend_name  TEXT,matched_email TEXT,matched_mobile TEXT,type INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2704
    const-string v0, "CREATE TABLE IF NOT EXISTS peopleyouknow_frienddetails(_id INTEGER PRIMARY KEY AUTOINCREMENT,suggestion_request_id INTEGER,mimetype_id INTEGER,data  TEXT,type  TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2712
    const-string v0, "CREATE TABLE IF NOT EXISTS peopleyouknow_datamark(_id INTEGER PRIMARY KEY AUTOINCREMENT,plugin_id INTEGER,data_id INTEGER,data_version INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2719
    const-string v0, "DROP TRIGGER IF EXISTS peoleyouknow_plugin_deleted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2720
    const-string v0, "CREATE TRIGGER  peoleyouknow_plugin_deleted    BEFORE DELETE ON peopleyouknow_plugins BEGIN    DELETE FROM  peopleyouknow_frienddetails      WHERE peopleyouknow_frienddetails.suggestion_request_id IN (         SELECT _id FROM peopleyouknow_suggestionrequests              WHERE peopleyouknow_suggestionrequests.plugin_id=OLD._id);   DELETE FROM  peopleyouknow_suggestionrequests     WHERE peopleyouknow_suggestionrequests.plugin_id=OLD._id;   DELETE FROM  peopleyouknow_datamark     WHERE peopleyouknow_datamark.plugin_id=OLD._id; END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2733
    const-string v0, "DROP TRIGGER IF EXISTS peoleyouknow_suggestionrequest_deleted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2734
    const-string v0, "CREATE TRIGGER  peoleyouknow_suggestionrequest_deleted    BEFORE DELETE ON peopleyouknow_suggestionrequests BEGIN    DELETE FROM  peopleyouknow_frienddetails      WHERE peopleyouknow_frienddetails.suggestion_request_id=OLD._id; END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2742
    return-void
.end method

.method private createRestrictedView(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "db"
    .parameter "dataSelect"
    .parameter "rawContactsSelect"
    .parameter "contactsSelect"
    .parameter "rawEntitiesSelect"
    .parameter "entitiesSelect"
    .parameter "streamItemSelect"

    .prologue
    .line 3235
    :try_start_0
    const-string v4, "DROP VIEW IF EXISTS view_data_restricted;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3236
    const-string v4, "DROP VIEW IF EXISTS view_raw_contacts_restricted;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3237
    const-string v4, "DROP VIEW IF EXISTS view_contacts_restricted;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3238
    const-string v4, "DROP VIEW IF EXISTS view_raw_entities_restricted;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3239
    const-string v4, "DROP VIEW IF EXISTS view_entities_restricted;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3240
    const-string v4, "DROP VIEW IF EXISTS view_stream_items_restricted;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3244
    const-string v3, " WHERE is_restricted = 0 "

    .line 3245
    .local v3, excludeRawContactsSelection:Ljava/lang/String;
    const-string v1, " WHERE single_is_restricted = 0 "

    .line 3249
    .local v1, excludeContactsSelection:Ljava/lang/String;
    const-string v2, " WHERE raw_contacts.is_restricted = 0 "

    .line 3253
    .local v2, excludeRawContactsDataSelection:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW view_data_restricted AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW view_raw_contacts_restricted AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW view_contacts_restricted AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW view_raw_entities_restricted AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW view_entities_restricted AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE VIEW view_stream_items_restricted AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3273
    return-void

    .line 3267
    .end local v1           #excludeContactsSelection:Ljava/lang/String;
    .end local v2           #excludeRawContactsDataSelection:Ljava/lang/String;
    .end local v3           #excludeRawContactsSelection:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3268
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "HtcCustomOpenHelper"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3269
    throw v0
.end method

.method private createRestrictedViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16
    .parameter "db"

    .prologue
    .line 2961
    const-string v12, "is_primary, is_super_primary, data_version, data.package_id,package AS res_package,data.mimetype_id,mimetype AS mimetype, is_read_only, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data_sync1, data_sync2, data_sync3, data_sync4"

    .line 2990
    .local v12, dataColumns:Ljava/lang/String;
    const-string v14, "raw_contacts.account_name AS account_name,raw_contacts.account_type AS account_type,raw_contacts.data_set AS data_set,(CASE WHEN raw_contacts.data_set IS NULL THEN raw_contacts.account_type ELSE raw_contacts.account_type||\'/\'||raw_contacts.data_set END) AS account_type_and_data_set,raw_contacts.sourceid AS sourceid,raw_contacts.name_verified AS name_verified,raw_contacts.version AS version,raw_contacts.dirty AS dirty,raw_contacts.sync1 AS sync1,raw_contacts.sync2 AS sync2,raw_contacts.sync3 AS sync3,raw_contacts.sync4 AS sync4"

    .line 3009
    .local v14, syncColumns:Ljava/lang/String;
    const-string v8, "has_phone_number, name_raw_contact_id, lookup, photo_id, photo_file_id, CAST(EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS INTEGER) AS in_visible_group, status_update_id"

    .line 3019
    .local v8, baseContactColumns:Ljava/lang/String;
    const-string v10, "contacts.custom_ringtone AS custom_ringtone,contacts.send_to_voicemail AS send_to_voicemail,contacts.last_time_contacted AS last_time_contacted,contacts.times_contacted AS times_contacted,contacts.starred AS starred"

    .line 3031
    .local v10, contactOptionColumns:Ljava/lang/String;
    const-string v9, "name_raw_contact.display_name_source AS display_name_source, name_raw_contact.display_name AS display_name, name_raw_contact.display_name_alt AS display_name_alt, name_raw_contact.phonetic_name AS phonetic_name, name_raw_contact.phonetic_name_style AS phonetic_name_style, name_raw_contact.sort_key AS sort_key, name_raw_contact.sort_key_alt AS sort_key_alt"

    .line 3047
    .local v9, contactNameColumns:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT data._id AS _id,raw_contact_id, raw_contacts.contact_id AS contact_id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts.contact_id"

    const-string v15, "photo_uri"

    invoke-static {v1, v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts.contact_id"

    const-string v15, "photo_thumb_uri"

    invoke-static {v1, v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->dbForProfile()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.mimetype_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts.contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS name_raw_contact ON("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=name_raw_contact."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.package_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packages._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes.mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3078
    .local v2, dataSelect:Ljava/lang/String;
    const-string v13, "custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred"

    .line 3085
    .local v13, rawContactOptionColumns:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT raw_contacts._id AS _id,contact_id, aggregation_mode, raw_contact_is_read_only, deleted, display_name_source, display_name, display_name_alt, phonetic_name, phonetic_name_style, sort_key, sort_key_alt, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->dbForProfile()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3103
    .local v3, rawContactsSelect:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contacts.custom_ringtone AS custom_ringtone, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts.last_time_contacted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "last_time_contacted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts.send_to_voicemail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "send_to_voicemail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts.starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts.times_contacted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "times_contacted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3117
    .local v11, contactsColumns:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT contacts._id AS _id,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts._id"

    const-string v15, "photo_uri"

    invoke-static {v1, v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts._id"

    const-string v15, "photo_thumb_uri"

    invoke-static {v1, v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->dbForProfile()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_user_profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS name_raw_contact ON("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=name_raw_contact."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3129
    .local v4, contactsSelect:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT contact_id, raw_contacts.deleted AS deleted,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts.starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "starred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->dbForProfile()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_is_user_profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.package_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packages._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.mimetype_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes.mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3155
    .local v5, rawEntitiesSelect:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT raw_contacts.contact_id AS _id, raw_contacts.contact_id AS contact_id, raw_contacts.deleted AS deleted,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts.contact_id"

    const-string v15, "photo_uri"

    invoke-static {v1, v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts.contact_id"

    const-string v15, "photo_thumb_uri"

    invoke-static {v1, v15}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->dbForProfile()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_user_profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_sync4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sourceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "group_sourceid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts.contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS name_raw_contact ON("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=name_raw_contact."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.raw_contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "raw_contacts._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.package_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packages._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data.mimetype_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetypes.mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groups._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3190
    .local v6, entitiesSelect:Ljava/lang/String;
    const-string v7, "SELECT stream_items._id, contacts._id AS contact_id, contacts.lookup AS contact_lookup, raw_contacts.account_name, raw_contacts.account_type, raw_contacts.data_set, stream_items.raw_contact_id as raw_contact_id, raw_contacts.sourceid as raw_contact_source_id, stream_items.res_package, stream_items.icon, stream_items.label, stream_items.text, stream_items.timestamp, stream_items.comments, stream_items.stream_item_sync1, stream_items.stream_item_sync2, stream_items.stream_item_sync3, stream_items.stream_item_sync4 FROM stream_items JOIN raw_contacts ON (stream_items.raw_contact_id=raw_contacts._id) JOIN contacts ON (raw_contacts.contact_id=contacts._id)"

    .local v7, streamItemSelect:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3220
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createRestrictedView(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    return-void
.end method

.method private createSpeedDialTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1808
    const-string v0, "CREATE TABLE IF NOT EXISTS speed_dial (_id INTEGER PRIMARY KEY AUTOINCREMENT,location INTEGER NOT NULL,data_id INTEGER REFERENCES data(_id),raw_contact_id INTEGER REFERENCES raw_contacts(_id),recordNumber INTEGER,recordLocation INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1819
    const-string v0, "INSERT INTO speed_dial ( location ) VALUES (2)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1820
    const-string v0, "INSERT INTO speed_dial ( location ) VALUES (3)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1821
    const-string v0, "INSERT INTO speed_dial ( location ) VALUES (4)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1822
    const-string v0, "INSERT INTO speed_dial ( location ) VALUES (5)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1823
    const-string v0, "INSERT INTO speed_dial ( location ) VALUES (6)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1824
    const-string v0, "INSERT INTO speed_dial ( location ) VALUES (7)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1825
    const-string v0, "INSERT INTO speed_dial ( location ) VALUES (8)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1826
    const-string v0, "INSERT INTO speed_dial ( location ) VALUES (9)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1829
    const-string v0, "CREATE TRIGGER IF NOT EXISTS deleteRawContactAndDropSpeedDial DELETE on raw_contacts BEGIN UPDATE speed_dial SET raw_contact_id = NULL, data_id = NULL WHERE old._id = speed_dial.raw_contact_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1837
    const-string v0, "CREATE TRIGGER IF NOT EXISTS deleteDataAndDropSpeedDial DELETE on data BEGIN UPDATE speed_dial SET raw_contact_id = NULL, data_id = NULL WHERE old._id = speed_dial.data_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1844
    return-void
.end method

.method private createSuggetionTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1855
    const-string v0, "CREATE TABLE IF NOT EXISTS suggestion (_id INTEGER PRIMARY KEY AUTOINCREMENT,raw_contact_id1 INTEGER NOT NULL,raw_contact_id2 INTEGER NOT NULL,removed INTEGER NOT NULL DEFAULT 0, UNIQUE(raw_contact_id1,raw_contact_id2));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1863
    return-void
.end method

.method static dropAllCustomerSchema(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1013
    const-string v0, "HtcCustomOpenHelper"

    const-string v1, "dropAllCustomerSchema E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v0, "DROP TABLE IF EXISTS speed_dial;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1015
    const-string v0, "DROP TABLE IF EXISTS suggestion;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1017
    const-string v0, "DROP TABLE IF EXISTS blocked_number;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1018
    const-string v0, "DROP TABLE IF EXISTS blacklist_password;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1019
    const-string v0, "DROP TABLE IF EXISTS blocked_sim_contact;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1020
    const-string v0, "DROP TABLE IF EXISTS vip_sim_contact;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1021
    const-string v0, "DROP TABLE IF EXISTS event_instance;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1022
    const-string v0, "DROP TABLE IF EXISTS frequency;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1023
    const-string v0, "DROP TABLE IF EXISTS speed_dial;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1024
    const-string v0, "DROP TABLE IF EXISTS orderships;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1025
    const-string v0, "DROP TABLE IF EXISTS name_pattern;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1026
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->removeHtcSyncTables(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1028
    const-string v0, "DROP TABLE IF EXISTS csfriends;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1029
    invoke-static {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->removePeopleYouKnowTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1031
    const-string v0, "HtcCustomOpenHelper"

    const-string v1, "dropAllCustomerSchema X"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return-void
.end method

.method private ensureAndFixGroupsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const/4 v7, 0x0

    .line 2000
    const-string v1, "SELECT group_visible FROM groups WHERE account_type=\'com.google\' AND title=\'My Contacts\' AND auto_add=1 AND system_id=\'Contacts\'"

    .line 2008
    .local v1, googleGroupsQuery:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2009
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 2010
    .local v4, visibleFlag:I
    const/4 v2, 0x0

    .line 2012
    .local v2, queryResult:Z
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2013
    if-eqz v0, :cond_0

    .line 2014
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2015
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2016
    const/4 v2, 0x1

    .line 2023
    :cond_0
    if-eqz v0, :cond_1

    .line 2024
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2028
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2029
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2030
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "group_visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2031
    const-string v5, "groups"

    const-string v6, "account_type=\'com.google\'"

    invoke-virtual {p1, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2034
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 2020
    :catch_0
    move-exception v5

    .line 2023
    if-eqz v0, :cond_1

    .line 2024
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2023
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    .line 2024
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method private ensureSpeedDialTable(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 1976
    const/4 v3, 0x0

    .line 1977
    .local v3, valid:Z
    const-string v2, "SELECT count(_id) as itemounts FROM speed_dial"

    .line 1978
    .local v2, rawSql:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1980
    .local v0, c:Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1981
    if-eqz v0, :cond_0

    .line 1982
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1983
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1984
    .local v1, counts:I
    const/16 v5, 0x8

    if-lt v1, v5, :cond_2

    const/4 v3, 0x1

    .line 1990
    .end local v1           #counts:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1991
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1994
    :cond_1
    :goto_1
    return v3

    .restart local v1       #counts:I
    :cond_2
    move v3, v4

    .line 1984
    goto :goto_0

    .line 1987
    .end local v1           #counts:I
    :catch_0
    move-exception v4

    .line 1990
    if-eqz v0, :cond_1

    .line 1991
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1990
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 1991
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method

.method private extendsCallLogTableForSense40(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 3277
    :try_start_0
    const-string v1, "ALTER TABLE calls ADD data_id INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3280
    const-string v1, "ALTER TABLE calls ADD package_name TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3283
    const-string v1, "ALTER TABLE calls ADD package_label_res INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3286
    const-string v1, "ALTER TABLE calls ADD package_icon_res INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3291
    :goto_0
    return-void

    .line 3288
    :catch_0
    move-exception v0

    .line 3289
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "e: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private fillContactDisplyName(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 2126
    const-wide/16 v0, 0x0

    .line 2127
    .local v0, begin:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2129
    const-string v2, " UPDATE contacts SET display_name =  ( SELECT raw_contacts.display_name FROM raw_contacts  WHERE raw_contacts._id = name_raw_contact_id ) WHERE contacts.display_name IS NULL;"

    .line 2136
    .local v2, fillingSqlstatement:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2137
    const-string v3, "Contacts_Uprading"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillContactDisplyName: it takes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    return-void
.end method

.method private fixAndMoveIsDefaultActionToData12(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    const/4 v9, 0x0

    .line 2817
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->remvoeHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2819
    const-string v4, " SELECT _id from mimetypes WHERE mimetype = ?"

    .line 2822
    .local v4, getMimetypeId:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    .line 2823
    .local v0, arg:[Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 2824
    .local v5, phoneMId:J
    const-wide/16 v2, -0x1

    .line 2826
    .local v2, emailMId:J
    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v0, v9

    .line 2827
    invoke-virtual {p1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2828
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 2830
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2831
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    .line 2834
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2838
    :cond_1
    const-string v8, "vnd.android.cursor.item/email_v2"

    aput-object v8, v0, v9

    .line 2839
    invoke-virtual {p1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2840
    if-eqz v1, :cond_3

    .line 2842
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2843
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 2846
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2850
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " UPDATE DATA SET data12 = 1  WHERE mimetype_id in ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ) AND data13 = \'1\' AND data12 IS NULL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2852
    .local v7, sql:Ljava/lang/String;
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2854
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2855
    return-void

    .line 2834
    .end local v7           #sql:Ljava/lang/String;
    :catchall_0
    move-exception v8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v8

    .line 2846
    :catchall_1
    move-exception v8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v8
.end method

.method private fixAndMoveIsDefaultActionToData12_v2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const/4 v7, 0x0

    .line 2858
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->remvoeHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2859
    const-string v4, " SELECT _id from mimetypes WHERE mimetype = ?"

    .line 2862
    .local v4, getMimetypeId:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    .line 2864
    .local v0, arg:[Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 2866
    .local v2, emailMId:J
    const-string v6, "vnd.android.cursor.item/email_v2"

    aput-object v6, v0, v7

    .line 2867
    invoke-virtual {p1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2868
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 2870
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2871
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 2874
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2878
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " UPDATE DATA SET data13 = lower(data1)  WHERE mimetype_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND ( data13 = \'1\' OR data13 = \'0\' OR data13 IS NULL ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2882
    .local v5, sql:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2884
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2885
    return-void

    .line 2874
    .end local v5           #sql:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private fixEASTrackingTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2622
    :try_start_0
    const-string v0, "ALTER TABLE easSyncInfo ADD COLUMN accountName STRING accountName NOT NULL DEFAULT \'new\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2627
    :goto_0
    :try_start_1
    const-string v0, "ALTER TABLE easTracking ADD COLUMN accountName STRING accountName NOT NULL DEFAULT \'new\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2631
    :goto_1
    const-string v0, "DROP TRIGGER IF EXISTS tracking_insert;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2632
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2633
    return-void

    .line 2628
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2623
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getMyContactCardId()J
    .locals 2

    .prologue
    .line 1629
    sget-wide v0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    return-wide v0
.end method

.method public static getMyContactCardRawId()J
    .locals 2

    .prologue
    .line 1626
    sget-wide v0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    return-wide v0
.end method

.method public static getMyContactIds(Landroid/database/sqlite/SQLiteDatabase;)Landroid/os/Bundle;
    .locals 12
    .parameter "db"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1634
    const-string v4, "HtcCustomOpenHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMyContactIds mMyContactCardRawId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string v4, "HtcCustomOpenHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMyContactIds mMyContactCardId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1637
    .local v0, bundleIds:Landroid/os/Bundle;
    if-nez p0, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return-object v0

    .line 1638
    :cond_1
    sget-wide v4, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    cmp-long v4, v4, v10

    if-ltz v4, :cond_2

    sget-wide v4, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_5

    .line 1639
    :cond_2
    const-string v2, " SELECT _id, contact_id FROM raw_contacts WHERE account_name=? AND account_type=? AND sourceid=?"

    .line 1646
    .local v2, myContactQuery:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "HTC"

    aput-object v4, v3, v8

    const-string v4, "DeviceOnly"

    aput-object v4, v3, v9

    const/4 v4, 0x2

    const-string v5, "HTC_01"

    aput-object v5, v3, v4

    .line 1650
    .local v3, selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1652
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v4, " SELECT _id, contact_id FROM raw_contacts WHERE account_name=? AND account_type=? AND sourceid=?"

    invoke-virtual {p0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1653
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1654
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    .line 1655
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    .line 1656
    const-string v4, "HtcCustomOpenHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMyContactIds mMyContactCardRawId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string v4, "HtcCustomOpenHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMyContactIds mMyContactCardId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const-string v4, "_id"

    sget-wide v5, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1659
    const-string v4, "contact_id"

    sget-wide v5, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1662
    :cond_3
    if-eqz v1, :cond_0

    .line 1663
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1662
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    .line 1663
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 1667
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #myContactQuery:Ljava/lang/String;
    .end local v3           #selectionArgs:[Ljava/lang/String;
    :cond_5
    const-string v4, "_id"

    sget-wide v5, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardRawId:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1668
    const-string v4, "contact_id"

    sget-wide v5, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mMyContactCardId:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method private handleChangeForEclairToFroyAboutGoogleDBChange(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    .line 2038
    const-wide/16 v0, 0x0

    .line 2039
    .local v0, begin:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2041
    const-string v2, "DROP INDEX IF EXISTS contact_display_index;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2043
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->alterTableAddContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2045
    const-string v2, "CREATE INDEX IF NOT EXISTS contact_display_index ON contacts (display_name);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2052
    const-string v2, "Contacts_Uprading"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleChangeForEclairToFroyAboutGoogleDBChange: it takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    return-void
.end method

.method public static initializeRawContactAndContactReadOnly(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2919
    .local p1, accountTypeAndDataSetReadOList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "HtcCustomOpenHelper"

    const-string v6, "initializeRawContactAndContactReadOnly E "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :try_start_0
    const-string v4, "UPDATE raw_contacts SET raw_contact_is_read_only = 1 WHERE account_type = ? AND data_set IS NULL "

    .line 2923
    .local v4, sql:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 2924
    .local v1, bindArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2925
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2926
    .local v0, accountType:Ljava/lang/String;
    const/4 v5, 0x0

    aput-object v0, v1, v5

    .line 2927
    invoke-virtual {p0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2946
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #bindArgs:[Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #sql:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 2931
    .restart local v1       #bindArgs:[Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #sql:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "UPDATE contacts SET contact_is_read_only = 1 "

    .line 2932
    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2934
    const-string v4, "UPDATE contacts SET contact_is_read_only = 0  WHERE contacts._id IN (  SELECT DISTINCT contact_id  FROM contacts JOIN raw_contacts ON (raw_contacts.contact_id = contacts._id)  WHERE raw_contact_is_read_only = 0 )"

    .line 2940
    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2944
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2946
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2949
    const-string v5, "HtcCustomOpenHelper"

    const-string v6, "initializeRawContactAndContactReadOnly X "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    return-void

    .line 2941
    :catch_0
    move-exception v2

    .line 2942
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v5, "HtcCustomOpenHelper"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static insertFrequentGroup(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 5
    .parameter "db"
    .parameter "isBeforeV28"

    .prologue
    const/4 v4, 0x1

    .line 2411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HTC"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DeviceOnly"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Frequent Contacts"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2416
    .local v1, selection:Ljava/lang/String;
    const-string v2, "groups"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2420
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2421
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2422
    const-string v2, "account_name"

    const-string v3, "HTC"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    const-string v2, "account_type"

    const-string v3, "DeviceOnly"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    const-string v2, "sourceid"

    const-string v3, "HTC_01"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    const-string v2, "group_visible"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2426
    const-string v2, "sortorder"

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2428
    const-string v2, "title"

    const-string v3, "Frequent Contacts"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const-string v2, "system_id"

    const-string v3, "Frequent Contacts"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const-string v2, "display_title"

    const-string v3, "Frequent Contacts"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    const-string v2, "should_sync"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2435
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTabletPhoneEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2436
    const-string v2, "sortorder"

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2439
    :cond_0
    if-nez p1, :cond_1

    .line 2440
    const-string v2, "is_attribute_set"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2443
    :cond_1
    const-string v2, "groups"

    const-string v3, "sourceid"

    invoke-virtual {p0, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2444
    return-void
.end method

.method private modifyPredefinedGroupTitleForICS(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    .line 3295
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    const/4 v10, 0x3

    invoke-direct {v7, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 3296
    .local v7, values:Landroid/content/ContentValues;
    const/4 v10, 0x3

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "System Group: Family"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string v11, "System Group: Friends"

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "System Group: Coworkers"

    aput-object v11, v6, v10

    .line 3302
    .local v6, oldTitles:[Ljava/lang/String;
    const/4 v10, 0x3

    new-array v4, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Family"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "Friends"

    aput-object v11, v4, v10

    const/4 v10, 0x2

    const-string v11, "Coworkers"

    aput-object v11, v4, v10

    .line 3309
    .local v4, newTitles:[Ljava/lang/String;
    const-string v9, "title = ? AND account_type <> \'com.google\' "

    .line 3310
    .local v9, whereClause:Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    .line 3311
    .local v8, whereArgs:[Ljava/lang/String;
    array-length v2, v4

    .line 3312
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3313
    aget-object v5, v6, v1

    .line 3314
    .local v5, oldTitle:Ljava/lang/String;
    aget-object v3, v4, v1

    .line 3316
    .local v3, newTitle:Ljava/lang/String;
    const-string v10, "title"

    invoke-virtual {v7, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    const-string v10, "dirty"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3318
    const-string v10, "group_is_read_only"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3320
    const/4 v10, 0x0

    aput-object v5, v8, v10

    .line 3323
    const-string v10, "groups"

    invoke-virtual {p1, v10, v7, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3326
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #newTitle:Ljava/lang/String;
    .end local v4           #newTitles:[Ljava/lang/String;
    .end local v5           #oldTitle:Ljava/lang/String;
    .end local v6           #oldTitles:[Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v9           #whereClause:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3327
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v10, "HtcCustomOpenHelper"

    const-string v11, "e: "

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3329
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :cond_0
    return-void
.end method

.method private static presetIpDialNumber(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;)V
    .locals 9
    .parameter "db"
    .parameter "res"

    .prologue
    .line 2646
    const/high16 v6, 0x7f03

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 2648
    .local v1, array:[I
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_1

    .line 2649
    const v6, 0x7f030001

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 2657
    :cond_0
    :goto_0
    move-object v0, v1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 2658
    .local v4, number:I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2659
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "number"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2660
    const-string v6, "state"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2661
    const-string v6, "ip_dial"

    const-string v7, "number"

    const/4 v8, 0x5

    invoke-virtual {p0, v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 2657
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2653
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #number:I
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x17

    if-ne v6, v7, :cond_0

    .line 2654
    const v6, 0x7f030002

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    goto :goto_0

    .line 2663
    .restart local v0       #arr$:[I
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_2
    return-void
.end method

.method static removeHtcSyncTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1050
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->removeHtcSyncTables(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1051
    return-void
.end method

.method static removeHtcSyncTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .parameter "db"
    .parameter "isKeepReSync"

    .prologue
    .line 1053
    invoke-static {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->remvoeHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1056
    const-string v0, "DROP TABLE IF EXISTS easTracking;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1058
    if-eqz p1, :cond_2

    .line 1059
    invoke-static {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->resetExchangeSyncInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1070
    :goto_0
    const-string v0, "DROP TABLE IF EXISTS pcscTracking;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1071
    const-string v0, "DROP TABLE IF EXISTS pcscSyncInfo;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1075
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    const-string v0, "DROP TABLE IF EXISTS myphonebookTracking;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1080
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    const-string v0, "DROP TABLE IF EXISTS myphonebookProfileTracking;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1083
    :cond_1
    return-void

    .line 1062
    :cond_2
    const-string v0, "DROP TABLE IF EXISTS easSyncInfo;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static removePeopleYouKnowTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1086
    const-string v0, "DROP TABLE IF EXISTS peopleyouknow_plugins;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1087
    const-string v0, "DROP TABLE IF EXISTS peopleyouknow_suggestionrequests;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1088
    const-string v0, "DROP TABLE IF EXISTS peopleyouknow_frienddetails;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1089
    const-string v0, "DROP TABLE IF EXISTS peopleyouknow_datamark;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1090
    const-string v0, "DROP TRIGGER IF EXISTS peoleyouknow_plugin_deleted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1091
    const-string v0, "DROP TRIGGER IF EXISTS peoleyouknow_suggestionrequest_deleted;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1092
    return-void
.end method

.method static remvoeHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1035
    const-string v0, "DROP TRIGGER IF EXISTS tracking_insert;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1036
    const-string v0, "DROP TRIGGER IF EXISTS easTracking_update;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1037
    const-string v0, "DROP TRIGGER IF EXISTS easTracking_delete;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1038
    const-string v0, "DROP TRIGGER IF EXISTS easTracking_delete2;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1039
    const-string v0, "DROP TRIGGER IF EXISTS pcscTracking_update;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1040
    const-string v0, "DROP TRIGGER IF EXISTS pcscTracking_delete;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1041
    const-string v0, "DROP TRIGGER IF EXISTS groups_update;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1042
    const-string v0, "DROP TRIGGER IF EXISTS myphonebookTracking_update;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1043
    const-string v0, "DROP TRIGGER IF EXISTS myphonebookTracking_delete;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1044
    const-string v0, "DROP TRIGGER IF EXISTS myphonebookProfileTracking_update;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1045
    const-string v0, "DROP TRIGGER IF EXISTS myphonebookProfileTracking_delete;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1046
    const-string v0, "DROP TRIGGER IF EXISTS myphonebookGroups_update;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method static resetExchangeSyncInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1097
    :try_start_0
    const-string v0, "UPDATE easSyncInfo SET  synckey = \'0\' ,  LastSyncResult = \'0\' ,  LastSyncTime = \'0\' ,  LastSyncErrorCode = \'0\' "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_0
    return-void

    .line 1103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateFrequentGroupAttribute(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2448
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2449
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2450
    const-string v2, "is_attribute_set"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HTC"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DeviceOnly"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Frequent Contacts"

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2457
    .local v1, selection:Ljava/lang/String;
    const-string v2, "groups"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2458
    return-void
.end method

.method private updatePCSCTrackingUpdateFrom38To39(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2786
    :try_start_0
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "updatePCSCTrackingUpdateFrom38To39"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    const-string v1, "DROP TRIGGER IF EXISTS pcscTracking_update;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2788
    const-string v1, "CREATE TRIGGER IF NOT EXISTS pcscTracking_update AFTER UPDATE ON raw_contacts WHEN new.account_type = \'com.htc.android.pcsc\'  AND old.version != new.version   BEGIN UPDATE raw_contacts SET sync4=current_timestamp WHERE _id=new._id;UPDATE pcscTracking SET _modify=1 WHERE _id=new._id;END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2799
    :goto_0
    return-void

    .line 2796
    :catch_0
    move-exception v0

    .line 2797
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "updatePCSCTrackingUpdateFrom38To39"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateRawContactTriggerTo20(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1866
    const-string v0, "DROP TRIGGER IF EXISTS raw_contacts_deleted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1867
    const-string v0, "CREATE TRIGGER raw_contacts_deleted    BEFORE DELETE ON raw_contacts BEGIN    DELETE FROM data     WHERE raw_contact_id=OLD._id;   DELETE FROM agg_exceptions     WHERE raw_contact_id1=OLD._id        OR raw_contact_id2=OLD._id;   DELETE FROM contacts     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1;   UPDATE calls SET name=NULL, numbertype=NULL, numberlabel=NULL, raw_contact_id=NULL      WHERE raw_contact_id=OLD.contact_id;   DELETE FROM suggestion     WHERE raw_contact_id1=OLD._id        OR raw_contact_id2=OLD._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1901
    return-void
.end method

.method private upgradeCnameCallLog(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2764
    :try_start_0
    const-string v1, "ALTER TABLE calls ADD cname TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2769
    :goto_0
    return-void

    .line 2766
    :catch_0
    move-exception v0

    .line 2767
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "upgradeCnameCallLog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeFromIncredibleEclairVersion_1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    .line 2462
    :try_start_0
    const-string v6, "ALTER TABLE groups  ADD COLUMN    display_title   TEXT"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2470
    :goto_0
    const-string v5, "title= ? "

    .line 2471
    .local v5, whereClause:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 2472
    .local v4, whereArgs:[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2474
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "system_id"

    const-string v7, "Favorites"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    const-string v6, "display_title"

    const-string v7, "Favorites"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    const-string v6, "Favorite_8656150684447252476_6727701920173350445"

    aput-object v6, v4, v8

    .line 2477
    const-string v6, "groups"

    invoke-virtual {p1, v6, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2479
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 2480
    const-string v6, "display_title"

    const-string v7, "VIP"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    const-string v6, "VIP"

    aput-object v6, v4, v8

    .line 2482
    const-string v6, "groups"

    invoke-virtual {p1, v6, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2484
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 2485
    const-string v6, "display_title"

    const-string v7, "Family"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    const-string v6, "Family"

    aput-object v6, v4, v8

    .line 2487
    const-string v6, "groups"

    invoke-virtual {p1, v6, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2489
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 2490
    const-string v6, "display_title"

    const-string v7, "Friends"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    const-string v6, "Friends"

    aput-object v6, v4, v8

    .line 2492
    const-string v6, "groups"

    invoke-virtual {p1, v6, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2494
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 2495
    const-string v6, "display_title"

    const-string v7, "Coworkers"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    const-string v6, "Coworkers"

    aput-object v6, v4, v8

    .line 2497
    const-string v6, "groups"

    invoke-virtual {p1, v6, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2510
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2511
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v6, "title"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2512
    const-string v6, "NOT IN ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2513
    const-string v6, "Favorite_8656150684447252476_6727701920173350445"

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2514
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2515
    const-string v6, "VIP"

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2516
    const-string v6, ") "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2518
    const-string v6, " AND "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2520
    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2521
    const-string v6, "title"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2522
    const-string v6, "NOT IN ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2523
    const-string v6, "Coworkers"

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2524
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2525
    const-string v6, "Family"

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2526
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2527
    const-string v6, "Friends"

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2528
    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2529
    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2532
    const-string v6, " AND "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2533
    const-string v6, "account_type"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2534
    const-string v6, " <> "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2535
    const-string v6, "DeviceOnly"

    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2536
    const-string v6, " AND "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2537
    const-string v6, " display_title IS NULL "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2539
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2541
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " UPDATE groups SET display_title = title WHERE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2545
    .local v3, updateDisplayTitile:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2549
    :goto_1
    return-void

    .line 2546
    :catch_0
    move-exception v2

    .line 2547
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    const-string v6, "HtcCustomOpenHelper"

    const-string v7, "update error"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2465
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    .end local v3           #updateDisplayTitile:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v5           #whereClause:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method private upgradeIpDialTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2777
    :try_start_0
    const-string v1, "ALTER TABLE ip_dial ADD state TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2782
    :goto_0
    return-void

    .line 2779
    :catch_0
    move-exception v0

    .line 2780
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "upgradeCnameCallLog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeVideoCallLog(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2751
    :try_start_0
    const-string v1, "ALTER TABLE calls ADD callType INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2756
    :goto_0
    return-void

    .line 2753
    :catch_0
    move-exception v0

    .line 2754
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "upgradeForVideoCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static wipeHtcSyncTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1111
    const-string v0, "DELETE FROM easTracking;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1112
    const-string v0, "DELETE FROM easSyncInfo;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1115
    const-string v0, "DELETE FROM pcscTracking;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1116
    const-string v0, "DELETE FROM pcscSyncInfo;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1118
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    const-string v0, "DELETE FROM myphonebookTracking;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1122
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    const-string v0, "DELETE FROM myphonebookProfileTracking;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1125
    :cond_1
    return-void
.end method


# virtual methods
.method protected dbForProfile()I
    .locals 1

    .prologue
    .line 2954
    iget v0, p0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mdbForProfile:I

    return v0
.end method

.method public getContactView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1593
    const-string v0, "view_htc_contacts"

    return-object v0
.end method

.method public getDatabaseVersion()I
    .locals 1

    .prologue
    .line 1585
    const/16 v0, 0x45

    return v0
.end method

.method public getFavoriteView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1598
    const-string v0, "view_all_favorite"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1581
    const-string v0, "HtcContacts"

    return-object v0
.end method

.method public getValidAccounts()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1602
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "return the valid account - <HTC/DeviceOnly>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1605
    .local v0, validAccounts:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/accounts/Account;>;"
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "HTC"

    const-string v3, "DeviceOnly"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1614
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "pcsc"

    const-string v3, "com.htc.android.pcsc"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1622
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldCustomVersion"
    .parameter "newCustomVersion"

    .prologue
    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 396
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 391
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;IIII)V
    .locals 10
    .parameter "db"
    .parameter "oldGoogleVersion"
    .parameter "newGoogleVersion"
    .parameter "oldCustomVersion"
    .parameter "newCustomVersion"

    .prologue
    .line 1133
    const-string v7, "HtcCustomOpenHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upgrading from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data could be lost!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v3, 0x0

    .line 1137
    .local v3, isGoogleRebuild:Z
    const/16 v7, 0x63

    if-lt p2, v7, :cond_0

    if-le p2, p3, :cond_1

    .line 1140
    :cond_0
    const/4 v3, 0x1

    .line 1141
    const/4 p4, 0x0

    .line 1144
    :cond_1
    move v0, p4

    .line 1145
    .local v0, currentVersion:I
    if-ne v0, p5, :cond_3

    .line 1569
    :cond_2
    :goto_0
    return-void

    .line 1149
    :cond_3
    const-string v7, "HtcCustomOpenHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "google db version from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    if-lez p4, :cond_4

    if-le p4, p5, :cond_6

    .line 1154
    :cond_4
    if-nez v3, :cond_5

    .line 1155
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->resetBaseSchema(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1162
    :goto_1
    invoke-direct {p0, p1, p4, p5}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 1158
    :cond_5
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->dropAllCustomerSchema(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 1164
    :cond_6
    const/4 v5, 0x0

    .line 1165
    .local v5, isNeedToResetHtcView:Z
    const/4 v4, 0x0

    .line 1166
    .local v4, isNeedToResetHtcTrigger:Z
    const/4 v7, 0x1

    if-ne v0, v7, :cond_9

    .line 1167
    const/16 v7, 0x40

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v7, v8, :cond_7

    .line 1168
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->upgradeFromIncredibleEclairVersion_1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1170
    :cond_7
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1171
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createMyPhoneBook(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1172
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->remvoeHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1173
    const/4 v7, 0x0

    invoke-static {p1, v7}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1175
    :cond_8
    const/4 v0, 0x2

    .line 1178
    :cond_9
    const/4 v7, 0x3

    if-ne v0, v7, :cond_a

    .line 1179
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->ensureAndFixGroupsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1180
    const/4 v0, 0x4

    .line 1183
    :cond_a
    const/16 v7, 0xf

    if-ge v0, v7, :cond_b

    .line 1184
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->handleChangeForEclairToFroyAboutGoogleDBChange(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1185
    const/4 v5, 0x1

    .line 1186
    const/16 v0, 0xf

    .line 1190
    :cond_b
    const/16 v7, 0xf

    if-ne v0, v7, :cond_d

    .line 1198
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isAABEnabled()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1199
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createAAB_TablesAndTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1202
    :cond_c
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createIpDialTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1205
    iget-object v7, p0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->presetIpDialNumber(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;)V

    .line 1207
    const/16 v0, 0x10

    .line 1210
    :cond_d
    const/16 v7, 0x10

    if-ne v0, v7, :cond_e

    .line 1211
    const/16 v0, 0x11

    .line 1213
    :cond_e
    const/16 v7, 0x11

    if-ne v0, v7, :cond_f

    .line 1214
    const/16 v0, 0x12

    .line 1216
    :cond_f
    const/16 v7, 0x12

    if-ne v0, v7, :cond_10

    .line 1217
    const/16 v0, 0x13

    .line 1222
    :cond_10
    const/16 v7, 0x13

    if-ne v0, v7, :cond_12

    .line 1224
    :try_start_0
    const-string v7, "ALTER TABLE groups  ADD COLUMN   display_order  INTEGER NOT NULL DEFAULT 2147483647"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1238
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createOrderShipTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1240
    const/4 v7, 0x1

    invoke-static {p1, v7}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->insertFrequentGroup(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 1248
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createBlacklistTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1249
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createSuggetionTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->updateRawContactTriggerTo20(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1254
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookProfileEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1255
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createMyPhoneBookProfile(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1256
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->remvoeHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1260
    :cond_11
    const-string v7, "DROP TRIGGER IF EXISTS pcscTracking_update;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1261
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1263
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createFrequencyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1264
    const/16 v0, 0x14

    .line 1268
    :cond_12
    const/16 v7, 0x14

    if-ne v0, v7, :cond_13

    .line 1269
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->alterCallsCsFields(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1271
    const/16 v0, 0x15

    .line 1275
    :cond_13
    const/16 v7, 0x15

    if-ne v0, v7, :cond_14

    .line 1277
    :try_start_1
    const-string v7, "ALTER TABLE speed_dial  ADD COLUMN   recordLocation  INTEGER DEFAULT 1"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1283
    :goto_3
    const/16 v0, 0x16

    .line 1286
    :cond_14
    const/16 v7, 0x16

    if-ne v0, v7, :cond_15

    .line 1287
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->fixEASTrackingTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1288
    const/16 v0, 0x17

    .line 1290
    :cond_15
    const/16 v7, 0x17

    if-ne v0, v7, :cond_16

    .line 1292
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createIpDialTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1295
    iget-object v7, p0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->presetIpDialNumber(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;)V

    .line 1297
    const/16 v0, 0x18

    .line 1301
    :cond_16
    const/16 v7, 0x18

    if-ne v0, v7, :cond_17

    .line 1302
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->alterCallsCsFields(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1304
    const/16 v0, 0x19

    .line 1308
    :cond_17
    const/16 v7, 0x19

    if-ne v0, v7, :cond_18

    .line 1309
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createManageCallsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1310
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->addVIPColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1311
    const/4 v5, 0x1

    .line 1313
    const/16 v0, 0x1a

    .line 1317
    :cond_18
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_19

    .line 1318
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createCSFriendTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1320
    const/16 v0, 0x1b

    .line 1323
    :cond_19
    const/16 v7, 0x1b

    if-ne v0, v7, :cond_1a

    .line 1324
    const/4 v5, 0x1

    .line 1325
    const/16 v0, 0x1c

    .line 1328
    :cond_1a
    const/16 v7, 0x1c

    if-ne v0, v7, :cond_1b

    .line 1330
    :try_start_2
    const-string v7, "ALTER TABLE groups  ADD COLUMN   is_attribute_set  INTEGER NOT NULL DEFAULT 0 "

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1337
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " UPDATE groups SET is_attribute_set = 1 WHERE title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Frequent Contacts"

    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1342
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->updateFrequentGroupAttribute(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1343
    const/4 v5, 0x1

    .line 1344
    const/16 v0, 0x1d

    .line 1348
    :cond_1b
    const/16 v7, 0x1d

    if-ne v0, v7, :cond_1c

    .line 1350
    :try_start_3
    const-string v7, "ALTER TABLE csfriends ADD COLUMN contact_serverid VARCHAR(255)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1351
    const-string v7, "ALTER TABLE csfriends ADD COLUMN profile_name TEXT"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1352
    const-string v7, "ALTER TABLE csfriends ADD COLUMN email TEXT"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1353
    const-string v7, "ALTER TABLE csfriends ADD COLUMN phonenumber TEXT"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1354
    const-string v7, "ALTER TABLE csfriends ADD COLUMN photo_url TEXT"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1358
    :goto_5
    const/16 v0, 0x1e

    .line 1361
    :cond_1c
    const/16 v7, 0x1e

    if-ne v0, v7, :cond_1d

    .line 1362
    const/4 v5, 0x1

    .line 1363
    const/16 v0, 0x1f

    .line 1366
    :cond_1d
    const/16 v7, 0x1f

    if-ne v0, v7, :cond_1e

    .line 1367
    const/4 v5, 0x1

    .line 1368
    const/16 v0, 0x20

    .line 1371
    :cond_1e
    const/16 v7, 0x20

    if-ne v0, v7, :cond_1f

    .line 1373
    const-string v7, "DROP TRIGGER IF EXISTS easTracking_update;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1374
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1375
    const/16 v0, 0x21

    .line 1378
    :cond_1f
    const/16 v7, 0x21

    if-ne v0, v7, :cond_20

    .line 1380
    const-string v7, "CREATE TRIGGER IF NOT EXISTS myphonebookGroups_update AFTER UPDATE OF dirty ON groups WHEN new.account_type = \'com.htc.android.myphonebook\' BEGIN UPDATE myphonebookTracking SET _modify=1 WHERE _id in (select raw_contact_id from data join mimetypes on data.mimetype_id = mimetypes._id where mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' and data1=new._id);END"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1388
    const/16 v0, 0x22

    .line 1392
    :cond_20
    const/16 v7, 0x22

    if-ne v0, v7, :cond_22

    .line 1393
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isMyPhoneBookEnabled()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1394
    const-string v7, "CREATE TABLE IF NOT EXISTS myphonebookTracking(_id INTEGER REFERENCES raw_contacts(_id) PRIMARY KEY,_add INTEGER NOT NULL DEFAULT 0 ,_modify INTEGER NOT NULL DEFAULT 0 ,_delete INTEGER NOT NULL DEFAULT 0 ,_syncing INTEGER NOT NULL DEFAULT 0 );"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1401
    const-string v7, "CREATE INDEX IF NOT EXISTS myphonebookTrackingIndex ON myphonebookTracking(_id);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1402
    const-string v7, "CREATE INDEX IF NOT EXISTS myphonebookTrackingIndex2 ON myphonebookTracking(_syncing);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1404
    :cond_21
    const/4 v4, 0x1

    .line 1405
    const/4 v5, 0x1

    .line 1406
    const/16 v0, 0x23

    .line 1409
    :cond_22
    const/16 v7, 0x23

    if-ne v0, v7, :cond_23

    .line 1410
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->upgradeVideoCallLog(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1411
    const/16 v0, 0x24

    .line 1415
    :cond_23
    const/16 v7, 0x24

    if-ne v0, v7, :cond_25

    .line 1416
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->upgradeCnameCallLog(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1418
    const/16 v7, 0x61

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v7, v8, :cond_24

    .line 1419
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->upgradeVideoCallLog(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1421
    :cond_24
    const/16 v0, 0x25

    .line 1423
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v8, 0xd8

    if-ne v7, v8, :cond_25

    .line 1424
    iget-object v7, p0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->presetIpDialNumber(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;)V

    .line 1430
    :cond_25
    const/16 v7, 0x25

    if-ne v0, v7, :cond_26

    .line 1431
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->upgradeIpDialTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1432
    const/16 v0, 0x26

    .line 1435
    :cond_26
    const/16 v7, 0x26

    if-ne v0, v7, :cond_27

    .line 1436
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->updatePCSCTrackingUpdateFrom38To39(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1437
    const/4 v5, 0x1

    .line 1438
    const/16 v0, 0x27

    .line 1442
    :cond_27
    const/16 v7, 0x27

    if-ne v0, v7, :cond_29

    .line 1443
    sget-boolean v7, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v7, :cond_28

    .line 1444
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->addExtAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1445
    const/4 v5, 0x1

    .line 1447
    :cond_28
    const/16 v0, 0x28

    .line 1452
    :cond_29
    const/16 v7, 0x28

    if-ne v0, v7, :cond_2a

    .line 1453
    const-string v7, " DROP TRIGGER IF EXISTS contacts_cleanup_default_action "

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1454
    const/16 v0, 0x29

    .line 1455
    const/4 v5, 0x1

    .line 1458
    :cond_2a
    const/16 v7, 0x29

    if-ne v0, v7, :cond_2b

    .line 1459
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->fixAndMoveIsDefaultActionToData12(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1460
    const/16 v0, 0x2a

    .line 1461
    const/4 v5, 0x1

    .line 1464
    :cond_2b
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_2c

    .line 1465
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->fixAndMoveIsDefaultActionToData12_v2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1466
    const/16 v0, 0x2b

    .line 1467
    const/4 v5, 0x1

    .line 1471
    :cond_2c
    const/16 v7, 0x2d

    if-ge v0, v7, :cond_2f

    .line 1472
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x28

    if-eq v7, v8, :cond_2d

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x21

    if-eq v7, v8, :cond_2d

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x22

    if-eq v7, v8, :cond_2d

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x7c

    if-ne v7, v8, :cond_2e

    .line 1477
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->upgradeVideoCallLog(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1478
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->upgradeCnameCallLog(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1479
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->upgradeIpDialTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1480
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->updatePCSCTrackingUpdateFrom38To39(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1481
    sget-boolean v7, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v7, :cond_2e

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->addExtAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1486
    :cond_2e
    const/4 v4, 0x1

    .line 1487
    const/4 v5, 0x1

    .line 1488
    const/16 v0, 0x2d

    .line 1491
    :cond_2f
    const/16 v7, 0x3c

    if-ge v0, v7, :cond_30

    .line 1492
    const/4 v4, 0x1

    .line 1493
    const/4 v5, 0x1

    .line 1494
    const/16 v0, 0x3c

    .line 1496
    iget-object v7, p0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1497
    .local v6, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1498
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "need_upgrade"

    const/4 v8, 0x1

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1499
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1502
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    :cond_30
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_31

    .line 1504
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->addContactIsReadOnly(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1505
    const/4 v4, 0x1

    .line 1506
    const/4 v5, 0x1

    .line 1507
    const/16 v0, 0x3d

    .line 1510
    :cond_31
    const/16 v7, 0x3d

    if-ne v0, v7, :cond_32

    .line 1512
    const-string v7, "HtcCustomOpenHelper"

    const-string v8, "upgrade from 61 "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->addRestrictedColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1514
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createRestrictedViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1515
    const-string v7, "HtcCustomOpenHelper"

    const-string v8, "upgrade END 62 "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const/4 v4, 0x1

    .line 1517
    const/4 v5, 0x1

    .line 1518
    const/16 v0, 0x3e

    .line 1521
    :cond_32
    const/16 v7, 0x3e

    if-ne v0, v7, :cond_33

    .line 1522
    const/4 v4, 0x1

    .line 1523
    const/16 v0, 0x3f

    .line 1526
    :cond_33
    const/16 v7, 0x3f

    if-ne v0, v7, :cond_34

    .line 1527
    const/4 v4, 0x1

    .line 1528
    const/4 v5, 0x1

    .line 1529
    const/16 v0, 0x40

    .line 1532
    :cond_34
    const/16 v7, 0x40

    if-ne v0, v7, :cond_35

    .line 1534
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createPeopleYouKnowTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1535
    const/16 v0, 0x41

    .line 1538
    :cond_35
    const/16 v7, 0x41

    if-ne v0, v7, :cond_36

    .line 1539
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->extendsCallLogTableForSense40(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1540
    const/16 v0, 0x42

    .line 1543
    :cond_36
    const/16 v7, 0x42

    if-ne v0, v7, :cond_37

    .line 1544
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->modifyPredefinedGroupTitleForICS(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1545
    const/16 v0, 0x43

    .line 1548
    :cond_37
    const/16 v7, 0x43

    if-ne v0, v7, :cond_38

    .line 1550
    const/16 v0, 0x44

    .line 1553
    :cond_38
    const/16 v7, 0x44

    if-ne v0, v7, :cond_39

    .line 1554
    const/4 v4, 0x1

    .line 1555
    const/4 v5, 0x1

    .line 1556
    const/16 v0, 0x45

    .line 1559
    :cond_39
    if-eqz v4, :cond_3a

    .line 1560
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->remvoeHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1561
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcSyncTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1564
    :cond_3a
    if-eqz v5, :cond_2

    .line 1565
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcContactView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1566
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->createHtcFavoriteView(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 1355
    :catch_0
    move-exception v1

    .line 1356
    .local v1, e:Landroid/database/SQLException;
    const-string v7, "HtcCustomOpenHelper"

    const-string v8, "currentVersion == 29 "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1333
    .end local v1           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v7

    goto/16 :goto_4

    .line 1280
    :catch_2
    move-exception v7

    goto/16 :goto_3

    .line 1227
    :catch_3
    move-exception v7

    goto/16 :goto_2
.end method

.method public onWipeData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1574
    const-string v0, "DELETE FROM speed_dial;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1578
    return-void
.end method

.method resetBaseSchema(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1004
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "resetBaseSchema E"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v1, p0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    .line 1006
    .local v0, mainHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    invoke-static {p1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->dropAllCustomerSchema(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1007
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dropAllTableForRebootstrap(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1008
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1009
    const-string v1, "HtcCustomOpenHelper"

    const-string v2, "resetBaseSchema X"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1589
    const-string v0, "HtcContacts(ver.69)"

    return-object v0
.end method

.method useConfiguratedQuery()Z
    .locals 7

    .prologue
    .line 2602
    iget-object v6, p0, Lcom/android/providers/contacts/HtcCustomOpenHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2603
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2606
    .local v2, callerPackages:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 2607
    .local v1, callerPackage:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->useConfiguratedQuery(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2608
    const/4 v6, 0x1

    .line 2611
    .end local v1           #callerPackage:Ljava/lang/String;
    :goto_1
    return v6

    .line 2606
    .restart local v1       #callerPackage:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2611
    .end local v1           #callerPackage:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method useConfiguratedQuery(Ljava/lang/String;)Z
    .locals 1
    .parameter "requestingPackage"

    .prologue
    .line 2615
    const/4 v0, 0x0

    return v0
.end method
