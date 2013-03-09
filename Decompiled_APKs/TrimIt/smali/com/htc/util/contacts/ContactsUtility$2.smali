.class final Lcom/htc/util/contacts/ContactsUtility$2;
.super Ljava/lang/Object;
.source "ContactsUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility;->importCsAccountInfoToMyContact(Landroid/content/Context;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$account:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$account:Landroid/accounts/Account;

    iget-object v12, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1288
    .local v12, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/cscore/util/CSUtil;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 1289
    .local v11, csPhoneNumber:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    const/16 v17, 0x0

    .line 1293
    .local v17, insertSuccess:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v10

    .line 1294
    .local v10, bMyContactIds:Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 1295
    const-string v2, "contact_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 1296
    .local v22, lMyContactId:J
    const-string v2, "_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    .line 1297
    .local v24, lMyRawContactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v22

    if-gez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v24

    if-ltz v2, :cond_3

    .line 1298
    :cond_2
    const-string v2, "ContactsUtility"

    const-string v3, "importCsAccountInfoToMyContact (0 >= lMyContactId || 0 >= lMyRawContactId) return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1301
    :cond_3
    const/16 v21, 0x0

    .line 1302
    .local v21, iteratorMy:Landroid/content/EntityIterator;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .local v14, entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v21

    .line 1306
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1307
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1310
    :catchall_0
    move-exception v2

    if-eqz v21, :cond_4

    .line 1311
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->close()V

    .line 1312
    const/16 v21, 0x0

    :cond_4
    throw v2

    .line 1310
    :cond_5
    if-eqz v21, :cond_6

    .line 1311
    invoke-interface/range {v21 .. v21}, Landroid/content/EntityIterator;->close()V

    .line 1312
    const/16 v21, 0x0

    .line 1315
    :cond_6
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importCsAccountInfoToMyContact entitiesMy.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    move-object v15, v2

    .line 1319
    .local v15, entityMy:Landroid/content/Entity;
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1320
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-static {v15, v2}, Lcom/htc/util/contacts/ContactsUtility;->getContentValues(Landroid/content/Entity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v28

    .line 1321
    .local v28, myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .line 1322
    .local v9, bDuplicate:Z
    const-wide/16 v26, 0x0

    .line 1323
    .local v26, lSocialnetworkType:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v18

    .line 1324
    .local v18, insertedAccountType:J
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/ContentValues;

    .line 1326
    .local v32, v:Landroid/content/ContentValues;
    const-string v2, "data1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1327
    const-wide/high16 v2, 0x400c

    invoke-static {v2, v3}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1328
    const/4 v9, 0x1

    .line 1346
    .end local v32           #v:Landroid/content/ContentValues;
    :cond_8
    :goto_3
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importCsAccountInfoToMyContact email bDuplicate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    if-nez v9, :cond_9

    .line 1348
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1349
    .local v13, emailValues:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1350
    const-string v2, "data1"

    invoke-virtual {v13, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const-wide/high16 v2, 0x400c

    invoke-static {v2, v3}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1358
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    .line 1359
    .local v31, uriResult:Landroid/net/Uri;
    if-eqz v31, :cond_9

    .line 1360
    const/16 v17, 0x1

    .line 1366
    .end local v9           #bDuplicate:Z
    .end local v13           #emailValues:Landroid/content/ContentValues;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #insertedAccountType:J
    .end local v26           #lSocialnetworkType:J
    .end local v28           #myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v31           #uriResult:Landroid/net/Uri;
    :cond_9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1367
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-static {v15, v2}, Lcom/htc/util/contacts/ContactsUtility;->getContentValues(Landroid/content/Entity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v29

    .line 1368
    .local v29, myPhoneContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .line 1369
    .restart local v9       #bDuplicate:Z
    const-wide/16 v26, 0x0

    .line 1370
    .restart local v26       #lSocialnetworkType:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v18

    .line 1371
    .restart local v18       #insertedAccountType:J
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/ContentValues;

    .line 1373
    .restart local v32       #v:Landroid/content/ContentValues;
    const-string v2, "data1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1374
    const-wide/high16 v2, 0x400c

    invoke-static {v2, v3}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1375
    const/4 v9, 0x1

    .line 1393
    .end local v32           #v:Landroid/content/ContentValues;
    :cond_b
    :goto_5
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importCsAccountInfoToMyContact phone bDuplicate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    if-nez v9, :cond_c

    .line 1395
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 1396
    .local v30, phoneValues:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1397
    const-string v2, "data1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v2, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    .line 1401
    .restart local v31       #uriResult:Landroid/net/Uri;
    if-eqz v31, :cond_c

    .line 1402
    const/16 v17, 0x1

    .line 1407
    .end local v9           #bDuplicate:Z
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #insertedAccountType:J
    .end local v26           #lSocialnetworkType:J
    .end local v29           #myPhoneContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v30           #phoneValues:Landroid/content/ContentValues;
    .end local v31           #uriResult:Landroid/net/Uri;
    :cond_c
    if-eqz v17, :cond_0

    .line 1408
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.MY_CONTACT_CHANGE"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1409
    .local v20, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$context:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1316
    .end local v15           #entityMy:Landroid/content/Entity;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1331
    .restart local v9       #bDuplicate:Z
    .restart local v15       #entityMy:Landroid/content/Entity;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v18       #insertedAccountType:J
    .restart local v26       #lSocialnetworkType:J
    .restart local v28       #myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v32       #v:Landroid/content/ContentValues;
    :cond_e
    const-string v2, "data7"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 1332
    .local v8, LSocialnetworkType:Ljava/lang/Long;
    if-eqz v8, :cond_f

    .line 1333
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 1337
    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v26

    if-nez v2, :cond_7

    .line 1338
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v18

    if-nez v2, :cond_7

    .line 1339
    const/4 v9, 0x1

    .line 1340
    goto/16 :goto_3

    .line 1335
    :cond_f
    const-wide/16 v26, 0x0

    goto :goto_6

    .line 1356
    .end local v8           #LSocialnetworkType:Ljava/lang/Long;
    .end local v32           #v:Landroid/content/ContentValues;
    .restart local v13       #emailValues:Landroid/content/ContentValues;
    :cond_10
    const-string v2, "data7"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/contacts/ContactsUtility$2;->val$account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_4

    .line 1378
    .end local v13           #emailValues:Landroid/content/ContentValues;
    .end local v28           #myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v29       #myPhoneContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v32       #v:Landroid/content/ContentValues;
    :cond_11
    const-string v2, "data8"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 1379
    .restart local v8       #LSocialnetworkType:Ljava/lang/Long;
    if-eqz v8, :cond_12

    .line 1380
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 1384
    :goto_7
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v26

    if-nez v2, :cond_a

    .line 1385
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v18

    if-nez v2, :cond_a

    .line 1386
    const/4 v9, 0x1

    .line 1387
    goto/16 :goto_5

    .line 1382
    :cond_12
    const-wide/16 v26, 0x0

    goto :goto_7
.end method
