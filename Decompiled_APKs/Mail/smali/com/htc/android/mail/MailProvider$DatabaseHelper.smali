.class Lcom/htc/android/mail/MailProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field static mAdjustableFactory:Landroid/database/sqlite/HtcAdjustableCursorFactory;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 910
    new-instance v0, Landroid/database/sqlite/HtcAdjustableCursorFactory;

    const/high16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/database/sqlite/HtcAdjustableCursorFactory;-><init>(I)V

    sput-object v0, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mAdjustableFactory:Landroid/database/sqlite/HtcAdjustableCursorFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 913
    const-string v0, "mail.db"

    sget-object v1, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mAdjustableFactory:Landroid/database/sqlite/HtcAdjustableCursorFactory;

    const/16 v2, 0x76

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 914
    iput-object p1, p0, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 915
    return-void
.end method

.method private addAutoIncrementToPendingRequestsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1455
    const-string v0, "ALTER TABLE pending_requests RENAME TO pending_requests_tmp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1456
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createPendingRequestsTable_v118(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1457
    const-string v0, "INSERT INTO pending_requests SELECT * FROM pending_requests_tmp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1458
    const-string v0, "DROP TABLE IF EXISTS pending_requests_tmp"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1459
    return-void
.end method

.method private checkMailInSystemAccount(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 15
    .parameter "db"

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v8, "com.htc.android.mail"

    invoke-virtual {v0, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 1464
    .local v9, account:[Landroid/accounts/Account;
    const/4 v10, 0x0

    .line 1466
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "accounts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v8, "_id,_emailaddress,_password,_protocol,_poll_frequency_number,_refreshMailWhenOpenFolder,_provider"

    aput-object v8, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id asc"

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1467
    if-eqz v10, :cond_7

    .line 1473
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1474
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1475
    .local v3, emailAddress:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1476
    .local v12, found:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    array-length v0, v9

    if-ge v13, v0, :cond_1

    .line 1477
    aget-object v0, v9, v13

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    aget-object v0, v9, v13

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1479
    const/4 v12, 0x1

    .line 1483
    :cond_1
    if-nez v12, :cond_0

    .line 1484
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1485
    .local v1, id:J
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1486
    .local v4, password:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1487
    .local v5, protocol:I
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1488
    .local v7, pollFrequencyNumber:I
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v14, 0x1

    .line 1489
    .local v14, refreshWhenOpen:Z
    :goto_2
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1490
    .local v6, provider:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_5

    const/4 v8, 0x1

    :goto_3
    invoke-static/range {v0 .. v8}, Lcom/htc/android/mail/MailProvider;->addSyncAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1504
    .end local v1           #id:J
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v4           #password:Ljava/lang/String;
    .end local v5           #protocol:I
    .end local v6           #provider:Ljava/lang/String;
    .end local v7           #pollFrequencyNumber:I
    .end local v12           #found:Z
    .end local v13           #i:I
    .end local v14           #refreshWhenOpen:Z
    :catch_0
    move-exception v11

    .line 1505
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1507
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1508
    .end local v11           #e:Ljava/lang/Exception;
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1511
    :cond_2
    return-void

    .line 1476
    .restart local v3       #emailAddress:Ljava/lang/String;
    .restart local v12       #found:Z
    .restart local v13       #i:I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1488
    .restart local v1       #id:J
    .restart local v4       #password:Ljava/lang/String;
    .restart local v5       #protocol:I
    .restart local v7       #pollFrequencyNumber:I
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 1490
    .restart local v6       #provider:Ljava/lang/String;
    .restart local v14       #refreshWhenOpen:Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 1502
    .end local v1           #id:J
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v4           #password:Ljava/lang/String;
    .end local v5           #protocol:I
    .end local v6           #provider:Ljava/lang/String;
    .end local v7           #pollFrequencyNumber:I
    .end local v12           #found:Z
    .end local v13           #i:I
    .end local v14           #refreshWhenOpen:Z
    :cond_6
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1507
    :cond_7
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1508
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1507
    :cond_8
    throw v0
.end method

.method private createEasDefaultMailbox(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 19
    .parameter "db"
    .parameter "accountId"

    .prologue
    .line 1540
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "MailProvider"

    const-string v18, "- createEasDefaultMailbox()"

    invoke-static/range {v17 .. v18}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    :cond_0
    const/4 v15, 0x0

    .line 1543
    .local v15, sqlSet:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/16 v17, 0x4

    move/from16 v0, v17

    if-gt v6, v0, :cond_6

    .line 1545
    :try_start_0
    const-string v10, ""

    .line 1546
    .local v10, name:Ljava/lang/String;
    const-string v12, "1"

    .line 1547
    .local v12, serverfolder:Ljava/lang/String;
    const-string v13, "-1"

    .line 1548
    .local v13, serverid:Ljava/lang/String;
    const-string v11, "-1"

    .line 1549
    .local v11, parentid:Ljava/lang/String;
    const-string v16, "-1"

    .line 1550
    .local v16, type:Ljava/lang/String;
    const-string v9, "1"

    .line 1551
    .local v9, moveGroup:Ljava/lang/String;
    const-string v14, "1"

    .line 1552
    .local v14, showSender:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1554
    .local v4, defaultFolder:I
    packed-switch v6, :pswitch_data_0

    .line 1587
    :goto_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1588
    .local v3, cvs:Landroid/content/ContentValues;
    const-string v17, "_undecodename"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string v17, "_decodename"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v17, "_shortname"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v17, "_serverfolder"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    const-string v17, "_account"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1593
    const-string v17, "_serverid"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const-string v17, "_parentid"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const-string v17, "_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v17, "_movegroup"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    const-string v17, "_showsender"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string v17, "_defaultfolder"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1599
    const-string v17, "mailboxs"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 1601
    .local v7, id:J
    packed-switch v6, :pswitch_data_1

    .line 1543
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1556
    .end local v3           #cvs:Landroid/content/ContentValues;
    .end local v7           #id:J
    :pswitch_0
    const-string v10, "Inbox"

    .line 1557
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 1558
    const v4, 0x7fffffff

    .line 1559
    goto :goto_1

    .line 1561
    :pswitch_1
    const-string v10, "Trash"

    .line 1562
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 1563
    const v4, 0x7ffffffe

    .line 1564
    goto/16 :goto_1

    .line 1566
    :pswitch_2
    const-string v10, "Sent"

    .line 1567
    const/16 v17, 0x5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 1568
    const v4, 0x7ffffffd

    .line 1569
    const-string v9, "2"

    .line 1570
    const-string v14, "0"

    .line 1571
    goto/16 :goto_1

    .line 1573
    :pswitch_3
    const-string v10, "Draft"

    .line 1574
    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 1575
    const v4, 0x7ffffffc

    .line 1576
    const-string v9, "2"

    .line 1577
    const-string v14, "0"

    .line 1578
    goto/16 :goto_1

    .line 1580
    :pswitch_4
    const-string v10, "Out"

    .line 1581
    const/16 v17, 0x6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 1582
    const v4, 0x7ffffffb

    .line 1583
    const-string v9, "2"

    .line 1584
    const-string v14, "0"

    goto/16 :goto_1

    .line 1603
    .restart local v3       #cvs:Landroid/content/ContentValues;
    .restart local v7       #id:J
    :pswitch_5
    if-nez v15, :cond_1

    .line 1604
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "_defaultfolderId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    .line 1606
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", _defaultfolderId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1608
    goto/16 :goto_2

    .line 1610
    :pswitch_6
    if-nez v15, :cond_2

    .line 1611
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "_trashfolderId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 1613
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", _trashfolderId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1615
    goto/16 :goto_2

    .line 1617
    :pswitch_7
    if-nez v15, :cond_3

    .line 1618
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "_sentfolderId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 1620
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", _sentfolderId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1622
    goto/16 :goto_2

    .line 1624
    :pswitch_8
    if-nez v15, :cond_4

    .line 1625
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "_draftfolderId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 1627
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", _draftfolderId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1629
    goto/16 :goto_2

    .line 1631
    :pswitch_9
    if-nez v15, :cond_5

    .line 1632
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "_outfolderId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 1634
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", _outfolderId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 1641
    .end local v3           #cvs:Landroid/content/ContentValues;
    .end local v4           #defaultFolder:I
    .end local v7           #id:J
    .end local v9           #moveGroup:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parentid:Ljava/lang/String;
    .end local v12           #serverfolder:Ljava/lang/String;
    .end local v13           #serverid:Ljava/lang/String;
    .end local v14           #showSender:Ljava/lang/String;
    .end local v16           #type:Ljava/lang/String;
    :cond_6
    if-eqz v15, :cond_7

    .line 1642
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "UPDATE accounts SET "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " WHERE _provider=\'Exchange\'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1648
    :cond_7
    :goto_3
    return-void

    .line 1645
    :catch_0
    move-exception v5

    .line 1646
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1601
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private loadAccounts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1761
    new-instance v1, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v1}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 1762
    .local v1, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 1763
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1764
    sget-object v2, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v2}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/htc/android/mail/HtcMailCustomization;->preInstallAccount(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)V

    .line 1766
    :cond_0
    return-void
.end method

.method public static loadCustSignature(Landroid/content/Context;)V
    .locals 13
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1834
    new-instance v7, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct {v7}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 1835
    .local v7, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    invoke-virtual {v7, p0}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 1837
    .local v1, cusBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 1838
    const-string v10, "mail_signature_localization"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1839
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1840
    const-string v4, "plenty_set"

    .line 1841
    .local v4, key_plenty:Ljava/lang/String;
    const-string v3, ""

    .line 1842
    .local v3, key_now:Ljava/lang/String;
    const-string v5, "locale"

    .line 1844
    .local v5, locale_key:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 1845
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1846
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 1847
    .local v8, plentyBundle:Landroid/os/Bundle;
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1848
    .local v6, locale_string:Ljava/lang/String;
    const-string v10, "signature"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1849
    .local v9, signature:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "MailProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "locale:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", signature:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v9, :cond_1

    .line 1851
    invoke-static {p0, v6, v9}, Lcom/htc/android/mail/Util;->writeSignatureToPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1856
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #i:I
    .end local v3           #key_now:Ljava/lang/String;
    .end local v4           #key_plenty:Ljava/lang/String;
    .end local v5           #locale_key:Ljava/lang/String;
    .end local v6           #locale_string:Ljava/lang/String;
    .end local v8           #plentyBundle:Landroid/os/Bundle;
    .end local v9           #signature:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private loadMultiSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    .line 1776
    sget-object v10, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v10}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05001b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 1780
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v10, "provider_settings"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-static {v5, v10}, Lcom/htc/android/mail/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 1783
    :goto_0
    :try_start_2
    invoke-static {v5}, Lcom/htc/android/mail/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 1784
    :try_start_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    move-result-object v7

    .line 1785
    .local v7, tag:Ljava/lang/String;
    :try_start_4
    const-string v10, "setting"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    :try_start_5
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    move-result v10

    if-nez v10, :cond_0

    .line 1828
    .end local v7           #tag:Ljava/lang/String;
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1830
    return-void

    .line 1789
    .restart local v7       #tag:Ljava/lang/String;
    :cond_0
    :try_start_6
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    move-result v4

    .line 1791
    .local v4, numAttrs:I
    :try_start_7
    new-instance v6, Ljava/util/HashMap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    :try_start_8
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    .line 1792
    .local v6, prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_1

    .line 1793
    :try_start_9
    invoke-interface {v5, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f

    move-result-object v0

    .line 1794
    .local v0, attrName:Ljava/lang/String;
    :try_start_a
    invoke-interface {v5, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    move-result-object v9

    .line 1796
    .local v9, value:Ljava/lang/String;
    :try_start_b
    invoke-virtual {v6, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11

    .line 1792
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1800
    .end local v0           #attrName:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_1
    :try_start_c
    new-instance v8, Landroid/content/ContentValues;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_12

    :try_start_d
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_13

    .line 1801
    .local v8, v:Landroid/content/ContentValues;
    :try_start_e
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_14

    move-result-object v10

    :try_start_f
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_15

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    :try_start_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_16

    move-result v10

    if-eqz v10, :cond_7

    :try_start_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_17

    move-result-object v3

    :try_start_12
    check-cast v3, Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_18

    .line 1802
    .local v3, key:Ljava/lang/String;
    :try_start_13
    const-string v10, "_inprotocol"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_19

    :try_start_14
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1a

    move-result v10

    if-eqz v10, :cond_6

    .line 1803
    :try_start_15
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1b

    move-result-object v10

    :try_start_16
    check-cast v10, Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1c

    :try_start_17
    const-string v11, "POP"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1d

    :try_start_18
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1e

    move-result v10

    if-eqz v10, :cond_3

    .line 1804
    const/4 v10, 0x0

    :try_start_19
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1f

    move-result-object v10

    :try_start_1a
    invoke-virtual {v8, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_20

    goto :goto_3

    .line 1825
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #numAttrs:I
    .end local v6           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #v:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 1805
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #numAttrs:I
    .restart local v6       #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #tag:Ljava/lang/String;
    .restart local v8       #v:Landroid/content/ContentValues;
    :cond_3
    :try_start_1b
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_21

    move-result-object v10

    :try_start_1c
    check-cast v10, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_22

    :try_start_1d
    const-string v11, "APOP"
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_23

    :try_start_1e
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_24

    move-result v10

    if-eqz v10, :cond_4

    .line 1806
    const/4 v10, 0x1

    :try_start_1f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_25

    move-result-object v10

    :try_start_20
    invoke-virtual {v8, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1

    goto :goto_3

    .line 1826
    :catch_1
    move-exception v10

    goto :goto_1

    .line 1807
    :cond_4
    :try_start_21
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_0
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_26

    move-result-object v10

    :try_start_22
    check-cast v10, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_27

    :try_start_23
    const-string v11, "IMAP"
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_28

    :try_start_24
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_29

    move-result v10

    if-eqz v10, :cond_5

    .line 1808
    const/4 v10, 0x2

    :try_start_25
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2a

    move-result-object v10

    :try_start_26
    invoke-virtual {v8, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_26} :catch_0
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_2

    goto :goto_3

    .line 1826
    :catch_2
    move-exception v10

    goto/16 :goto_1

    .line 1810
    :cond_5
    const/4 v10, 0x0

    :try_start_27
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_27} :catch_0
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_2b

    move-result-object v10

    :try_start_28
    invoke-virtual {v8, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_28} :catch_0
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_3

    goto :goto_3

    .line 1826
    :catch_3
    move-exception v10

    goto/16 :goto_1

    .line 1813
    :cond_6
    :try_start_29
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_29} :catch_0
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_2c

    move-result-object v9

    :try_start_2a
    check-cast v9, Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_2d

    .line 1814
    .restart local v9       #value:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 1815
    :try_start_2b
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_2b} :catch_0
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_2e

    move-result-object v9

    .line 1816
    :try_start_2c
    invoke-virtual {v9}, Ljava/lang/String;->length()I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_2c} :catch_0
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_2f

    move-result v10

    if-lez v10, :cond_2

    .line 1817
    :try_start_2d
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_2d} :catch_0
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_30

    move-result-object v10

    :try_start_2e
    check-cast v10, Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_2e} :catch_0
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_31

    :try_start_2f
    invoke-virtual {v8, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_2f} :catch_0
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_4

    goto/16 :goto_3

    .line 1826
    :catch_4
    move-exception v10

    goto/16 :goto_1

    .line 1823
    .end local v3           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_7
    :try_start_30
    const-string v10, "providersettings"
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_30} :catch_0
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_32

    const/4 v11, 0x0

    :try_start_31
    invoke-virtual {p1, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_31} :catch_0
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_5

    goto/16 :goto_0

    .line 1826
    :catch_5
    move-exception v10

    goto/16 :goto_1

    .line 1828
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #numAttrs:I
    .end local v6           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #tag:Ljava/lang/String;
    .end local v8           #v:Landroid/content/ContentValues;
    :catchall_0
    move-exception v10

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    throw v10

    .line 1826
    :catch_6
    move-exception v10

    goto/16 :goto_1

    :catch_7
    move-exception v10

    goto/16 :goto_1

    :catch_8
    move-exception v10

    goto/16 :goto_1

    :catch_9
    move-exception v10

    goto/16 :goto_1

    .restart local v7       #tag:Ljava/lang/String;
    :catch_a
    move-exception v10

    goto/16 :goto_1

    :catch_b
    move-exception v10

    goto/16 :goto_1

    :catch_c
    move-exception v10

    goto/16 :goto_1

    .restart local v4       #numAttrs:I
    :catch_d
    move-exception v10

    goto/16 :goto_1

    :catch_e
    move-exception v10

    goto/16 :goto_1

    .restart local v1       #i:I
    .restart local v6       #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_f
    move-exception v10

    goto/16 :goto_1

    .restart local v0       #attrName:Ljava/lang/String;
    :catch_10
    move-exception v10

    goto/16 :goto_1

    .restart local v9       #value:Ljava/lang/String;
    :catch_11
    move-exception v10

    goto/16 :goto_1

    .end local v0           #attrName:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :catch_12
    move-exception v10

    goto/16 :goto_1

    :catch_13
    move-exception v10

    goto/16 :goto_1

    .restart local v8       #v:Landroid/content/ContentValues;
    :catch_14
    move-exception v10

    goto/16 :goto_1

    :catch_15
    move-exception v10

    goto/16 :goto_1

    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_16
    move-exception v10

    goto/16 :goto_1

    :catch_17
    move-exception v10

    goto/16 :goto_1

    :catch_18
    move-exception v10

    goto/16 :goto_1

    .restart local v3       #key:Ljava/lang/String;
    :catch_19
    move-exception v10

    goto/16 :goto_1

    :catch_1a
    move-exception v10

    goto/16 :goto_1

    :catch_1b
    move-exception v10

    goto/16 :goto_1

    :catch_1c
    move-exception v10

    goto/16 :goto_1

    :catch_1d
    move-exception v10

    goto/16 :goto_1

    :catch_1e
    move-exception v10

    goto/16 :goto_1

    :catch_1f
    move-exception v10

    goto/16 :goto_1

    :catch_20
    move-exception v10

    goto/16 :goto_1

    :catch_21
    move-exception v10

    goto/16 :goto_1

    :catch_22
    move-exception v10

    goto/16 :goto_1

    :catch_23
    move-exception v10

    goto/16 :goto_1

    :catch_24
    move-exception v10

    goto/16 :goto_1

    :catch_25
    move-exception v10

    goto/16 :goto_1

    :catch_26
    move-exception v10

    goto/16 :goto_1

    :catch_27
    move-exception v10

    goto/16 :goto_1

    :catch_28
    move-exception v10

    goto/16 :goto_1

    :catch_29
    move-exception v10

    goto/16 :goto_1

    :catch_2a
    move-exception v10

    goto/16 :goto_1

    :catch_2b
    move-exception v10

    goto/16 :goto_1

    :catch_2c
    move-exception v10

    goto/16 :goto_1

    :catch_2d
    move-exception v10

    goto/16 :goto_1

    .restart local v9       #value:Ljava/lang/String;
    :catch_2e
    move-exception v10

    goto/16 :goto_1

    :catch_2f
    move-exception v10

    goto/16 :goto_1

    :catch_30
    move-exception v10

    goto/16 :goto_1

    :catch_31
    move-exception v10

    goto/16 :goto_1

    .end local v3           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :catch_32
    move-exception v10

    goto/16 :goto_1
