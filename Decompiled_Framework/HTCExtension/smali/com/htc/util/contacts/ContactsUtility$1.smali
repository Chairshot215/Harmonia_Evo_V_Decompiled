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

    iput-object p1, p0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/util/contacts/ContactsUtility$1;->val$accountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/util/contacts/ContactsUtility$1;->val$email:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v27, "contact_id"

    const-wide/16 v28, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    const-string v27, "_id"

    const-wide/16 v28, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    const-wide/16 v27, 0x0

    cmp-long v27, v27, v17

    if-gez v27, :cond_0

    const-wide/16 v27, 0x0

    cmp-long v27, v27, v19

    if-gez v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v17

    #calls: Lcom/htc/util/contacts/ContactsUtility;->queryProfileEntities(Landroid/content/Context;J)Ljava/util/ArrayList;
    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->access$000(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Entity;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v24

    const-string v27, "account_type"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v27, "account_name"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v27, "data_set"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2

    move-object v12, v9

    :cond_3
    const-string v27, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Lcom/htc/util/contacts/ContactsUtility;->getContentValues(Landroid/content/Entity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    const/4 v6, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$accountType:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$email:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "data1"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_4

    const-wide/high16 v27, 0x400c

    invoke-static/range {v27 .. v28}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v27

    if-eqz v27, :cond_6

    const/4 v6, 0x1

    :cond_5
    :goto_1
    if-nez v6, :cond_0

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v27, "raw_contact_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v27, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$email:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v27, "mimetype"

    const-string v28, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/high16 v27, 0x400c

    invoke-static/range {v27 .. v28}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v27

    if-eqz v27, :cond_9

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    sget-object v28, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    if-eqz v25, :cond_0

    new-instance v16, Landroid/content/Intent;

    const-string v27, "com.htc.intent.action.MY_CONTACT_CHANGE"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v27, "data7"

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    :goto_3
    const-wide/16 v27, 0x0

    cmp-long v27, v27, v21

    if-eqz v27, :cond_8

    const-wide/16 v27, 0x0

    cmp-long v27, v27, v14

    if-eqz v27, :cond_4

    cmp-long v27, v21, v14

    if-nez v27, :cond_4

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_7
    const-wide/16 v21, 0x0

    goto :goto_3

    :cond_8
    const-wide/16 v27, 0x0

    cmp-long v27, v27, v14

    if-nez v27, :cond_4

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_9
    const-string v27, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/contacts/ContactsUtility$1;->val$accountType:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/htc/util/contacts/ContactsUtility;->getSocialnetworkAccountType(Ljava/lang/String;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2
.end method
