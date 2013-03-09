.class Lcom/htc/android/mail/MailProvider$DatabaseWrapper;
.super Ljava/lang/Object;
.source "MailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseWrapper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/htc/android/mail/MailProvider$DatabaseHelper;

.field final synthetic this$0:Lcom/htc/android/mail/MailProvider;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/MailProvider;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 6406
    iput-object p1, p0, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->this$0:Lcom/htc/android/mail/MailProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6407
    new-instance v0, Lcom/htc/android/mail/MailProvider$DatabaseHelper;

    invoke-direct {v0, p2}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->mDbHelper:Lcom/htc/android/mail/MailProvider$DatabaseHelper;

    .line 6408
    iput-object p2, p0, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->mContext:Landroid/content/Context;

    .line 6409
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6401
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/MailProvider$DatabaseWrapper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6401
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 6412
    iget-object v0, p0, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->mDbHelper:Lcom/htc/android/mail/MailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 6416
    iget-object v0, p0, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->mDbHelper:Lcom/htc/android/mail/MailProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 6507
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v16, "MailProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "delete() table: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " whereClause: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6509
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 6511
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v13

    .line 6512
    .local v13, path:Ljava/io/File;
    new-instance v15, Landroid/os/StatFs;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 6513
    .local v15, stat:Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v7, v0

    .line 6514
    .local v7, blockSize:J
    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v3, v0

    .line 6515
    .local v3, availableBlocks:J
    mul-long v5, v3, v7

    .line 6516
    .local v5, availableSize:J
    new-instance v16, Ljava/io/File;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 6517
    .local v9, databaseSize:J
    cmp-long v16, v5, v9

    if-gez v16, :cond_3

    .line 6518
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v16

    if-eqz v16, :cond_1

    const-string v16, "MailProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "try delete2 "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6519
    :cond_1
    invoke-virtual/range {p0 .. p3}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->delete2(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 6533
    :cond_2
    :goto_0
    return v14

    .line 6522
    :cond_3
    const/4 v14, 0x0

    .line 6524
    .local v14, result:I
    :try_start_0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 6526
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v14

    goto :goto_0

    .line 6527
    :catch_0
    move-exception v12

    .line 6528
    .local v12, e:Ljava/lang/IllegalStateException;
    const-string v16, "MailProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IllegalStateException:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6530
    .end local v12           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v12

    .line 6531
    .local v12, e:Ljava/lang/Exception;
    const-string v16, "MailProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "delete exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delete2(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 6544
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete2() table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " whereClause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6545
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 6546
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v13, 0x0

    .line 6547
    .local v13, result:I
    const/4 v11, 0x0

    .line 6548
    .local v11, delId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 6550
    .local v9, cur:Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v2

    .line 6551
    .local v3, proj:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6552
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6555
    :cond_1
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 6556
    if-eqz v11, :cond_2

    .line 6557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 6558
    .local v14, where:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v14, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 6559
    .local v10, del:I
    if-gtz v10, :cond_2

    .line 6560
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete2 fail, where: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6562
    .end local v10           #del:I
    .end local v14           #where:Ljava/lang/String;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 6568
    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 6569
    .end local v3           #proj:[Ljava/lang/String;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6571
    :cond_4
    return v13

    .line 6564
    :catch_0
    move-exception v12

    .line 6565
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "MailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete2() Exceptione: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6566
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6568
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 6569
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 6568
    :cond_5
    throw v2
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 6449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 9
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"
    .parameter "conflictAlgorithm"

    .prologue
    const-wide/16 v4, -0x1

    .line 6454
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6455
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 6457
    .local v2, result:J
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v4, v2

    .line 6489
    :goto_0
    return-wide v4

    .line 6459
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v2

    .line 6477
    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 6478
    const-string v4, "MailProvider"

    const-string v5, "mDb.insert() returns -1"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-wide v4, v2

    .line 6489
    goto :goto_0

    .line 6460
    :catch_0
    move-exception v1

    .local v1, e:Landroid/database/sqlite/SQLiteConstraintException;
    move-wide v4, v2

    .line 6462
    goto :goto_0

    .line 6463
    .end local v1           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catch_1
    move-exception v1

    .line 6464
    .local v1, e:Landroid/database/SQLException;
    const-string v6, "MailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6473
    .end local v1           #e:Landroid/database/SQLException;
    :catch_2
    move-exception v1

    .line 6474
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "MailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v2

    .line 6475
    goto :goto_0
.end method

.method public isDBLocked()Z
    .locals 2

    .prologue
    .line 6576
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6577
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByOtherThreads()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6578
    :cond_0
    const/4 v1, 0x1

    .line 6580
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 6502
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 6503
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 6495
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 6496
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    .line 6537
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6538
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6539
    const/4 v1, 0x0

    .line 6540
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 6420
    invoke-direct {p0}, Lcom/htc/android/mail/MailProvider$DatabaseWrapper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6421
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 6423
    .local v2, result:I
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v2

    .line 6445
    .end local v2           #result:I
    .local v3, result:I
    :goto_0
    return v3

    .line 6425
    .end local v3           #result:I
    .restart local v2       #result:I
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    move v3, v2

    .line 6445
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 6426
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_0
    move-exception v1

    .local v1, e:Landroid/database/sqlite/SQLiteConstraintException;
    move v3, v2

    .line 6428
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 6429
    .end local v1           #e:Landroid/database/sqlite/SQLiteConstraintException;
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_1
    move-exception v1

    .line 6439
    .local v1, e:Landroid/database/SQLException;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v3, v2

    .line 6440
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0

    .line 6441
    .end local v1           #e:Landroid/database/SQLException;
    .end local v3           #result:I
    .restart local v2       #result:I
    :catch_2
    move-exception v1

    .line 6442
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "MailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalStateException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 6443
    .end local v2           #result:I
    .restart local v3       #result:I
    goto :goto_0
.end method
