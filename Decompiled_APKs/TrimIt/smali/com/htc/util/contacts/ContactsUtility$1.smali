.class final Lcom/htc/util/contacts/ContactsUtility$1;
.super Ljava/lang/Object;
.source "ContactsUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility;->importAccountEmailToMyContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/util/contacts/ContactsUtility$1;->val$accountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/util/contacts/ContactsUtility$1;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v10

    .line 1199
    .local v10, bMyContactIds:Landroid/os/Bundle;
    if-nez v10, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    const-string v2, "contact_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 1201
    .local v19, lMyContactId:J
    const-string v2, "_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 1202
    .local v21, lMyRawContactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v19

    if-gez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v21

    if-ltz v2, :cond_3

    .line 1203
    :cond_2
    const-string v2, "ContactsUtility"

    const-string v3, "importAccountEmailToMyContact (0 >= lMyContactId || 0 >= lMyRawContactId) return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1206
    :cond_3
    const/16 v18, 0x0

    .line 1207
    .local v18, iteratorMy:Landroid/content/EntityIterator;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    .local v12, entitiesMy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v18

    .line 1211
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1212
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1215
    :catchall_0
    move-exception v2

    if-eqz v18, :cond_4

    .line 1216
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->close()V

    .line 1217
    const/16 v18, 0x0

    :cond_4
    throw v2

    .line 1215
    :cond_5
    if-eqz v18, :cond_6

    .line 1216
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->close()V

    .line 1217
    const/16 v18, 0x0

    .line 1220
    :cond_6
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importAccountEmailToMyContact entitiesMy.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    move-object v13, v2

    .line 1223
    .local v13, entityMy:Landroid/content/Entity;
    :goto_2
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-static {v13, v2}, Lcom/htc/util/contacts/ContactsUtility;->getContentValues(Landroid/content/Entity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    .line 1224
    .local v25, myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .line 1225
    .local v9, bDuplicate:Z
    const-wide/16 v23, 0x0

    .line 1226
    .local v23, lSocialnetworkType:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$accountType:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v15

    .line 1227
    .local v15, insertedAccountType:J
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importAccountEmailToMyContact insertedAccountType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    .line 1230
    .local v27, v:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$email:Ljava/lang/String;

    const-string v3, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1231
    const-wide/high16 v2, 0x400c

    invoke-static {v2, v3}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1232
    const/4 v9, 0x1

    .line 1258
    .end local v27           #v:Landroid/content/ContentValues;
    :cond_8
    :goto_3
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importAccountEmailToMyContact bDuplicate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    if-nez v9, :cond_0

    .line 1260
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1261
    .local v11, emailValues:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1262
    const-string v2, "data1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$email:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const-wide/high16 v2, 0x400c

    invoke-static {v2, v3}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1270
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .line 1271
    .local v26, uriResult:Landroid/net/Uri;
    if-eqz v26, :cond_0

    .line 1272
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.MY_CONTACT_CHANGE"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v17, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1221
    .end local v9           #bDuplicate:Z
    .end local v11           #emailValues:Landroid/content/ContentValues;
    .end local v13           #entityMy:Landroid/content/Entity;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #insertedAccountType:J
    .end local v17           #intent:Landroid/content/Intent;
    .end local v23           #lSocialnetworkType:J
    .end local v25           #myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v26           #uriResult:Landroid/net/Uri;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1235
    .restart local v9       #bDuplicate:Z
    .restart local v13       #entityMy:Landroid/content/Entity;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #insertedAccountType:J
    .restart local v23       #lSocialnetworkType:J
    .restart local v25       #myEmailContentValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v27       #v:Landroid/content/ContentValues;
    :cond_a
    const-string v2, "data7"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 1236
    .local v8, LSocialnetworkType:Ljava/lang/Long;
    if-eqz v8, :cond_b

    .line 1237
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 1241
    :goto_5
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "importAccountEmailToMyContact lSocialnetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v23

    if-eqz v2, :cond_c

    .line 1243
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v15

    if-eqz v2, :cond_7

    .line 1244
    cmp-long v2, v23, v15

    if-nez v2, :cond_7

    .line 1245
    const/4 v9, 0x1

    .line 1246
    goto/16 :goto_3

    .line 1239
    :cond_b
    const-wide/16 v23, 0x0

    goto :goto_5

    .line 1250
    :cond_c
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v15

    if-nez v2, :cond_7

    .line 1251
    const/4 v9, 0x1

    .line 1252
    goto/16 :goto_3

    .line 1268
    .end local v8           #LSocialnetworkType:Ljava/lang/Long;
    .end local v27           #v:Landroid/content/ContentValues;
    .restart local v11       #emailValues:Landroid/content/ContentValues;
    :cond_d
    const-string v2, "data7"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$accountType:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4
.end method