.end method

.method private loadProviderSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17
    .parameter "db"

    .prologue
    .line 1684
    invoke-static {}, Landroid/app/SyncConfig;->isEASEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1685
    sget-object v12, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v12}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050014

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 1694
    .local v7, parser:Landroid/content/res/XmlResourceParser;
    :goto_0
    :try_start_0
    const-string v12, "mail_providers"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b

    :try_start_1
    invoke-static {v7, v12}, Lcom/htc/android/mail/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 1697
    :goto_1
    :try_start_2
    invoke-static {v7}, Lcom/htc/android/mail/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    .line 1698
    :try_start_3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e

    move-result-object v9

    .line 1699
    .local v9, tag:Ljava/lang/String;
    :try_start_4
    const-string v12, "provider"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f

    :try_start_5
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10

    move-result v12

    if-nez v12, :cond_1

    .line 1756
    .end local v9           #tag:Ljava/lang/String;
    :goto_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1758
    return-void

    .line 1689
    .end local v7           #parser:Landroid/content/res/XmlResourceParser;
    :cond_0
    sget-object v12, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual {v12}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f050013

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .restart local v7       #parser:Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .line 1703
    .restart local v9       #tag:Ljava/lang/String;
    :cond_1
    :try_start_6
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11

    move-result v6

    .line 1704
    .local v6, numAttrs:I
    :try_start_7
    new-instance v8, Ljava/util/HashMap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_12

    :try_start_8
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_13

    .line 1705
    .local v8, prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v6, :cond_2

    .line 1706
    :try_start_9
    invoke-interface {v7, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_14

    move-result-object v1

    .line 1707
    .local v1, attrName:Ljava/lang/String;
    :try_start_a
    invoke-interface {v7, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_15

    move-result-object v11

    .line 1709
    .local v11, value:Ljava/lang/String;
    :try_start_b
    invoke-virtual {v8, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16

    .line 1705
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1713
    .end local v1           #attrName:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_2
    :try_start_c
    new-instance v10, Landroid/content/ContentValues;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17

    :try_start_d
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_18

    .line 1714
    .local v10, v:Landroid/content/ContentValues;
    :try_start_e
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_19

    move-result-object v12

    :try_start_f
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1a

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    :try_start_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1b

    move-result v12

    if-eqz v12, :cond_c

    :try_start_11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1c

    move-result-object v5

    :try_start_12
    check-cast v5, Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1d

    .line 1715
    .local v5, key:Ljava/lang/String;
    :try_start_13
    const-string v12, "_inprotocol"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1e

    :try_start_14
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1f

    move-result v12

    if-eqz v12, :cond_7

    .line 1716
    :try_start_15
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_20

    move-result-object v12

    :try_start_16
    check-cast v12, Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_21

    :try_start_17
    const-string v13, "POP"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_22

    :try_start_18
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_23

    move-result v12

    if-eqz v12, :cond_3

    .line 1717
    const/4 v12, 0x0

    :try_start_19
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_24

    move-result-object v12

    :try_start_1a
    invoke-virtual {v10, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_25

    goto :goto_4

    .line 1753
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #numAttrs:I
    .end local v8           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #tag:Ljava/lang/String;
    .end local v10           #v:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    goto :goto_2

    .line 1718
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v6       #numAttrs:I
    .restart local v8       #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #tag:Ljava/lang/String;
    .restart local v10       #v:Landroid/content/ContentValues;
    :cond_3
    :try_start_1b
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_26

    move-result-object v12

    :try_start_1c
    check-cast v12, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_27

    :try_start_1d
    const-string v13, "APOP"
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_28

    :try_start_1e
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_29

    move-result v12

    if-eqz v12, :cond_4

    .line 1719
    const/4 v12, 0x1

    :try_start_1f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_2a

    move-result-object v12

    :try_start_20
    invoke-virtual {v10, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1

    goto :goto_4

    .line 1754
    :catch_1
    move-exception v12

    goto/16 :goto_2

    .line 1720
    :cond_4
    :try_start_21
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_0
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2b

    move-result-object v12

    :try_start_22
    check-cast v12, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_2c

    :try_start_23
    const-string v13, "IMAP"
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_2d

    :try_start_24
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_2e

    move-result v12

    if-eqz v12, :cond_5

    .line 1721
    const/4 v12, 0x2

    :try_start_25
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2f

    move-result-object v12

    :try_start_26
    invoke-virtual {v10, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_26} :catch_0
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_2

    goto :goto_4

    .line 1754
    :catch_2
    move-exception v12

    goto/16 :goto_2

    .line 1723
    :cond_5
    :try_start_27
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_27} :catch_0
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_30

    move-result-object v12

    :try_start_28
    check-cast v12, Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_28} :catch_0
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_31

    :try_start_29
    const-string v13, "EAS"
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_29} :catch_0
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_32

    :try_start_2a
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_33

    move-result v12

    if-eqz v12, :cond_6

    .line 1724
    const/16 v12, 0xa

    :try_start_2b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_2b} :catch_0
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_34

    move-result-object v12

    :try_start_2c
    invoke-virtual {v10, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_2c} :catch_0
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_3

    goto :goto_4

    .line 1754
    :catch_3
    move-exception v12

    goto/16 :goto_2

    .line 1727
    :cond_6
    const/4 v12, 0x0

    :try_start_2d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_2d} :catch_0
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_35

    move-result-object v12

    :try_start_2e
    invoke-virtual {v10, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_2e} :catch_0
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_4

    goto/16 :goto_4

    .line 1754
    :catch_4
    move-exception v12

    goto/16 :goto_2

    .line 1729
    :cond_7
    :try_start_2f
    const-string v12, "_resid"
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_2f} :catch_0
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_36

    :try_start_30
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_30} :catch_0
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_37

    move-result v12

    if-eqz v12, :cond_9

    .line 1730
    :try_start_31
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_31} :catch_0
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_38

    move-result-object v12

    :try_start_32
    check-cast v12, Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_32} :catch_0
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_39

    :try_start_33
    const-string v13, "0"
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_33} :catch_0
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_3a

    :try_start_34
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_34} :catch_0
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_3b

    move-result v12

    if-eqz v12, :cond_8

    .line 1731
    const/4 v12, 0x0

    :try_start_35
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_35} :catch_0
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_3c

    move-result-object v12

    :try_start_36
    invoke-virtual {v10, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_36} :catch_0
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_5

    goto/16 :goto_4

    .line 1754
    :catch_5
    move-exception v12

    goto/16 :goto_2

    .line 1733
    :cond_8
    :try_start_37
    sget-object v12, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_37} :catch_0
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_3d

    :try_start_38
    invoke-virtual {v12}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_38} :catch_0
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_3e

    move-result-object v12

    :try_start_39
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_39} :catch_0
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_3f

    move-result-object v13

    :try_start_3a
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_3a} :catch_0
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_40

    move-result-object v12

    :try_start_3b
    check-cast v12, Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_3b} :catch_0
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_41

    :try_start_3c
    const-string v14, "drawable"
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_3c} :catch_0
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_42

    :try_start_3d
    const-string v15, "com.htc.android.mail"
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_3d} :catch_0
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_43

    :try_start_3e
    invoke-virtual {v13, v12, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_3e} :catch_0
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_44

    move-result v12

    :try_start_3f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_3f} :catch_0
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_45

    move-result-object v12

    :try_start_40
    invoke-virtual {v10, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_40} :catch_0
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_6

    goto/16 :goto_4

    .line 1754
    :catch_6
    move-exception v12

    goto/16 :goto_2

    .line 1735
    :cond_9
    :try_start_41
    const-string v12, "_description"
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_41} :catch_0
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_46

    :try_start_42
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_42} :catch_0
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_47

    move-result v12

    if-eqz v12, :cond_b

    .line 1736
    :try_start_43
    const-string v11, ""
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_43} :catch_0
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_48

    .line 1737
    .restart local v11       #value:Ljava/lang/String;
    :try_start_44
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_44} :catch_0
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_49

    move-result-object v12

    if-eqz v12, :cond_a

    .line 1739
    :try_start_45
    sget-object v12, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_45} :catch_0
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_4a

    :try_start_46
    invoke-virtual {v12}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_46} :catch_0
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_4b

    move-result-object v12

    :try_start_47
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_47} :catch_0
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_4c

    move-result-object v13

    :try_start_48
    sget-object v12, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_48} :catch_0
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_4d

    :try_start_49
    invoke-virtual {v12}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_49} :catch_0
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_4e

    move-result-object v12

    :try_start_4a
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_4a} :catch_0
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_4f

    move-result-object v14

    :try_start_4b
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_4b} :catch_0
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_50

    move-result-object v12

    :try_start_4c
    check-cast v12, Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_4c} :catch_0
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_51

    :try_start_4d
    const-string v15, "string"
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_4d} :catch_0
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_52

    :try_start_4e
    const-string v16, "com.htc.android.mail"
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_4e} :catch_0
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4e} :catch_53

    :try_start_4f
    move-object/from16 v0, v16

    invoke-virtual {v14, v12, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_4f} :catch_0
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_54

    move-result v12

    :try_start_50
    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_50} :catch_0
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_55

    move-result-object v11

    .line 1745
    :cond_a
    :goto_5
    :try_start_51
    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_51} :catch_0
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_7

    goto/16 :goto_4

    .line 1754
    :catch_7
    move-exception v12

    goto/16 :goto_2

    .line 1740
    :catch_8
    move-exception v2

    .line 1741
    .local v2, e:Ljava/lang/Exception;
    :try_start_52
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_52} :catch_0
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_52} :catch_56

    move-result-object v11

    .end local v11           #value:Ljava/lang/String;
    :try_start_53
    check-cast v11, Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_53} :catch_0
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_57

    .restart local v11       #value:Ljava/lang/String;
    goto :goto_5

    .line 1748
    .end local v2           #e:Ljava/lang/Exception;
    .end local v11           #value:Ljava/lang/String;
    :cond_b
    :try_start_54
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_54} :catch_0
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_54} :catch_58

    move-result-object v12

    :try_start_55
    check-cast v12, Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_55} :catch_0
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_55} :catch_59

    :try_start_56
    invoke-virtual {v10, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_56} :catch_0
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_56} :catch_9

    goto/16 :goto_4

    .line 1754
    :catch_9
    move-exception v12

    goto/16 :goto_2

    .line 1751
    .end local v5           #key:Ljava/lang/String;
    :cond_c
    :try_start_57
    const-string v12, "providers"
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_57} :catch_0
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_57} :catch_5a

    const/4 v13, 0x0

    :try_start_58
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_58} :catch_0
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_58} :catch_a

    goto/16 :goto_1

    .line 1754
    :catch_a
    move-exception v12

    goto/16 :goto_2

    .line 1756
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #numAttrs:I
    .end local v8           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #tag:Ljava/lang/String;
    .end local v10           #v:Landroid/content/ContentValues;
    :catchall_0
    move-exception v12

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    throw v12

    .line 1754
    :catch_b
    move-exception v12

    goto/16 :goto_2

    :catch_c
    move-exception v12

    goto/16 :goto_2

    :catch_d
    move-exception v12

    goto/16 :goto_2

    :catch_e
    move-exception v12

    goto/16 :goto_2

    .restart local v9       #tag:Ljava/lang/String;
    :catch_f
    move-exception v12

    goto/16 :goto_2

    :catch_10
    move-exception v12

    goto/16 :goto_2

    :catch_11
    move-exception v12

    goto/16 :goto_2

    .restart local v6       #numAttrs:I
    :catch_12
    move-exception v12

    goto/16 :goto_2

    :catch_13
    move-exception v12

    goto/16 :goto_2

    .restart local v3       #i:I
    .restart local v8       #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_14
    move-exception v12

    goto/16 :goto_2

    .restart local v1       #attrName:Ljava/lang/String;
    :catch_15
    move-exception v12

    goto/16 :goto_2

    .restart local v11       #value:Ljava/lang/String;
    :catch_16
    move-exception v12

    goto/16 :goto_2

    .end local v1           #attrName:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :catch_17
    move-exception v12

    goto/16 :goto_2

    :catch_18
    move-exception v12

    goto/16 :goto_2

    .restart local v10       #v:Landroid/content/ContentValues;
    :catch_19
    move-exception v12

    goto/16 :goto_2

    :catch_1a
    move-exception v12

    goto/16 :goto_2

    .restart local v4       #i$:Ljava/util/Iterator;
    :catch_1b
    move-exception v12

    goto/16 :goto_2

    :catch_1c
    move-exception v12

    goto/16 :goto_2

    :catch_1d
    move-exception v12

    goto/16 :goto_2

    .restart local v5       #key:Ljava/lang/String;
    :catch_1e
    move-exception v12

    goto/16 :goto_2

    :catch_1f
    move-exception v12

    goto/16 :goto_2

    :catch_20
    move-exception v12

    goto/16 :goto_2

    :catch_21
    move-exception v12

    goto/16 :goto_2

    :catch_22
    move-exception v12

    goto/16 :goto_2

    :catch_23
    move-exception v12

    goto/16 :goto_2

    :catch_24
    move-exception v12

    goto/16 :goto_2

    :catch_25
    move-exception v12

    goto/16 :goto_2

    :catch_26
    move-exception v12

    goto/16 :goto_2

    :catch_27
    move-exception v12

    goto/16 :goto_2

    :catch_28
    move-exception v12

    goto/16 :goto_2

    :catch_29
    move-exception v12

    goto/16 :goto_2

    :catch_2a
    move-exception v12

    goto/16 :goto_2

    :catch_2b
    move-exception v12

    goto/16 :goto_2

    :catch_2c
    move-exception v12

    goto/16 :goto_2

    :catch_2d
    move-exception v12

    goto/16 :goto_2

    :catch_2e
    move-exception v12

    goto/16 :goto_2

    :catch_2f
    move-exception v12

    goto/16 :goto_2

    :catch_30
    move-exception v12

    goto/16 :goto_2

    :catch_31
    move-exception v12

    goto/16 :goto_2

    :catch_32
    move-exception v12

    goto/16 :goto_2

    :catch_33
    move-exception v12

    goto/16 :goto_2

    :catch_34
    move-exception v12

    goto/16 :goto_2

    :catch_35
    move-exception v12

    goto/16 :goto_2

    :catch_36
    move-exception v12

    goto/16 :goto_2

    :catch_37
    move-exception v12

    goto/16 :goto_2

    :catch_38
    move-exception v12

    goto/16 :goto_2

    :catch_39
    move-exception v12

    goto/16 :goto_2

    :catch_3a
    move-exception v12

    goto/16 :goto_2

    :catch_3b
    move-exception v12

    goto/16 :goto_2

    :catch_3c
    move-exception v12

    goto/16 :goto_2

    :catch_3d
    move-exception v12

    goto/16 :goto_2

    :catch_3e
    move-exception v12

    goto/16 :goto_2

    :catch_3f
    move-exception v12

    goto/16 :goto_2

    :catch_40
    move-exception v12

    goto/16 :goto_2

    :catch_41
    move-exception v12

    goto/16 :goto_2

    :catch_42
    move-exception v12

    goto/16 :goto_2

    :catch_43
    move-exception v12

    goto/16 :goto_2

    :catch_44
    move-exception v12

    goto/16 :goto_2

    :catch_45
    move-exception v12

    goto/16 :goto_2

    :catch_46
    move-exception v12

    goto/16 :goto_2

    :catch_47
    move-exception v12

    goto/16 :goto_2

    :catch_48
    move-exception v12

    goto/16 :goto_2

    .restart local v11       #value:Ljava/lang/String;
    :catch_49
    move-exception v12

    goto/16 :goto_2

    :catch_4a
    move-exception v12

    goto/16 :goto_2

    :catch_4b
    move-exception v12

    goto/16 :goto_2

    :catch_4c
    move-exception v12

    goto/16 :goto_2

    :catch_4d
    move-exception v12

    goto/16 :goto_2

    :catch_4e
    move-exception v12

    goto/16 :goto_2

    :catch_4f
    move-exception v12

    goto/16 :goto_2

    :catch_50
    move-exception v12

    goto/16 :goto_2

    :catch_51
    move-exception v12

    goto/16 :goto_2

    :catch_52
    move-exception v12

    goto/16 :goto_2

    :catch_53
    move-exception v12

    goto/16 :goto_2

    :catch_54
    move-exception v12

    goto/16 :goto_2

    :catch_55
    move-exception v12

    goto/16 :goto_2

    .restart local v2       #e:Ljava/lang/Exception;
    :catch_56
    move-exception v12

    goto/16 :goto_2

    .end local v11           #value:Ljava/lang/String;
    :catch_57
    move-exception v12

    goto/16 :goto_2

    .end local v2           #e:Ljava/lang/Exception;
    :catch_58
    move-exception v12

    goto/16 :goto_2

    :catch_59
    move-exception v12

    goto/16 :goto_2

    .end local v5           #key:Ljava/lang/String;
    :catch_5a
    move-exception v12

    goto/16 :goto_2
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 41
    .parameter "db"

    .prologue
    .line 1859
    sget-object v38, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual/range {v38 .. v38}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f05001e

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v33

    .line 1861
    .local v33, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v38, "settings"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d

    :try_start_1
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/htc/android/mail/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e

    .line 1864
    :cond_0
    :try_start_2
    invoke-static/range {v33 .. v33}, Lcom/htc/android/mail/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f

    .line 1865
    :try_start_3
    invoke-interface/range {v33 .. v33}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10

    move-result-object v36

    .line 1866
    .local v36, tag:Ljava/lang/String;
    :try_start_4
    const-string v38, "setting"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11

    :try_start_5
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12

    move-result v38

    if-nez v38, :cond_2c

    .line 1920
    .end local v36           #tag:Ljava/lang/String;
    :goto_0
    invoke-interface/range {v33 .. v33}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1923
    new-instance v31, Lcom/htc/android/mail/HtcMailCustomization;

    invoke-direct/range {v31 .. v31}, Lcom/htc/android/mail/HtcMailCustomization;-><init>()V

    .line 1924
    .local v31, mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    sget-object v38, Lcom/htc/android/mail/MailProvider;->sTheOne:Lcom/htc/android/mail/MailProvider;

    invoke-virtual/range {v38 .. v38}, Lcom/htc/android/mail/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/HtcMailCustomization;->getMailCustomizationData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v4

    .line 1925
    .local v4, cusBundle:Landroid/os/Bundle;
    if-eqz v4, :cond_2b

    .line 1926
    const-string v38, "mail_common_setting"

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1927
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v38

    if-lez v38, :cond_3c

    .line 1928
    const-string v38, "plenty_set1"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v35

    .line 1929
    .local v35, settingBundle:Landroid/os/Bundle;
    if-eqz v35, :cond_3b

    .line 1930
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_1

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "found customize setting bundle>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    :cond_1
    const-string v38, "useSignature"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1932
    .local v26, cust_useSignature:Ljava/lang/String;
    const-string v38, "sizelimit"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1933
    .local v21, cust_sizelimit:Ljava/lang/String;
    const-string v38, "poll_frequency_number"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1934
    .local v17, cust_poll_frequency_number:Ljava/lang/String;
    const-string v38, "fetchMailType"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1935
    .local v13, cust_fetchMailType:Ljava/lang/String;
    const-string v38, "fetchMailDays"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1936
    .local v11, cust_fetchMailDays:Ljava/lang/String;
    const-string v38, "fetchMailNum"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1937
    .local v12, cust_fetchMailNum:Ljava/lang/String;
    const-string v38, "deleteFromServer"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1938
    .local v7, cust_deleteFromServer:Ljava/lang/String;
    const-string v38, "alwaysBccMyself"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1939
    .local v5, cust_alwaysBccMyself:Ljava/lang/String;
    const-string v38, "askBeforeDelete"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1940
    .local v6, cust_askBeforeDelete:Ljava/lang/String;
    const-string v38, "enableSDsave"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1941
    .local v10, cust_enableSDsave:Ljava/lang/String;
    const-string v38, "emailnotifications"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1942
    .local v9, cust_emailnotificationsture:Ljava/lang/String;
    const-string v38, "vibrate"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1943
    .local v27, cust_vibrate:Ljava/lang/String;
    const-string v38, "sound"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1944
    .local v22, cust_sound:Ljava/lang/String;
    const-string v38, "replyWithText"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1945
    .local v20, cust_replyWithText:Ljava/lang/String;
    const-string v38, "refreshMailWhenOpenFolder"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1946
    .local v19, cust_refreshMailWhenOpenFolder:Ljava/lang/String;
    const-string v38, "previewLinesNumber"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1947
    .local v18, cust_previewLinesNumber:Ljava/lang/String;
    const-string v38, "peakDays"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1948
    .local v14, cust_peakDays:Ljava/lang/String;
    const-string v38, "syncSchedulePeakOn"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1949
    .local v24, cust_syncSchedulePeakOn:Ljava/lang/String;
    const-string v38, "syncSchedulePeakOff"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1950
    .local v23, cust_syncSchedulePeakOff:Ljava/lang/String;
    const-string v38, "peakTimeStart"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1951
    .local v16, cust_peakTimeStart:Ljava/lang/String;
    const-string v38, "peakTimeEnd"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1952
    .local v15, cust_peakTimeEnd:Ljava/lang/String;
    const-string v38, "downloadMessageWhenScroll"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1953
    .local v8, cust_downloadMessageWhenScroll:Ljava/lang/String;
    const-string v38, "syncWithServer"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1955
    .local v25, cust_syncWithServer:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_2

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_useSignature>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    :cond_2
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_3

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_sizelimit>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_4

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_poll_frequency_number>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_5

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_fetchMailType>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_6

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_fetchMailDays>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    :cond_6
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_7

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_fetchMailNum>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    :cond_7
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_8

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_deleteFromServer>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    :cond_8
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_9

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_alwaysBccMyself>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    :cond_9
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_a

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_askBeforeDelete>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    :cond_a
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_b

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_enableSDsave>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    :cond_b
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_c

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_emailnotificationsture>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    :cond_c
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_d

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_vibrate>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    :cond_d
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_e

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_sound>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    :cond_e
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_f

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_replyWithText>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    :cond_f
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_10

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_refreshMailWhenOpenFolder>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    :cond_10
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_11

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_previewLinesNumber>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    :cond_11
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_12

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_syncSchedulePeakOn>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    :cond_12
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_13

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_syncSchedulePeakOff>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    :cond_13
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_14

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_donwloadMessageWhenScroll>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    :cond_14
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_15

    const-string v38, "MailProvider"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Cust_MailCommon :cust_syncWithServer>"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    :cond_15
    if-eqz v26, :cond_16

    sput-object v26, Lcom/htc/android/mail/MailProvider;->useSignature:Ljava/lang/String;

    .line 1977
    :cond_16
    if-eqz v21, :cond_17

    sput-object v21, Lcom/htc/android/mail/MailProvider;->sizelimit:Ljava/lang/String;

    .line 1978
    :cond_17
    if-eqz v17, :cond_18

    sput-object v17, Lcom/htc/android/mail/MailProvider;->poll_frequency_number:Ljava/lang/String;

    .line 1980
    :cond_18
    if-eqz v11, :cond_19

    sput-object v11, Lcom/htc/android/mail/MailProvider;->fetchMailDays:Ljava/lang/String;

    .line 1981
    :cond_19
    if-eqz v12, :cond_1a

    sput-object v12, Lcom/htc/android/mail/MailProvider;->fetchMailNum:Ljava/lang/String;

    .line 1982
    :cond_1a
    if-eqz v7, :cond_1b

    sput-object v7, Lcom/htc/android/mail/MailProvider;->deleteFromServer:Ljava/lang/String;

    .line 1983
    :cond_1b
    if-eqz v5, :cond_1c

    sput-object v5, Lcom/htc/android/mail/MailProvider;->alwaysBccMyself:Ljava/lang/String;

    .line 1984
    :cond_1c
    if-eqz v6, :cond_1d

    sput-object v6, Lcom/htc/android/mail/MailProvider;->askBeforeDelete:Ljava/lang/String;

    .line 1985
    :cond_1d
    if-eqz v10, :cond_1e

    sput-object v10, Lcom/htc/android/mail/MailProvider;->enableSDsave:Ljava/lang/String;

    .line 1986
    :cond_1e
    if-eqz v9, :cond_1f

    sput-object v9, Lcom/htc/android/mail/MailProvider;->emailNotifications:Ljava/lang/String;

    .line 1987
    :cond_1f
    if-eqz v27, :cond_20

    sput-object v27, Lcom/htc/android/mail/MailProvider;->vibrate:Ljava/lang/String;

    .line 1988
    :cond_20
    if-eqz v22, :cond_21

    sput-object v22, Lcom/htc/android/mail/MailProvider;->sound:Ljava/lang/String;

    .line 1989
    :cond_21
    if-eqz v20, :cond_22

    sput-object v20, Lcom/htc/android/mail/MailProvider;->replyWithText:Ljava/lang/String;

    .line 1990
    :cond_22
    if-eqz v19, :cond_23

    sput-object v19, Lcom/htc/android/mail/MailProvider;->refreshMailWhenOpenFolder:Ljava/lang/String;

    .line 1991
    :cond_23
    if-eqz v18, :cond_24

    sput-object v18, Lcom/htc/android/mail/MailProvider;->previewLinesNumber:Ljava/lang/String;

    .line 1992
    :cond_24
    if-eqz v14, :cond_25

    sput-object v14, Lcom/htc/android/mail/MailProvider;->peakDays:Ljava/lang/String;

    .line 1993
    :cond_25
    if-eqz v24, :cond_26

    sput-object v24, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOn:Ljava/lang/String;

    .line 1994
    :cond_26
    if-eqz v23, :cond_27

    sput-object v23, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOff:Ljava/lang/String;

    .line 1995
    :cond_27
    if-eqz v16, :cond_28

    sput-object v16, Lcom/htc/android/mail/MailProvider;->peakTimeStart:Ljava/lang/String;

    .line 1996
    :cond_28
    if-eqz v15, :cond_29

    sput-object v15, Lcom/htc/android/mail/MailProvider;->peakTimeEnd:Ljava/lang/String;

    .line 1997
    :cond_29
    if-eqz v8, :cond_2a

    sput-object v8, Lcom/htc/android/mail/MailProvider;->downloadMessageWhenScroll:Ljava/lang/String;

    .line 1998
    :cond_2a
    if-eqz v25, :cond_2b

    sput-object v25, Lcom/htc/android/mail/MailProvider;->syncWithServer:Ljava/lang/String;

    .line 2007
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v5           #cust_alwaysBccMyself:Ljava/lang/String;
    .end local v6           #cust_askBeforeDelete:Ljava/lang/String;
    .end local v7           #cust_deleteFromServer:Ljava/lang/String;
    .end local v8           #cust_downloadMessageWhenScroll:Ljava/lang/String;
    .end local v9           #cust_emailnotificationsture:Ljava/lang/String;
    .end local v10           #cust_enableSDsave:Ljava/lang/String;
    .end local v11           #cust_fetchMailDays:Ljava/lang/String;
    .end local v12           #cust_fetchMailNum:Ljava/lang/String;
    .end local v13           #cust_fetchMailType:Ljava/lang/String;
    .end local v14           #cust_peakDays:Ljava/lang/String;
    .end local v15           #cust_peakTimeEnd:Ljava/lang/String;
    .end local v16           #cust_peakTimeStart:Ljava/lang/String;
    .end local v17           #cust_poll_frequency_number:Ljava/lang/String;
    .end local v18           #cust_previewLinesNumber:Ljava/lang/String;
    .end local v19           #cust_refreshMailWhenOpenFolder:Ljava/lang/String;
    .end local v20           #cust_replyWithText:Ljava/lang/String;
    .end local v21           #cust_sizelimit:Ljava/lang/String;
    .end local v22           #cust_sound:Ljava/lang/String;
    .end local v23           #cust_syncSchedulePeakOff:Ljava/lang/String;
    .end local v24           #cust_syncSchedulePeakOn:Ljava/lang/String;
    .end local v25           #cust_syncWithServer:Ljava/lang/String;
    .end local v26           #cust_useSignature:Ljava/lang/String;
    .end local v27           #cust_vibrate:Ljava/lang/String;
    .end local v35           #settingBundle:Landroid/os/Bundle;
    :cond_2b
    :goto_1
    return-void

    .line 1870
    .end local v4           #cusBundle:Landroid/os/Bundle;
    .end local v31           #mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    .restart local v36       #tag:Ljava/lang/String;
    :cond_2c
    :try_start_6
    invoke-interface/range {v33 .. v33}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13

    move-result v32

    .line 1872
    .local v32, numAttrs:I
    :try_start_7
    new-instance v34, Ljava/util/HashMap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_14

    :try_start_8
    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_15

    .line 1873
    .local v34, prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v28, 0x0

    .local v28, i:I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_2d

    .line 1874
    :try_start_9
    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_16

    move-result-object v2

    .line 1875
    .local v2, attrName:Ljava/lang/String;
    :try_start_a
    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_17

    move-result-object v37

    .line 1877
    .local v37, value:Ljava/lang/String;
    :try_start_b
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_18

    .line 1873
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 1881
    .end local v2           #attrName:Ljava/lang/String;
    .end local v37           #value:Ljava/lang/String;
    :cond_2d
    :try_start_c
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_19

    move-result-object v38

    :try_start_d
    invoke-interface/range {v38 .. v38}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1a

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :cond_2e
    :goto_3
    :try_start_e
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1b

    move-result v38

    if-eqz v38, :cond_0

    :try_start_f
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1c

    move-result-object v30

    :try_start_10
    check-cast v30, Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1d

    .line 1882
    .local v30, key:Ljava/lang/String;
    :try_start_11
    const-string v38, "_replyWithText"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1e

    :try_start_12
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1f

    move-result v38

    if-eqz v38, :cond_2f

    .line 1883
    :try_start_13
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_20

    move-result-object v38

    :try_start_14
    check-cast v38, Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_21

    :try_start_15
    sput-object v38, Lcom/htc/android/mail/MailProvider;->replyWithText:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_22

    goto :goto_3

    .line 1917
    .end local v28           #i:I
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v30           #key:Ljava/lang/String;
    .end local v32           #numAttrs:I
    .end local v34           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v36           #tag:Ljava/lang/String;
    :catch_0
    move-exception v38

    goto/16 :goto_0

    .line 1884
    .restart local v28       #i:I
    .restart local v29       #i$:Ljava/util/Iterator;
    .restart local v30       #key:Ljava/lang/String;
    .restart local v32       #numAttrs:I
    .restart local v34       #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v36       #tag:Ljava/lang/String;
    :cond_2f
    :try_start_16
    const-string v38, "_useSignature"
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_23

    :try_start_17
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_24

    move-result v38

    if-eqz v38, :cond_30

    .line 1885
    :try_start_18
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_25

    move-result-object v38

    :try_start_19
    check-cast v38, Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_26

    :try_start_1a
    sput-object v38, Lcom/htc/android/mail/MailProvider;->useSignature:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1

    goto :goto_3

    .line 1918
    :catch_1
    move-exception v38

    goto/16 :goto_0

    .line 1886
    :cond_30
    :try_start_1b
    const-string v38, "_signature"
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_27

    :try_start_1c
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_28

    move-result v38

    if-nez v38, :cond_2e

    .line 1893
    :try_start_1d
    const-string v38, "_sizelimit"
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_29

    :try_start_1e
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_2a

    move-result v38

    if-eqz v38, :cond_31

    .line 1894
    :try_start_1f
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_2b

    move-result-object v38

    :try_start_20
    check-cast v38, Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_2c

    :try_start_21
    sput-object v38, Lcom/htc/android/mail/MailProvider;->sizelimit:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_0
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2

    goto :goto_3

    .line 1918
    :catch_2
    move-exception v38

    goto/16 :goto_0

    .line 1895
    :cond_31
    :try_start_22
    const-string v38, "_poll_frequency_number"
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_2d

    :try_start_23
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_2e

    move-result v38

    if-eqz v38, :cond_32

    .line 1896
    :try_start_24
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_2f

    move-result-object v38

    :try_start_25
    check-cast v38, Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_30

    :try_start_26
    sput-object v38, Lcom/htc/android/mail/MailProvider;->poll_frequency_number:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_26} :catch_0
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_3

    goto/16 :goto_3

    .line 1918
    :catch_3
    move-exception v38

    goto/16 :goto_0

    .line 1897
    :cond_32
    :try_start_27
    const-string v38, "_fetchMailNum"
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_27} :catch_0
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_31

    :try_start_28
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_28} :catch_0
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_32

    move-result v38

    if-eqz v38, :cond_33

    .line 1898
    :try_start_29
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_29} :catch_0
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_33

    move-result-object v38

    :try_start_2a
    check-cast v38, Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_2a} :catch_0
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_34

    :try_start_2b
    sput-object v38, Lcom/htc/android/mail/MailProvider;->fetchMailNum:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_2b} :catch_0
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_4

    goto/16 :goto_3

    .line 1918
    :catch_4
    move-exception v38

    goto/16 :goto_0

    .line 1899
    :cond_33
    :try_start_2c
    const-string v38, "_fontSize"
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_2c} :catch_0
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_35

    :try_start_2d
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_2d} :catch_0
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_36

    move-result v38

    if-eqz v38, :cond_34

    .line 1900
    :try_start_2e
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_2e} :catch_0
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_37

    move-result-object v38

    :try_start_2f
    check-cast v38, Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_2f} :catch_0
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_38

    :try_start_30
    sput-object v38, Lcom/htc/android/mail/MailProvider;->fontSize:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_30} :catch_0
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_5

    goto/16 :goto_3

    .line 1918
    :catch_5
    move-exception v38

    goto/16 :goto_0

    .line 1901
    :cond_34
    :try_start_31
    const-string v38, "_deleteFromServer"
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_31} :catch_0
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_39

    :try_start_32
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_32} :catch_0
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_3a

    move-result v38

    if-eqz v38, :cond_35

    .line 1902
    :try_start_33
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_33} :catch_0
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_3b

    move-result-object v38

    :try_start_34
    check-cast v38, Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_34} :catch_0
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_3c

    :try_start_35
    sput-object v38, Lcom/htc/android/mail/MailProvider;->deleteFromServer:Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_35} :catch_0
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_6

    goto/16 :goto_3

    .line 1918
    :catch_6
    move-exception v38

    goto/16 :goto_0

    .line 1903
    :cond_35
    :try_start_36
    const-string v38, "_askBeforeDelete"
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_36} :catch_0
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_3d

    :try_start_37
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_37} :catch_0
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_3e

    move-result v38

    if-eqz v38, :cond_36

    .line 1904
    :try_start_38
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_38} :catch_0
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_3f

    move-result-object v38

    :try_start_39
    check-cast v38, Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_39} :catch_0
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_40

    :try_start_3a
    sput-object v38, Lcom/htc/android/mail/MailProvider;->askBeforeDelete:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_3a} :catch_0
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_7

    goto/16 :goto_3

    .line 1918
    :catch_7
    move-exception v38

    goto/16 :goto_0

    .line 1905
    :cond_36
    :try_start_3b
    const-string v38, "_alwaysBccMyself"
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_3b} :catch_0
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_41

    :try_start_3c
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_3c} :catch_0
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_42

    move-result v38

    if-eqz v38, :cond_37

    .line 1906
    :try_start_3d
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_3d} :catch_0
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_43

    move-result-object v38

    :try_start_3e
    check-cast v38, Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_3e} :catch_0
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_44

    :try_start_3f
    sput-object v38, Lcom/htc/android/mail/MailProvider;->alwaysBccMyself:Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_3f} :catch_0
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_8

    goto/16 :goto_3

    .line 1918
    :catch_8
    move-exception v38

    goto/16 :goto_0

    .line 1907
    :cond_37
    :try_start_40
    const-string v38, "_enableSDsave"
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_40} :catch_0
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_45

    :try_start_41
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_41} :catch_0
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_46

    move-result v38

    if-eqz v38, :cond_38

    .line 1908
    :try_start_42
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_42} :catch_0
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_47

    move-result-object v38

    :try_start_43
    check-cast v38, Ljava/lang/String;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_43} :catch_0
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_48

    :try_start_44
    sput-object v38, Lcom/htc/android/mail/MailProvider;->enableSDsave:Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_44} :catch_0
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_9

    goto/16 :goto_3

    .line 1918
    :catch_9
    move-exception v38

    goto/16 :goto_0

    .line 1909
    :cond_38
    :try_start_45
    const-string v38, "_emailnotifications"
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_45 .. :try_end_45} :catch_0
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_49

    :try_start_46
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_46} :catch_0
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_4a

    move-result v38

    if-eqz v38, :cond_39

    .line 1910
    :try_start_47
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_47} :catch_0
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_4b

    move-result-object v38

    :try_start_48
    check-cast v38, Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_48} :catch_0
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_4c

    :try_start_49
    sput-object v38, Lcom/htc/android/mail/MailProvider;->emailNotifications:Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_49} :catch_0
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_a

    goto/16 :goto_3

    .line 1918
    :catch_a
    move-exception v38

    goto/16 :goto_0

    .line 1911
    :cond_39
    :try_start_4a
    const-string v38, "_sound"
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_4a} :catch_0
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_4d

    :try_start_4b
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_4b} :catch_0
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_4e

    move-result v38

    if-eqz v38, :cond_3a

    .line 1912
    :try_start_4c
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_4c} :catch_0
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_4f

    move-result-object v38

    :try_start_4d
    check-cast v38, Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_4d} :catch_0
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_50

    :try_start_4e
    sput-object v38, Lcom/htc/android/mail/MailProvider;->sound:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_4e} :catch_0
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4e} :catch_b

    goto/16 :goto_3

    .line 1918
    :catch_b
    move-exception v38

    goto/16 :goto_0

    .line 1913
    :cond_3a
    :try_start_4f
    const-string v38, "_vibrate"
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_4f} :catch_0
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_51

    :try_start_50
    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_50} :catch_0
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_52

    move-result v38

    if-eqz v38, :cond_2e

    .line 1914
    :try_start_51
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_51} :catch_0
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_53

    move-result-object v38

    :try_start_52
    check-cast v38, Ljava/lang/String;
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_52} :catch_0
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_52} :catch_54

    :try_start_53
    sput-object v38, Lcom/htc/android/mail/MailProvider;->vibrate:Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_53} :catch_0
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_c

    goto/16 :goto_3

    .line 1918
    :catch_c
    move-exception v38

    goto/16 :goto_0

    .line 1920
    .end local v28           #i:I
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v30           #key:Ljava/lang/String;
    .end local v32           #numAttrs:I
    .end local v34           #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v36           #tag:Ljava/lang/String;
    :catchall_0
    move-exception v38

    invoke-interface/range {v33 .. v33}, Landroid/content/res/XmlResourceParser;->close()V

    throw v38

    .line 2001
    .restart local v3       #bundle:Landroid/os/Bundle;
    .restart local v4       #cusBundle:Landroid/os/Bundle;
    .restart local v31       #mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    .restart local v35       #settingBundle:Landroid/os/Bundle;
    :cond_3b
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_2b

    const-string v38, "MailProvider"

    const-string v39, "not found common setting > plenty_set1"

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2004
    .end local v35           #settingBundle:Landroid/os/Bundle;
    :cond_3c
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v38

    if-eqz v38, :cond_2b

    const-string v38, "MailProvider"

    const-string v39, "no found customize setting>"

    invoke-static/range {v38 .. v39}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1918
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v4           #cusBundle:Landroid/os/Bundle;
    .end local v31           #mailcustom:Lcom/htc/android/mail/HtcMailCustomization;
    :catch_d
    move-exception v38

    goto/16 :goto_0

    :catch_e
    move-exception v38

    goto/16 :goto_0

    :catch_f
    move-exception v38

    goto/16 :goto_0

    :catch_10
    move-exception v38

    goto/16 :goto_0

    .restart local v36       #tag:Ljava/lang/String;
    :catch_11
    move-exception v38

    goto/16 :goto_0

    :catch_12
    move-exception v38

    goto/16 :goto_0

    :catch_13
    move-exception v38

    goto/16 :goto_0

    .restart local v32       #numAttrs:I
    :catch_14
    move-exception v38

    goto/16 :goto_0

    :catch_15
    move-exception v38

    goto/16 :goto_0

    .restart local v28       #i:I
    .restart local v34       #prefs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_16
    move-exception v38

    goto/16 :goto_0

    .restart local v2       #attrName:Ljava/lang/String;
    :catch_17
    move-exception v38

    goto/16 :goto_0

    .restart local v37       #value:Ljava/lang/String;
    :catch_18
    move-exception v38

    goto/16 :goto_0

    .end local v2           #attrName:Ljava/lang/String;
    .end local v37           #value:Ljava/lang/String;
    :catch_19
    move-exception v38

    goto/16 :goto_0

    :catch_1a
    move-exception v38

    goto/16 :goto_0

    .restart local v29       #i$:Ljava/util/Iterator;
    :catch_1b
    move-exception v38

    goto/16 :goto_0

    :catch_1c
    move-exception v38

    goto/16 :goto_0

    :catch_1d
    move-exception v38

    goto/16 :goto_0

    .restart local v30       #key:Ljava/lang/String;
    :catch_1e
    move-exception v38

    goto/16 :goto_0

    :catch_1f
    move-exception v38

    goto/16 :goto_0

    :catch_20
    move-exception v38

    goto/16 :goto_0

    :catch_21
    move-exception v38

    goto/16 :goto_0

    :catch_22
    move-exception v38

    goto/16 :goto_0

    :catch_23
    move-exception v38

    goto/16 :goto_0

    :catch_24
    move-exception v38

    goto/16 :goto_0

    :catch_25
    move-exception v38

    goto/16 :goto_0

    :catch_26
    move-exception v38

    goto/16 :goto_0

    :catch_27
    move-exception v38

    goto/16 :goto_0

    :catch_28
    move-exception v38

    goto/16 :goto_0

    :catch_29
    move-exception v38

    goto/16 :goto_0

    :catch_2a
    move-exception v38

    goto/16 :goto_0

    :catch_2b
    move-exception v38

    goto/16 :goto_0

    :catch_2c
    move-exception v38

    goto/16 :goto_0

    :catch_2d
    move-exception v38

    goto/16 :goto_0

    :catch_2e
    move-exception v38

    goto/16 :goto_0

    :catch_2f
    move-exception v38

    goto/16 :goto_0

    :catch_30
    move-exception v38

    goto/16 :goto_0

    :catch_31
    move-exception v38

    goto/16 :goto_0

    :catch_32
    move-exception v38

    goto/16 :goto_0

    :catch_33
    move-exception v38

    goto/16 :goto_0

    :catch_34
    move-exception v38

    goto/16 :goto_0

    :catch_35
    move-exception v38

    goto/16 :goto_0

    :catch_36
    move-exception v38

    goto/16 :goto_0

    :catch_37
    move-exception v38

    goto/16 :goto_0

    :catch_38
    move-exception v38

    goto/16 :goto_0

    :catch_39
    move-exception v38

    goto/16 :goto_0

    :catch_3a
    move-exception v38

    goto/16 :goto_0

    :catch_3b
    move-exception v38

    goto/16 :goto_0

    :catch_3c
    move-exception v38

    goto/16 :goto_0

    :catch_3d
    move-exception v38

    goto/16 :goto_0

    :catch_3e
    move-exception v38

    goto/16 :goto_0

    :catch_3f
    move-exception v38

    goto/16 :goto_0

    :catch_40
    move-exception v38

    goto/16 :goto_0

    :catch_41
    move-exception v38

    goto/16 :goto_0

    :catch_42
    move-exception v38

    goto/16 :goto_0

    :catch_43
    move-exception v38

    goto/16 :goto_0

    :catch_44
    move-exception v38

    goto/16 :goto_0

    :catch_45
    move-exception v38

    goto/16 :goto_0

    :catch_46
    move-exception v38

    goto/16 :goto_0

    :catch_47
    move-exception v38

    goto/16 :goto_0

    :catch_48
    move-exception v38

    goto/16 :goto_0

    :catch_49
    move-exception v38

    goto/16 :goto_0

    :catch_4a
    move-exception v38

    goto/16 :goto_0

    :catch_4b
    move-exception v38

    goto/16 :goto_0

    :catch_4c
    move-exception v38

    goto/16 :goto_0

    :catch_4d
    move-exception v38

    goto/16 :goto_0

    :catch_4e
    move-exception v38

    goto/16 :goto_0

    :catch_4f
    move-exception v38

    goto/16 :goto_0

    :catch_50
    move-exception v38

    goto/16 :goto_0

    :catch_51
    move-exception v38

    goto/16 :goto_0

    :catch_52
    move-exception v38

    goto/16 :goto_0

    :catch_53
    move-exception v38

    goto/16 :goto_0

    :catch_54
    move-exception v38

    goto/16 :goto_0
