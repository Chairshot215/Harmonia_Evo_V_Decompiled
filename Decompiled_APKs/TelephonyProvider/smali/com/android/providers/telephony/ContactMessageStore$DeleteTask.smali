.class Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;
.super Landroid/os/AsyncTask;
.source "ContactMessageStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ContactMessageStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field idsMMS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field idsSMS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/telephony/ContactMessageStore;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/ContactMessageStore;)V
    .locals 1
    .parameter

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->idsMMS:Ljava/util/ArrayList;

    .line 1486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->idsSMS:Ljava/util/ArrayList;

    .line 1487
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/telephony/ContactMessageStore;->access$702(Z)Z

    .line 1488
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1480
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "v"

    .prologue
    .line 1502
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$800()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1503
    const-string v1, "ContactMessageStore"

    const-string v2, "mOpenHelper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$602(Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;)Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    .line 1505
    const/4 v1, 0x0

    .line 1602
    :goto_0
    return-object v1

    .line 1508
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$800()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1509
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v12, 0x0

    .line 1511
    .local v12, messageId:J
    const-string v1, "ContactMessageStore"

    const-string v2, "start background delete task..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->startCSSync()V

    .line 1516
    :try_start_0
    const-string v1, "pdu"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "thread_id=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1517
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 1518
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1519
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1520
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1521
    const-string v1, "ContactMessageStore"

    const-string v2, "Background delete interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->stopCSSync()V

    .line 1523
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$602(Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;)Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    .line 1524
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1525
    const/4 v1, 0x0

    goto :goto_0

    .line 1528
    :cond_1
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->idsMMS:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1533
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1534
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1538
    .end local v9           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    :try_start_1
    const-string v1, "sms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "thread_id=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1539
    .restart local v8       #cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 1540
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 1541
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1542
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$700()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1543
    const-string v1, "ContactMessageStore"

    const-string v2, "Background delete interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->stopCSSync()V

    .line 1545
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$602(Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;)Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    .line 1546
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1547
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1531
    :cond_3
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1550
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->idsSMS:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1555
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v9

    .line 1556
    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1559
    .end local v9           #e:Ljava/lang/Exception;
    :cond_5
    :goto_4
    const-string v1, "ContactMessageStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->idsMMS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->idsSMS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->idsMMS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_8

    .line 1562
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->idsMMS:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1563
    const-string v1, "ContactMessageStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting pdu("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :try_start_4
    const-string v1, "mid = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/providers/telephony/MmsProvider;->deleteParts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1566
    const-string v1, "pdu"

    const-string v2, " _id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteAbortException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1570
    :goto_6
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$700()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1571
    const-string v1, "ContactMessageStore"

    const-string v2, "Background delete interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->stopCSSync()V

    .line 1573
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$602(Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;)Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    .line 1574
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1553
    .end local v10           #i:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_6
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 1567
    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v10       #i:I
    :catch_2
    move-exception v9

    .line 1568
    .local v9, e:Landroid/database/sqlite/SQLiteAbortException;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteAbortException;->printStackTrace()V

    goto :goto_6

    .line 1577
    .end local v9           #e:Landroid/database/sqlite/SQLiteAbortException;
    :cond_7
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1561
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1580
    :cond_8
    const/4 v11, 0x0

    .local v11, j:I
    :goto_7
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->idsSMS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_a

    .line 1581
    iget-object v1, p0, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->idsSMS:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1582
    const-string v1, "ContactMessageStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting sms("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :try_start_6
    const-string v1, "sms"

    const-string v2, " _id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteAbortException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1588
    :goto_8
    invoke-static {}, Lcom/android/providers/telephony/ContactMessageStore;->access$700()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1589
    const-string v1, "ContactMessageStore"

    const-string v2, "Background delete interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->stopCSSync()V

    .line 1591
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$602(Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;)Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    .line 1592
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1585
    :catch_3
    move-exception v9

    .line 1586
    .restart local v9       #e:Landroid/database/sqlite/SQLiteAbortException;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteAbortException;->printStackTrace()V

    goto :goto_8

    .line 1595
    .end local v9           #e:Landroid/database/sqlite/SQLiteAbortException;
    :cond_9
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1580
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1598
    :cond_a
    invoke-virtual {p0}, Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;->stopCSSync()V

    .line 1600
    const-string v1, "ContactMessageStore"

    const-string v2, "Background delete complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/telephony/ContactMessageStore;->access$602(Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;)Lcom/android/providers/telephony/ContactMessageStore$DeleteTask;

    .line 1602
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method protected startCSSync()V
    .locals 0

    .prologue
    .line 1493
    return-void
.end method

.method protected stopCSSync()V
    .locals 0

    .prologue
    .line 1498
    return-void
.end method
