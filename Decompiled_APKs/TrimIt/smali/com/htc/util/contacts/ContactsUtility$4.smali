.class final Lcom/htc/util/contacts/ContactsUtility$4;
.super Ljava/lang/Object;
.source "ContactsUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility;->importToMyContact(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lContactId:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/util/contacts/ContactsUtility$4;->val$lContactId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 43

    .prologue
    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v8

    .line 1492
    .local v8, bMyContactIds:Landroid/os/Bundle;
    if-nez v8, :cond_0

    .line 1651
    :goto_0
    return-void

    .line 1493
    :cond_0
    const-string v2, "contact_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v8, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v28

    .line 1494
    .local v28, lMyContactId:J
    const-string v2, "_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v8, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    .line 1495
    .local v30, lMyRawContactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v28

    if-gez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v30

    if-ltz v2, :cond_2

    .line 1496
    :cond_1
    const-string v2, "ContactsUtility"

    const-string v3, "importToMyContact (0 >= lMyContactId || 0 >= lMyRawContactId) return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1499
    :cond_2
    const/16 v27, 0x0

    .line 1500
    .local v27, iteratorMy:Landroid/content/EntityIterator;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    .local v17, entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v27

    .line 1504
    :goto_1
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1505
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1508
    :catchall_0
    move-exception v2

    if-eqz v27, :cond_3

    .line 1509
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->close()V

    .line 1510
    const/16 v27, 0x0

    :cond_3
    throw v2

    .line 1508
    :cond_4
    if-eqz v27, :cond_5

    .line 1509
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->close()V

    .line 1510
    const/16 v27, 0x0

    .line 1513
    :cond_5
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importToMyContact entitiesMy.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    const/16 v19, 0x0

    .line 1515
    .local v19, entityMy:Landroid/content/Entity;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1516
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #entityMy:Landroid/content/Entity;
    check-cast v19, Landroid/content/Entity;

    .line 1519
    .restart local v19       #entityMy:Landroid/content/Entity;
    :cond_6
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->queryEditableAccount()Ljava/util/ArrayList;

    move-result-object v14

    .line 1521
    .local v14, editableAccount:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v26, 0x0

    .line 1522
    .local v26, iterator:Landroid/content/EntityIterator;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1524
    .local v16, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :try_start_1
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 1525
    .local v40, sbSelection:Ljava/lang/StringBuilder;
    const-string v2, " ( "

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    const-string v2, " ( "

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    const-string v2, "contact_id"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    const-string v2, " = "

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1529
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$lContactId:J

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1530
    const-string v2, " ) "

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    const-string v2, " AND "

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    const-string v2, "account_type"

    invoke-static {v2, v14}, Lcom/htc/util/contacts/ContactsUtility;->getOrString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    const-string v2, " ) "

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v26

    .line 1537
    :goto_2
    invoke-interface/range {v26 .. v26}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1538
    invoke-interface/range {v26 .. v26}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 1541
    .end local v40           #sbSelection:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v2

    if-eqz v26, :cond_7

    .line 1542
    invoke-interface/range {v26 .. v26}, Landroid/content/EntityIterator;->close()V

    .line 1543
    const/16 v26, 0x0

    :cond_7
    throw v2

    .line 1541
    .restart local v40       #sbSelection:Ljava/lang/StringBuilder;
    :cond_8
    if-eqz v26, :cond_9

    .line 1542
    invoke-interface/range {v26 .. v26}, Landroid/content/EntityIterator;->close()V

    .line 1543
    const/16 v26, 0x0

    .line 1547
    :cond_9
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    .local v36, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v35, 0x0

    .line 1549
    .local v35, operation:Landroid/content/ContentProviderOperation;
    const/4 v9, 0x0

    .line 1550
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Entity;

    .line 1551
    .local v18, entity:Landroid/content/Entity;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v15

    .line 1553
    .local v15, entValues:Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    .line 1554
    .local v37, rawContactId:J
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importToMyContact rawContactId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v37

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    invoke-virtual/range {v18 .. v18}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_b
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/Entity$NamedContentValues;

    .line 1556
    .local v41, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    .line 1559
    .local v20, entryValues:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1560
    .local v33, mimetype:Ljava/lang/String;
    if-eqz v33, :cond_b

    .line 1561
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importToMyContact mimetype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const/16 v35, 0x0

    .line 1563
    const/4 v9, 0x0

    .line 1564
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/im"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/note"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "vnd.android.cursor.item/website"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1575
    :cond_c
    invoke-static/range {v19 .. v20}, Lcom/htc/util/contacts/ContactsUtility;->isDuplicate(Landroid/content/Entity;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1578
    invoke-static/range {v20 .. v20}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v32

    .line 1579
    .local v32, mimeTypeValues:Landroid/content/ContentValues;
    if-eqz v32, :cond_b

    .line 1580
    const-string v2, "raw_contact_id"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1581
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1582
    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1583
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v35

    .line 1584
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1586
    .end local v32           #mimeTypeValues:Landroid/content/ContentValues;
    :cond_d
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1587
    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isContainMimeType(Landroid/content/Entity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1588
    invoke-static/range {v20 .. v20}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v32

    .line 1589
    .restart local v32       #mimeTypeValues:Landroid/content/ContentValues;
    if-eqz v32, :cond_b

    .line 1590
    const-string v2, "raw_contact_id"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1591
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1592
    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1593
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v35

    .line 1594
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1597
    .end local v32           #mimeTypeValues:Landroid/content/ContentValues;
    :cond_e
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1598
    invoke-static/range {v20 .. v20}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v32

    .line 1599
    .restart local v32       #mimeTypeValues:Landroid/content/ContentValues;
    move-object/from16 v0, v19

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isContainMimeType(Landroid/content/Entity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1600
    const-string v2, "raw_contact_id"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1601
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1602
    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1603
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v35

    .line 1604
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1606
    :cond_f
    invoke-virtual/range {v19 .. v19}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/Entity$NamedContentValues;

    .line 1607
    .local v42, subValueMy:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    .line 1608
    .local v21, entryValuesMy:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1609
    .local v34, mimetypeMy:Ljava/lang/String;
    if-eqz v34, :cond_10

    .line 1610
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1611
    const-string v2, "data1"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1612
    .local v12, dispalyNameMy:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1613
    const-string v2, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_11

    const-string v2, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1614
    .local v10, dataId:J
    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v10

    if-gez v2, :cond_10

    .line 1615
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1619
    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1620
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v35

    .line 1621
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1613
    .end local v10           #dataId:J
    :cond_11
    const-wide/16 v10, -0x1

    goto :goto_5

    .line 1642
    .end local v12           #dispalyNameMy:Ljava/lang/String;
    .end local v15           #entValues:Landroid/content/ContentValues;
    .end local v18           #entity:Landroid/content/Entity;
    .end local v20           #entryValues:Landroid/content/ContentValues;
    .end local v21           #entryValuesMy:Landroid/content/ContentValues;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v32           #mimeTypeValues:Landroid/content/ContentValues;
    .end local v33           #mimetype:Ljava/lang/String;
    .end local v34           #mimetypeMy:Ljava/lang/String;
    .end local v37           #rawContactId:J
    .end local v41           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v42           #subValueMy:Landroid/content/Entity$NamedContentValues;
    :cond_12
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v36

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v39

    .line 1643
    .local v39, results:[Landroid/content/ContentProviderResult;
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importToMyContact results: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    new-instance v25, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.MY_CONTACT_CHANGE"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v25, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1646
    .end local v25           #intent:Landroid/content/Intent;
    .end local v39           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v13

    .line 1647
    .local v13, e:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1648
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 1649
    .local v13, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
