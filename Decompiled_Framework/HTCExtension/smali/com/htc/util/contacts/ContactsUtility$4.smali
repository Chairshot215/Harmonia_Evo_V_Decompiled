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

    iput-object p1, p0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/util/contacts/ContactsUtility$4;->val$lContactId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 47

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "contact_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    const-string v2, "_id"

    const-wide/16 v3, 0x0

    invoke-virtual {v10, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v30

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v32

    if-gez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    move-wide/from16 v0, v30

    #calls: Lcom/htc/util/contacts/ContactsUtility;->queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;
    invoke-static {v2, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->access$000(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v20

    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility;->queryEditableAccount()Ljava/util/ArrayList;

    move-result-object v17

    const/16 v29, 0x0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ( "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ( "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "contact_id"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$lContactId:J

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ) "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "account_type"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/htc/util/contacts/ContactsUtility;->getOrString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ) "

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v29

    :goto_1
    invoke-interface/range {v29 .. v29}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v29 .. v29}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v29, :cond_2

    invoke-interface/range {v29 .. v29}, Landroid/content/EntityIterator;->close()V

    const/16 v29, 0x0

    :cond_2
    throw v2

    :cond_3
    if-eqz v29, :cond_4

    invoke-interface/range {v29 .. v29}, Landroid/content/EntityIterator;->close()V

    const/16 v29, 0x0

    :cond_4
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "data"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    const/16 v38, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Entity;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v18

    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    invoke-virtual/range {v21 .. v21}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_6
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/content/Entity$NamedContentValues;

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v23, v0

    const-string v2, "mimetype"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_6

    const/16 v38, 0x0

    const/4 v11, 0x0

    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "vnd.android.cursor.item/im"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "vnd.android.cursor.item/note"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "vnd.android.cursor.item/website"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isDuplicate(Ljava/util/ArrayList;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v23 .. v23}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v34

    if-eqz v34, :cond_6

    const-string v2, "raw_contact_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {v40 .. v40}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_8
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isContainMimeType(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v23 .. v23}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v34

    if-eqz v34, :cond_6

    const-string v2, "raw_contact_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {v40 .. v40}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {v23 .. v23}, Lcom/htc/util/contacts/ContactsUtility;->getMimeTypeContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v34

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->isContainMimeType(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "raw_contact_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {v40 .. v40}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_b
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v37

    const-string v2, "account_type"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "account_name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "data_set"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v22, v16

    :cond_c
    invoke-virtual/range {v22 .. v22}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_d
    :goto_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/Entity$NamedContentValues;

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v24, v0

    const-string v2, "mimetype"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_d

    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "data1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v2, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v12

    if-gez v2, :cond_d

    invoke-static/range {v40 .. v40}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    const-wide/16 v12, -0x1

    goto :goto_4

    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.contacts"

    move-object/from16 v0, v39

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v43

    new-instance v28, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.MY_CONTACT_CHANGE"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/contacts/ContactsUtility$4;->val$context:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method