.end method

.method private upgrade_to_version_106(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 1514
    const-string v0, "ALTER TABLE easTracking ADD COLUMN _accountId INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1515
    const-string v0, "CREATE INDEX IF NOT EXISTS IDX_easTracking_accountId ON easTracking (_accountId)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1516
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_del=-1 AND _protocol=\'%d\'"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v12

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1517
    .local v3, where:Ljava/lang/String;
    const-string v1, "accounts"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1518
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1522
    .local v8, accountId:J
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1523
    .local v11, cv:Landroid/content/ContentValues;
    const-string v0, "_accountId"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1524
    const-string v0, "easTracking"

    invoke-virtual {p1, v0, v11, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1526
    .end local v8           #accountId:J
    .end local v11           #cv:Landroid/content/ContentValues;
    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1527
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1529
    :cond_1
    const-string v0, "ALTER TABLE accounts ADD COLUMN _syncWithServer INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1530
    return-void
.end method


# virtual methods
.method public addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 1534
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 921
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 922
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 923
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createSearchSvrMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 924
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createSearchSvrPartsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 925
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 926
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createPartsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 927
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createTagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 928
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createMessagesTagsRelationTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 930
    const-string v0, "CREATE TABLE providers (_id INTEGER NOT NULL PRIMARY KEY,_provider TEXT NO NULL,_domain TEXT,_inprotocol INTEGER DEFAULT 0,_description TEXT,_resid INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 939
    const-string v0, "CREATE TABLE providersettings (_id INTEGER NOT NULL PRIMARY KEY,_provider TEXT NO NULL,_domain TEXT,_inserver TEXT,_inport INTEGER NO NULL,_outserver TEXT,_outport INTEGER NO NULL,_inprotocol INTEGER,_useSSLin INTEGER DEFAULT 1,_useSSLout INTEGER DEFAULT 1,_smtpauth INTEGER DEFAULT 1,_deleteNonExistMail INTEGER DEFAULT -1,_providerGroup TEXT DEFAULT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 956
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createMailBoxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 958
    invoke-static {p1}, Lcom/htc/android/mail/MailProvider;->createPendingRequestsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 961
    const-string v0, "CREATE TABLE easTracking (_id INTEGER NOT NULL PRIMARY KEY,_message INTEGER NOT NULL,_uid TEXT,_collectionId TEXT,_modify INTEGER DEFAULT 0,_delete INTEGER DEFAULT 0,_move INTEGER DEFAULT 0,_param TEXT,_meetingResp INTEGER DEFAULT 0,_calendarEventId INTEGER DEFAULT 0,_accountId INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 974
    const-string v0, "CREATE INDEX IDX_easTracking_uid ON easTracking (_uid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 975
    const-string v0, "CREATE INDEX IDX_easTracking_message ON easTracking (_message);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 976
    const-string v0, "CREATE INDEX IDX_easTracking_accountId ON easTracking (_accountId);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 983
    const-string v0, "CREATE TABLE notification (_id INTEGER NOT NULL PRIMARY KEY,_accountid INTEGER NOT NULL,_date INTEGER,_title TEXT,_desc TEXT,_type INTEGER,_messageid INTEGER,_number INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 995
    const-string v0, "CREATE TABLE email_history (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,data TEXT,label TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/android/mail/HtcMailCustomization;->reload(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1003
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 38
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    .line 1007
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading database from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 1010
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t upgrade to old schema from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1013
    :cond_1
    const/16 v4, 0x63

    move/from16 v0, p2

    if-gt v0, v4, :cond_7

    .line 1014
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "MailProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading database from version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", which will destroy all old data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_2
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/htc/android/mail/MailProvider$DatabaseHelper$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/android/mail/MailProvider$DatabaseHelper$1;-><init>(Lcom/htc/android/mail/MailProvider$DatabaseHelper;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1039
    const-string v4, "DROP TABLE IF EXISTS messages"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1040
    const-string v4, "DROP TABLE IF EXISTS parts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1042
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1043
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1046
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1048
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createMessageTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1049
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createPartsTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1051
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createSearchSvrMessageTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1052
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createSearchSvrPartsTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1054
    const-string v4, "DELETE FROM pending_requests"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1055
    const-string v4, "DELETE FROM notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1057
    const-string v4, "ALTER TABLE providersettings ADD COLUMN _smtpauth INTEGER DEFAULT 1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1061
    :try_start_0
    const-string v4, "ALTER TABLE easTracking ADD COLUMN _calendarEventId INTEGER DEFAULT 0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1067
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER TABLE accounts ADD COLUMN _refreshMailWhenOpenFolder INTEGER  DEFAULT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->refreshMailWhenOpenFolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1068
    const-string v4, "ALTER TABLE accounts RENAME TO accounts_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1069
    const-string v4, "DROP TRIGGER IF EXISTS delete_accounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1070
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createAccountTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1071
    const-string v4, "INSERT INTO accounts SELECT _id, _name, _emailaddress, _username, _outusername, _password, _outpassword, _desc, _protocol, _inserver, _inport, _outserver, _outport, _useSSLin, _useSSLout, _easDomain, _easSvrProtocol, _easHeartBeatInternal, _easDeviceID, _easDeviceType, _useSignature, _sizelimit, _poll_frequency_number, _fetchMailType, _fetchMailNum, _fetchMailDays, _previewLinesNumber, _fontSize, _deleteFromServer, _alwaysBccMyself, _askBeforeDelete, _enableSDsave, _smtpauth, _del, _signature, _nextfetchtime, _lastupdatetime, _emailnotifications, _vibrate, _sound, _provider, _providerid, _replyWithText, _refreshMailWhenOpenFolder, _defaultaccount, _defaultfolderId, _trashfolder, _trashfoldertext, _trashfolderId, _sentfolder, _sentfoldertext, _sentfolderId, _draftfolder, _draftfoldertext, _draftfolderId, _outfolderId, _flags, _sortby, _initalscale, AccountVerify FROM accounts_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1085
    const-string v4, "DROP TABLE IF EXISTS accounts_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1088
    const-string v4, "ALTER TABLE mailboxs RENAME TO mailboxs_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1089
    const-string v4, "DROP INDEX IF EXISTS IDX_mailboxs_accountId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1090
    const-string v4, "DROP TRIGGER IF EXISTS delete_mailboxs2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1091
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createMailBoxTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1092
    const-string v4, "INSERT INTO mailboxs SELECT * FROM mailboxs_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1093
    const-string v4, "DROP TABLE IF EXISTS mailboxs_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1095
    const-string v4, "UPDATE mailboxs set _defaultfolder = 2147483647 WHERE _defaultfolder = 1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1097
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_3

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x18

    if-ne v4, v5, :cond_4

    .line 1099
    :cond_3
    const-string v4, "UPDATE providersettings SET _inserver = \'android.imap.mail.yahoo.com\', _inport = \'993\', _outserver = \'android.smtp.mail.yahoo.com\', _outport = \'465\', _inprotocol = \'2\', _useSSLin = \'1\', _useSSLout = \'1\' WHERE _domain = \'yahoo.com\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1121
    :cond_4
    const-string v5, "accounts"

    const/4 v6, 0x0

    const-string v7, "_provider=\'Exchange\'"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1123
    .local v15, cur:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1127
    const-string v4, "DELETE FROM messages WHERE _account=(SELECT _id FROM accounts WHERE _provider=\'Exchange\')"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1128
    const-string v4, "DELETE FROM mailboxs WHERE _account=(SELECT _id FROM accounts WHERE _provider=\'Exchange\')"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1129
    const-string v4, "UPDATE accounts SET _easSvrProtocol = \'Unknown\' WHERE  _provider=\'Exchange\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1151
    const-wide/16 v19, -0x1

    .line 1152
    .local v19, easAccId:J
    const-string v4, "_emailaddress"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1153
    .local v22, emailAddress:Ljava/lang/String;
    const-string v4, "_inserver"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1154
    .local v31, serverName:Ljava/lang/String;
    const-string v4, "_username"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1155
    .local v35, username:Ljava/lang/String;
    const-string v4, "_easDomain"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1156
    .local v17, domain:Ljava/lang/String;
    const-string v4, "_password"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1157
    .local v23, encPassword:Ljava/lang/String;
    const-string v4, "_useSSLin"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    const/16 v34, 0x1

    .line 1158
    .local v34, useSSL:Z
    :goto_1
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v19

    .line 1160
    :try_start_2
    invoke-static/range {v23 .. v23}, Lcom/htc/android/mail/Account;->decodePwd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v29

    .line 1167
    .local v29, password:Ljava/lang/String;
    :goto_2
    :try_start_3
    new-instance v12, Landroid/accounts/Account;

    const-string v4, "com.htc.android.mail.eas"

    move-object/from16 v0, v22

    invoke-direct {v12, v0, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    .local v12, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v12, v0, v5}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1171
    const-string v4, "htceas"

    const/4 v5, 0x1

    invoke-static {v12, v4, v5}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v14

    .line 1174
    .local v14, client:Landroid/content/ContentProviderClient;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1175
    .local v16, cv:Landroid/content/ContentValues;
    const-string v4, "account_name"

    iget-object v5, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v4, "account_type"

    iget-object v5, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v4, "ungrouped_visible"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1178
    sget-object v4, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v14, v4, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1180
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->createEasDefaultMailbox(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1182
    new-instance v32, Landroid/content/Intent;

    const-string v4, "com.htc.android.mail.intent.enableSyncChange"

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v32, service:Landroid/content/Intent;
    const-string v4, "com.htc.android.mail"

    const-string v5, "com.htc.android.mail.eassvc.EASAppSvc"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    const-string v4, "EnableContact"

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1185
    const-string v4, "EnableCalendar"

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1186
    const-string v4, "EnableMail"

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1192
    .end local v12           #account:Landroid/accounts/Account;
    .end local v14           #client:Landroid/content/ContentProviderClient;
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v17           #domain:Ljava/lang/String;
    .end local v19           #easAccId:J
    .end local v22           #emailAddress:Ljava/lang/String;
    .end local v23           #encPassword:Ljava/lang/String;
    .end local v29           #password:Ljava/lang/String;
    .end local v31           #serverName:Ljava/lang/String;
    .end local v32           #service:Landroid/content/Intent;
    .end local v34           #useSSL:Z
    .end local v35           #username:Ljava/lang/String;
    :cond_5
    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1193
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1198
    :cond_6
    const/16 p2, 0x64

    .line 1201
    .end local v15           #cur:Landroid/database/Cursor;
    :cond_7
    const/16 v4, 0x64

    move/from16 v0, p2

    if-ne v0, v4, :cond_9

    .line 1203
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x18

    if-ne v4, v5, :cond_8

    .line 1205
    const-string v4, "ALTER TABLE mailboxs RENAME TO mailboxs_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1206
    const-string v4, "DROP INDEX IF EXISTS IDX_mailboxs_accountId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1207
    const-string v4, "DROP TRIGGER IF EXISTS delete_mailboxs2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1208
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createMailBoxTable_v100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1209
    const-string v4, "INSERT INTO mailboxs SELECT * FROM mailboxs_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1210
    const-string v4, "DROP TABLE IF EXISTS mailboxs_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1212
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 1215
    :cond_9
    const/16 v4, 0x65

    move/from16 v0, p2

    if-ne v0, v4, :cond_b

    .line 1218
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x9

    if-eq v4, v5, :cond_a

    .line 1220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER TABLE accounts ADD COLUMN _peakdays INTEGER DEFAULT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->peakDays:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER TABLE accounts ADD COLUMN _peaktimestart INTEGER DEFAULT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->peakTimeStart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER TABLE accounts ADD COLUMN _peaktimeend INTEGER DEFAULT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->peakTimeEnd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER TABLE accounts ADD COLUMN _peakonfrequency INTEGER DEFAULT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER TABLE accounts ADD COLUMN _peakofffrequency INTEGER DEFAULT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->syncSchedulePeakOff:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1225
    const-string v4, "ALTER TABLE accounts RENAME TO accounts_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1226
    const-string v4, "DROP TRIGGER IF EXISTS delete_accounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1227
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createAccountTable_v101(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1228
    const-string v4, "INSERT INTO accounts SELECT _id, _name, _emailaddress, _username, _outusername, _password, _outpassword, _desc, _protocol, _inserver, _inport, _outserver, _outport, _useSSLin, _useSSLout, _easDomain, _easSvrProtocol, _easHeartBeatInternal, _easDeviceID, _easDeviceType, _useSignature, _sizelimit, _poll_frequency_number, _fetchMailType, _fetchMailNum, _fetchMailDays, _previewLinesNumber, _fontSize, _deleteFromServer, _alwaysBccMyself, _askBeforeDelete, _enableSDsave, _smtpauth, _del, _signature, _nextfetchtime, _lastupdatetime, _emailnotifications, _vibrate, _sound, _provider, _providerid, _replyWithText, _refreshMailWhenOpenFolder, _defaultaccount, _defaultfolderId, _trashfolder, _trashfoldertext, _trashfolderId, _sentfolder, _sentfoldertext, _sentfolderId, _draftfolder, _draftfoldertext, _draftfolderId, _outfolderId, _flags, _sortby, _initalscale, _peakdays, _peaktimestart, _peaktimeend, _peakonfrequency, _peakofffrequency, AccountVerify FROM accounts_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1243
    const-string v4, "DROP TABLE IF EXISTS accounts_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1246
    :cond_a
    const-string v4, "UPDATE accounts SET _peakonfrequency = _poll_frequency_number, _peakofffrequency = _poll_frequency_number"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1248
    add-int/lit8 p2, p2, 0x1

    .line 1251
    :cond_b
    const/16 v4, 0x66

    move/from16 v0, p2

    if-ne v0, v4, :cond_c

    .line 1252
    const-string v4, "ALTER TABLE accounts ADD COLUMN _contactGroup TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1253
    add-int/lit8 p2, p2, 0x1

    .line 1256
    :cond_c
    const/16 v4, 0x67

    move/from16 v0, p2

    if-ne v0, v4, :cond_d

    .line 1257
    const-string v4, "ALTER TABLE providersettings ADD COLUMN _deleteNonExistMail INTEGER DEFAULT -1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1258
    add-int/lit8 p2, p2, 0x1

    .line 1261
    :cond_d
    const/16 v4, 0x68

    move/from16 v0, p2

    if-ne v0, v4, :cond_e

    .line 1262
    const-string v4, "ALTER TABLE messages ADD COLUMN _replyTo TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1263
    add-int/lit8 p2, p2, 0x1

    .line 1266
    :cond_e
    const/16 v4, 0x69

    move/from16 v0, p2

    if-ne v0, v4, :cond_f

    .line 1267
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->upgrade_to_version_106(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1268
    add-int/lit8 p2, p2, 0x1

    .line 1271
    :cond_f
    const/16 v4, 0x6a

    move/from16 v0, p2

    if-ne v0, v4, :cond_11

    .line 1277
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_10

    .line 1278
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->upgrade_to_version_106(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1280
    :cond_10
    const-string v4, "ALTER TABLE accounts ADD COLUMN _colorIdx INTEGER DEFAULT 0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1281
    add-int/lit8 p2, p2, 0x1

    .line 1284
    :cond_11
    const/16 v4, 0x6b

    move/from16 v0, p2

    if-ne v0, v4, :cond_12

    .line 1285
    const-string v4, "ALTER TABLE searchSvrMessages ADD COLUMN _replyTo TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1286
    add-int/lit8 p2, p2, 0x1

    .line 1289
    :cond_12
    const/16 v4, 0x6c

    move/from16 v0, p2

    if-ne v0, v4, :cond_13

    .line 1290
    const-string v4, "ALTER TABLE accounts ADD COLUMN _downloadMessageWhenScroll INTEGER DEFAULT 1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1291
    add-int/lit8 p2, p2, 0x1

    .line 1294
    :cond_13
    const/16 v4, 0x6d

    move/from16 v0, p2

    if-ne v0, v4, :cond_14

    .line 1297
    :try_start_4
    const-string v4, "ALTER TABLE accounts ADD COLUMN _syncWithServer INTEGER DEFAULT 0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1301
    :goto_4
    add-int/lit8 p2, p2, 0x1

    .line 1304
    :cond_14
    const/16 v4, 0x6e

    move/from16 v0, p2

    if-ne v0, v4, :cond_1d

    .line 1306
    :try_start_5
    const-string v4, "ALTER TABLE accounts ADD COLUMN _providerGroup TEXT DEFAULT NULL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1307
    const-string v4, "ALTER TABLE providersettings ADD COLUMN _providerGroup TEXT DEFAULT NULL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1312
    :goto_5
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_provider IN (\'%s\', \'%s\')"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Exchange"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "Gmail"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 1313
    .local v36, where:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE accounts SET _providerGroup = _provider WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1315
    const-string v5, "accounts"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id, _providerGroup"

    aput-object v7, v6, v4

    const-string v7, "_del = -1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "_id asc"

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1316
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_1c

    .line 1318
    const/16 v21, 0x0

    .line 1319
    .local v21, easExist:Z
    const/16 v25, 0x0

    .line 1320
    .local v25, gmailExist:Z
    const/16 v37, 0x0

    .line 1321
    .local v37, yahooExist:Z
    const/16 v26, 0x0

    .line 1322
    .local v26, i:I
    :goto_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1323
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 1324
    .local v27, id:J
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1325
    .local v30, providerGroup:Ljava/lang/String;
    if-eqz v30, :cond_1a

    .line 1326
    if-nez v21, :cond_17

    const-string v4, "Exchange"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1327
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v24

    .line 1328
    .local v24, encodedColorIdx:I
    const/16 v21, 0x1

    .line 1344
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE accounts SET _colorIdx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_6

    .line 1157
    .end local v13           #c:Landroid/database/Cursor;
    .end local v21           #easExist:Z
    .end local v24           #encodedColorIdx:I
    .end local v25           #gmailExist:Z
    .end local v26           #i:I
    .end local v27           #id:J
    .end local v30           #providerGroup:Ljava/lang/String;
    .end local v36           #where:Ljava/lang/String;
    .end local v37           #yahooExist:Z
    .restart local v15       #cur:Landroid/database/Cursor;
    .restart local v17       #domain:Ljava/lang/String;
    .restart local v19       #easAccId:J
    .restart local v22       #emailAddress:Ljava/lang/String;
    .restart local v23       #encPassword:Ljava/lang/String;
    .restart local v31       #serverName:Ljava/lang/String;
    .restart local v35       #username:Ljava/lang/String;
    :cond_15
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 1161
    .restart local v34       #useSSL:Z
    :catch_0
    move-exception v33

    .line 1162
    .local v33, uee:Ljava/lang/Exception;
    const/16 v29, 0x0

    .line 1163
    .restart local v29       #password:Ljava/lang/String;
    :try_start_6
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1189
    .end local v17           #domain:Ljava/lang/String;
    .end local v19           #easAccId:J
    .end local v22           #emailAddress:Ljava/lang/String;
    .end local v23           #encPassword:Ljava/lang/String;
    .end local v29           #password:Ljava/lang/String;
    .end local v31           #serverName:Ljava/lang/String;
    .end local v33           #uee:Ljava/lang/Exception;
    .end local v34           #useSSL:Z
    .end local v35           #username:Ljava/lang/String;
    :catch_1
    move-exception v18

    .line 1190
    .local v18, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1192
    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_3

    .end local v18           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v15, :cond_16

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_16

    .line 1193
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1192
    :cond_16
    throw v4

    .line 1329
    .end local v15           #cur:Landroid/database/Cursor;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v21       #easExist:Z
    .restart local v25       #gmailExist:Z
    .restart local v26       #i:I
    .restart local v27       #id:J
    .restart local v30       #providerGroup:Ljava/lang/String;
    .restart local v36       #where:Ljava/lang/String;
    .restart local v37       #yahooExist:Z
    :cond_17
    if-nez v25, :cond_18

    const-string v4, "Gmail"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1330
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v24

    .line 1331
    .restart local v24       #encodedColorIdx:I
    const/16 v25, 0x1

    goto :goto_7

    .line 1332
    .end local v24           #encodedColorIdx:I
    :cond_18
    if-nez v37, :cond_19

    const-string v4, "Yahoo"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1333
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v24

    .line 1334
    .restart local v24       #encodedColorIdx:I
    const/16 v37, 0x1

    goto/16 :goto_7

    .line 1336
    .end local v24           #encodedColorIdx:I
    :cond_19
    const/4 v4, 0x1

    rem-int/lit8 v5, v26, 0x10

    invoke-static {v4, v5}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v24

    .line 1337
    .restart local v24       #encodedColorIdx:I
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_7

    .line 1340
    .end local v24           #encodedColorIdx:I
    :cond_1a
    const/4 v4, 0x1

    rem-int/lit8 v5, v26, 0x10

    invoke-static {v4, v5}, Lcom/htc/android/mail/Account;->getEncodedColorIdx(II)I

    move-result v24

    .line 1341
    .restart local v24       #encodedColorIdx:I
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_7

    .line 1346
    .end local v24           #encodedColorIdx:I
    .end local v27           #id:J
    .end local v30           #providerGroup:Ljava/lang/String;
    :cond_1b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1349
    .end local v21           #easExist:Z
    .end local v25           #gmailExist:Z
    .end local v26           #i:I
    .end local v37           #yahooExist:Z
    :cond_1c
    add-int/lit8 p2, p2, 0x1

    .line 1352
    .end local v13           #c:Landroid/database/Cursor;
    .end local v36           #where:Ljava/lang/String;
    :cond_1d
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-ne v0, v4, :cond_1f

    .line 1354
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x93

    if-eq v4, v5, :cond_1e

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_1e

    .line 1357
    const-string v4, "ALTER TABLE messages RENAME TO messages_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1358
    const-string v4, "DROP INDEX IF EXISTS IDX_messages_accountId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1359
    const-string v4, "DROP INDEX IF EXISTS IDX_messages_uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1360
    const-string v4, "DROP INDEX IF EXISTS IDX_messages_mailboxId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1361
    const-string v4, "DROP INDEX IF EXISTS IDX_messages_del"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1362
    const-string v4, "DROP INDEX IF EXISTS IDX_messages_internaldate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1363
    const-string v4, "DROP INDEX IF EXISTS IDX_messages_messageId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1364
    const-string v4, "DROP INDEX IF EXISTS IDX_messages_read"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1365
    const-string v4, "DROP INDEX IF EXISTS IDX_messages_globalObjId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1366
    const-string v4, "DROP INDEX IF EXISTS IDX_messages_fromEmail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1367
    const-string v4, "DROP INDEX IF EXISTS IDX_messages_group"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1368
    const-string v4, "DROP TRIGGER IF EXISTS delete_message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1369
    const-string v4, "DROP TRIGGER IF EXISTS insert_message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1370
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createMessageTable_v112(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1371
    const-string v4, "INSERT INTO messages SELECT * FROM messages_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1372
    const-string v4, "DROP TABLE IF EXISTS messages_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1375
    const-string v4, "ALTER TABLE searchSvrMessages RENAME TO searchSvrMessages_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1376
    const-string v4, "DROP INDEX IF EXISTS IDX_searchSvrMessages_accountId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1377
    const-string v4, "DROP INDEX IF EXISTS IDX_searchSvrMessages_uid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1378
    const-string v4, "DROP INDEX IF EXISTS IDX_searchSvrMessages_mailboxId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1379
    const-string v4, "DROP INDEX IF EXISTS IDX_searchSvrMessages_del"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1380
    const-string v4, "DROP INDEX IF EXISTS IDX_searchSvrMessages_internaldate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1381
    const-string v4, "DROP INDEX IF EXISTS IDX_searchSvrMessages_messageId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1382
    const-string v4, "DROP INDEX IF EXISTS IDX_searchSvrMessages_read"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1383
    const-string v4, "DROP INDEX IF EXISTS IDX_searchSvrMessages_globalObjId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1384
    const-string v4, "DROP INDEX IF EXISTS IDX_searchSvrMessages_fromEmail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1385
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createSearchSvrMessageTable_v112(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1386
    const-string v4, "INSERT INTO searchSvrMessages SELECT * FROM searchSvrMessages_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1387
    const-string v4, "DROP TABLE IF EXISTS searchSvrMessages_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1390
    :cond_1e
    add-int/lit8 p2, p2, 0x1

    .line 1393
    :cond_1f
    const/16 v4, 0x70

    move/from16 v0, p2

    if-ne v0, v4, :cond_20

    .line 1394
    const-string v4, "ALTER TABLE mailboxs ADD COLUMN _default_sync INTEGER DEFAULT 0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1395
    const-string v4, "UPDATE mailboxs SET _default_sync = 1 WHERE _defaultfolder = 2147483647"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1396
    add-int/lit8 p2, p2, 0x1

    .line 1399
    :cond_20
    const/16 v4, 0x71

    move/from16 v0, p2

    if-ne v0, v4, :cond_21

    .line 1400
    const-string v4, "ALTER TABLE mailboxs RENAME TO mailboxs_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1401
    const-string v4, "DROP INDEX IF EXISTS IDX_mailboxs_accountId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1402
    const-string v4, "DROP TRIGGER IF EXISTS delete_mailboxs2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1403
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createMailBoxTable_v114(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1404
    const-string v4, "INSERT INTO mailboxs SELECT * FROM mailboxs_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1405
    const-string v4, "DROP TABLE IF EXISTS mailboxs_tmp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1406
    add-int/lit8 p2, p2, 0x1

    .line 1409
    :cond_21
    const/16 v4, 0x72

    move/from16 v0, p2

    if-ne v0, v4, :cond_22

    .line 1410
    const-string v4, "ALTER TABLE notification ADD COLUMN _number INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1411
    add-int/lit8 p2, p2, 0x1

    .line 1414
    :cond_22
    const/16 v4, 0x73

    move/from16 v0, p2

    if-ne v0, v4, :cond_23

    .line 1415
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->checkMailInSystemAccount(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1416
    const-string v4, "ALTER TABLE messages ADD COLUMN _retryCount INTEGER DEFAULT 0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1418
    const-string v4, "UPDATE mailboxs SET _default_sync = 1 WHERE _defaultfolder = 2147483647"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1419
    add-int/lit8 p2, p2, 0x1

    .line 1422
    :cond_23
    const/16 v4, 0x74

    move/from16 v0, p2

    if-ne v0, v4, :cond_24

    .line 1425
    const-string v4, "ALTER TABLE mailboxs ADD COLUMN _uidvalidity TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1428
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createTagsTable_v117(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1429
    invoke-static/range {p1 .. p1}, Lcom/htc/android/mail/MailProvider;->createMessagesTagsRelationTable_v117(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1431
    const-string v4, "CREATE TRIGGER IF NOT EXISTS delete_tags_from_messageId BEFORE DELETE ON messages BEGIN DELETE FROM  messages_tags_relation WHERE old._id = _messageId; END;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1438
    add-int/lit8 p2, p2, 0x1

    .line 1441
    :cond_24
    const/16 v4, 0x75

    move/from16 v0, p2

    if-ne v0, v4, :cond_25

    .line 1442
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1443
    const-string v4, "UPDATE accounts SET _peakdays = 127 WHERE _peakdays = 31 AND _protocol = 6"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1444
    const-string v4, "UPDATE accounts SET _peaktimeend = 0 WHERE _peaktimeend IN (1200, 1260) AND _protocol = 6"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1445
    const-string v4, "UPDATE accounts SET _peaktimestart = 300 WHERE _peaktimestart = 480 AND _protocol = 6"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1446
    const-string v4, "UPDATE accounts SET _peakofffrequency = 9 WHERE _peakofffrequency = 3 AND _protocol = 6"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1450
    :goto_8
    add-int/lit8 p2, p2, 0x1

    .line 1452
    :cond_25
    return-void

    .line 1448
    :cond_26
    invoke-direct/range {p0 .. p1}, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->addAutoIncrementToPendingRequestsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_8

    .line 1308
    :catch_2
    move-exception v4

    goto/16 :goto_5

    .line 1298
    :catch_3
    move-exception v4

    goto/16 :goto_4

    .line 1062
    :catch_4
    move-exception v4

    goto/16 :goto_0
.end method
