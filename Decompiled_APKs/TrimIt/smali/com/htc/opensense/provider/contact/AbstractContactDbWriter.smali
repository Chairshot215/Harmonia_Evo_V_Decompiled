.class public abstract Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;
.super Ljava/lang/Object;
.source "AbstractContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$DataQuery;,
        Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncHashQuery;,
        Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncEventQuery;,
        Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ProfileDataQuery;,
        Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_CONTACTS:Ljava/lang/String; = "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

.field private static final DEFAULT_MAX_DELETES:I = 0x32

.field private static final DEFAULT_MAX_INSERTS:I = 0x32

.field private static final DEFAULT_MAX_UPDATES:I = 0x32

.field private static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.opensense.provider.intent.EXTRA_ACCOUNT_TYPE"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "com.htc.opensense.provider.intent.EXTRA_RESULT"


# instance fields
.field protected final ACCOUNT_NAME:Ljava/lang/String;

.field protected final ACCOUNT_TYPE:Ljava/lang/String;

.field protected LOG_TAG:Ljava/lang/String;

.field protected final MAX_DELETES:I

.field protected final MAX_INSERTS:I

.field protected final MAX_UPDATES:I

.field protected final MIME_LOGIN_ID:Ljava/lang/String;

.field protected final MIME_PROFILE:Ljava/lang/String;

.field protected final PROFILE_SUMMARY:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "mimeProfile"
    .parameter "mimeLoginId"
    .parameter "profileSummary"

    .prologue
    .line 139
    const/16 v7, 0x32

    const/16 v8, 0x32

    const/16 v9, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .parameter "context"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "mimeProfile"
    .parameter "mimeLoginId"
    .parameter "profileSummary"
    .parameter "maxDeletes"
    .parameter "maxInserts"
    .parameter "maxUpdates"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "AbstractContactDbWriter"

    iput-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mContext:Landroid/content/Context;

    .line 149
    iget-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    .line 150
    iput-object p2, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_NAME:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_PROFILE:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_LOGIN_ID:Ljava/lang/String;

    .line 154
    iput-object p6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->PROFILE_SUMMARY:Ljava/lang/String;

    .line 155
    iput p7, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_DELETES:I

    .line 156
    iput p8, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_INSERTS:I

    .line 157
    iput p9, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_UPDATES:I

    .line 158
    return-void
.end method

.method private _syncContactsInBackground(Ljava/util/List;Z)V
    .locals 29
    .parameter
    .parameter "purgeRemovedContacts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    if-nez p1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v15

    .line 349
    .local v15, existingContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;>;"
    const/4 v10, 0x0

    .line 351
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncHashQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "account_type=? AND account_name=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_NAME:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 354
    if-eqz v10, :cond_17

    .line 355
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 356
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    const/4 v6, 0x0

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v15, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 362
    :catch_0
    move-exception v12

    .line 363
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to retrieve old contacts from DB"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    if-eqz v10, :cond_16

    .line 366
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 367
    .end local v12           #e:Ljava/lang/Exception;
    :goto_2
    const/4 v10, 0x0

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detecting changes by comparing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new contacts to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " existing contacts..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 387
    .local v19, newContacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v27

    .line 389
    .local v27, updatedContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/opensense/social/data/Person;

    .line 390
    .local v11, contact:Lcom/htc/opensense/social/data/Person;
    iget-object v4, v11, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    .line 392
    .local v14, existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    if-eqz v14, :cond_4

    .line 394
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->computeHash(Lcom/htc/opensense/social/data/Person;)Ljava/lang/String;

    move-result-object v25

    .line 395
    .local v25, syncHash:Ljava/lang/String;
    if-eqz v25, :cond_2

    invoke-virtual {v14}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;->getSyncHash()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 398
    :cond_2
    invoke-virtual {v14}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;->getRawContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_3
    iget-object v4, v11, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 365
    .end local v11           #contact:Lcom/htc/opensense/social/data/Person;
    .end local v14           #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #newContacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    .end local v25           #syncHash:Ljava/lang/String;
    .end local v27           #updatedContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_15

    .line 366
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 367
    const/4 v10, 0x0

    .line 365
    throw v4

    .line 404
    .restart local v11       #contact:Lcom/htc/opensense/social/data/Person;
    .restart local v14       #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v19       #newContacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    .restart local v27       #updatedContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    :cond_4
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 411
    .end local v11           #contact:Lcom/htc/opensense/social/data/Person;
    .end local v14           #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v6, "%d d (purge=%b), %d i, and %d u will be made for contacts."

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x3

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eqz p2, :cond_a

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 423
    const/16 v20, 0x0

    .line 424
    .local v20, num_operations:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 426
    .local v21, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v16

    .line 427
    .local v16, i:I
    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    .line 428
    .restart local v14       #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    invoke-virtual {v14}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;->getRawContactId()J

    move-result-wide v4

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->buildRemovedContactOperations(JI)Ljava/util/ArrayList;

    move-result-object v22

    .line 430
    .local v22, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 431
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v20, v20, v4

    .line 433
    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_DELETES:I

    if-lt v4, v5, :cond_6

    .line 434
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperationsToContacts(Ljava/util/ArrayList;)V

    .line 435
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    .line 411
    .end local v14           #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    .end local v16           #i:I
    .end local v20           #num_operations:I
    .end local v21           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v22           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 440
    .restart local v16       #i:I
    .restart local v20       #num_operations:I
    .restart local v21       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  processed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " operations for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " DELETED contacts (avg: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .end local v16           #i:I
    .end local v20           #num_operations:I
    .end local v21           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 454
    const/16 v20, 0x0

    .line 455
    .restart local v20       #num_operations:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 457
    .restart local v21       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v16

    .line 458
    .restart local v16       #i:I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_b
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/opensense/social/data/Person;

    .line 459
    .local v18, newContact:Lcom/htc/opensense/social/data/Person;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->buildNewContactOperations(Lcom/htc/opensense/social/data/Person;I)Ljava/util/ArrayList;

    move-result-object v22

    .line 461
    .restart local v22       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 462
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v20, v20, v4

    .line 464
    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_INSERTS:I

    if-lt v4, v5, :cond_b

    .line 465
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperationsToContacts(Ljava/util/ArrayList;)V

    .line 466
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    .line 440
    .end local v18           #newContact:Lcom/htc/opensense/social/data/Person;
    .end local v22           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_d
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    div-int v4, v20, v4

    goto :goto_6

    .line 471
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  processed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " operations for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " NEW contacts (avg: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v16           #i:I
    .end local v20           #num_operations:I
    .end local v21           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_f
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 486
    const/16 v20, 0x0

    .line 487
    .restart local v20       #num_operations:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 489
    .restart local v21       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v16

    .line 490
    .restart local v16       #i:I
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_10
    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 491
    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 492
    .local v23, rawContactId:J
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/opensense/social/data/Person;

    .line 493
    .local v26, updatedContact:Lcom/htc/opensense/social/data/Person;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->buildExistingContactOperations(Lcom/htc/opensense/social/data/Person;J)Ljava/util/ArrayList;

    move-result-object v22

    .line 495
    .restart local v22       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 496
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v20, v20, v4

    .line 498
    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_UPDATES:I

    if-lt v4, v5, :cond_10

    .line 499
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperationsToContacts(Ljava/util/ArrayList;)V

    .line 500
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    goto :goto_9

    .line 471
    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    .end local v22           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v23           #rawContactId:J
    .end local v26           #updatedContact:Lcom/htc/opensense/social/data/Person;
    :cond_12
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v20, v4

    goto :goto_8

    .line 505
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  processed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " operations for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " UPDATE contacts (avg: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v4

    div-int v4, v20, v4

    goto :goto_a

    .line 369
    .end local v16           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #newContacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    .end local v20           #num_operations:I
    .end local v21           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v27           #updatedContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/opensense/social/data/Person;>;"
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to retrieve old contacts from DB!"

    :goto_b
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v12       #e:Ljava/lang/Exception;
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to retrieve old contacts from DB!"

    goto :goto_b

    .line 365
    .end local v12           #e:Ljava/lang/Exception;
    :cond_17
    if-eqz v10, :cond_18

    .line 366
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 369
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to retrieve old contacts from DB!"

    goto :goto_b
.end method

.method protected static final addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected static final newAvatar(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"
    .parameter "avatar"
    .parameter "mimeType"

    .prologue
    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    :cond_0
    const/4 v0, 0x0

    .line 638
    :goto_0
    return-object v0

    .line 635
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 636
    const-string v0, "mimetype"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method protected static final newContactBirthdate(Landroid/content/ContentValues;Lcom/htc/opensense/social/data/Person;)Landroid/content/ContentProviderOperation$Builder;
    .locals 5
    .parameter "values"
    .parameter "contact"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    .line 643
    iget v1, p1, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    if-ne v1, v2, :cond_1

    .line 644
    :cond_0
    const/4 v1, 0x0

    .line 664
    :goto_0
    return-object v1

    .line 647
    :cond_1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 648
    .local v0, time:Landroid/text/format/Time;
    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 649
    iget v1, p1, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    if-eq v1, v2, :cond_2

    .line 650
    iget v1, p1, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    iget v2, p1, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p1, Lcom/htc/opensense/social/data/Person;->birthday_year:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 656
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 657
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/htc_event_v2"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v1, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    const-string v1, "data4"

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 660
    const-string v1, "data5"

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 661
    const-string v1, "data8"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    const-string v1, "data9"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    const-string v1, "data11"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_0

    .line 653
    :cond_2
    iget v1, p1, Lcom/htc/opensense/social/data/Person;->birthday_day:I

    iget v2, p1, Lcom/htc/opensense/social/data/Person;->birthday_month:I

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x7b2

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    goto :goto_1
.end method

.method protected static final newDeleteCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter "uri"
    .parameter "yield"

    .prologue
    .line 568
    invoke-static {p0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected static final newDisplayName(Landroid/content/ContentValues;Lcom/htc/opensense/social/data/Person;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .parameter "values"
    .parameter "user"

    .prologue
    .line 591
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v1

    if-nez v1, :cond_1

    .line 592
    :cond_0
    const/4 v1, 0x0

    .line 601
    :goto_0
    return-object v1

    .line 594
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    .line 596
    .local v0, profile:Lcom/htc/opensense/social/data/Profile;
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 597
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v2, "data1"

    iget-object v1, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_0

    .line 598
    :cond_2
    iget-object v1, v0, Lcom/htc/opensense/social/data/Profile;->user_name:Ljava/lang/String;

    goto :goto_1
.end method

.method protected static final newEmail(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"
    .parameter "email"

    .prologue
    .line 618
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    const/4 v0, 0x0

    .line 626
    :goto_0
    return-object v0

    .line 622
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 623
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "data2"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 625
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method protected static final newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter "uri"
    .parameter "yield"

    .prologue
    .line 556
    invoke-static {p0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected static final newPhoneNumber(Landroid/content/ContentValues;Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"
    .parameter "phoneNumber"
    .parameter "phoneType"

    .prologue
    .line 606
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 614
    :goto_0
    return-object v0

    .line 610
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 611
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v0, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    const-string v0, "data1"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method protected static final newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 1
    .parameter "uri"
    .parameter "yield"

    .prologue
    .line 562
    invoke-static {p0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyOperations(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 519
    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, p2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, e1:Landroid/content/OperationApplicationException;
    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyOperations for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 529
    .local v4, numOperations:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 530
    iget-object v6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v7, "#%d: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 533
    .end local v1           #e1:Landroid/content/OperationApplicationException;
    .end local v3           #i:I
    .end local v4           #numOperations:I
    :catch_1
    move-exception v2

    .line 534
    .local v2, e2:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyOperations for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 536
    .restart local v4       #numOperations:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v4, :cond_0

    .line 537
    iget-object v6, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v7, "#%d: %s"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 540
    .end local v2           #e2:Landroid/os/RemoteException;
    .end local v3           #i:I
    .end local v4           #numOperations:I
    :catch_2
    move-exception v0

    .line 541
    .local v0, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to applyOperations!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method protected applyOperationsToCalendars(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "com.android.calendar"

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperations(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method protected applyOperationsToContacts(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperations(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method protected buildExistingContactOperations(Lcom/htc/opensense/social/data/Person;J)Ljava/util/ArrayList;
    .locals 6
    .parameter "contact"
    .parameter "rawContactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/data/Person;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 201
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p0, p1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->computeHash(Lcom/htc/opensense/social/data/Person;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, syncHash:Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 207
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 208
    const-string v5, "sync1"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 210
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    return-object v1
.end method

.method protected buildNewContactOperations(Lcom/htc/opensense/social/data/Person;I)Ljava/util/ArrayList;
    .locals 7
    .parameter "contact"
    .parameter "backRef"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/data/Person;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 170
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v2

    .line 171
    .local v2, profile:Lcom/htc/opensense/social/data/Profile;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 173
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 178
    const-string v4, "account_type"

    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "account_name"

    iget-object v5, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v4, "sourceid"

    iget-object v5, p1, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v4, "sync1"

    invoke-virtual {p0, p1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->computeHash(Lcom/htc/opensense/social/data/Person;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v4, "version"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v6}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 184
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0, v3, v2}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newProfile(Landroid/content/ContentValues;Lcom/htc/opensense/social/data/Profile;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 189
    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    return-object v1
.end method

.method protected buildRemovedContactOperations(JI)Ljava/util/ArrayList;
    .locals 4
    .parameter "rawContactId"
    .parameter "backRef"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 218
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newDeleteCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 220
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    return-object v1
.end method

.method protected abstract computeHash(Lcom/htc/opensense/social/data/Person;)Ljava/lang/String;
.end method

.method public deleteLoginUserId()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;-><init>(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;)V

    invoke-virtual {v0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$1;->start()V

    .line 89
    return-void
.end method

.method public deleteRemovedContacts(Ljava/util/Set;)V
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, currentContactUids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 268
    .local v10, existingContacts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;>;"
    const/4 v7, 0x0

    .line 270
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncHashQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "account_type=? AND account_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_NAME:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 273
    if-eqz v7, :cond_7

    .line 274
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 275
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;-><init>(Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v8

    .line 282
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve old contacts from DB"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    if-eqz v7, :cond_6

    .line 285
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 286
    .end local v8           #e:Ljava/lang/Exception;
    :goto_1
    const/4 v7, 0x0

    .line 296
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 297
    .local v16, uid:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    goto :goto_2

    .line 284
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 285
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 286
    const/4 v7, 0x0

    .line 284
    throw v1

    .line 303
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "%d deletes will be made."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v13, 0x0

    .line 311
    .local v13, num_operations:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 313
    .local v14, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v11

    .line 314
    .local v11, i:I
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;

    .line 315
    .local v9, existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    invoke-virtual {v9}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;->getRawContactId()J

    move-result-wide v1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->buildRemovedContactOperations(JI)Ljava/util/ArrayList;

    move-result-object v15

    .line 317
    .local v15, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 318
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v13, v1

    .line 320
    add-int/lit8 v11, v11, -0x1

    if-lez v11, :cond_2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MAX_DELETES:I

    if-lt v1, v2, :cond_1

    .line 321
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->applyOperationsToContacts(Ljava/util/ArrayList;)V

    .line 322
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 327
    .end local v9           #existingContact:Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$ExistingContact;
    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  processed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " operations for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " DELETED contacts (avg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #num_operations:I
    .end local v14           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_5
    return-void

    .line 327
    .restart local v11       #i:I
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #num_operations:I
    .restart local v14       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_4
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v1

    div-int v1, v13, v1

    goto :goto_4

    .line 288
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #num_operations:I
    .end local v14           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve old contacts from DB!"

    :goto_6
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .restart local v8       #e:Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve old contacts from DB!"

    goto :goto_6

    .line 284
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    if-eqz v7, :cond_8

    .line 285
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 288
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve old contacts from DB!"

    goto :goto_6
.end method

.method public insertLoginUserId(Ljava/lang/String;)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 92
    new-instance v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;-><init>(Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$2;->start()V

    .line 134
    return-void
.end method

.method protected final newProfile(Landroid/content/ContentValues;Lcom/htc/opensense/social/data/Profile;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2
    .parameter "values"
    .parameter "profile"

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 582
    const-string v0, "data1"

    iget-object v1, p2, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v0, "data2"

    iget-object v1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->PROFILE_SUMMARY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "data3"

    iget-object v1, p2, Lcom/htc/opensense/social/data/Profile;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v0, "mimetype"

    iget-object v1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->MIME_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public sendFinishBroadcast(Z)V
    .locals 4
    .parameter "result"

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.opensense.provider.intent.EXTRA_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.htc.opensense.provider.intent.EXTRA_ACCOUNT_TYPE"

    iget-object v3, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    iget-object v1, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send finish intent to ContactProvider for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public syncContacts(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->syncContacts(Ljava/util/List;Z)V

    .line 228
    return-void
.end method

.method public syncContacts(Ljava/util/List;Z)V
    .locals 6
    .parameter
    .parameter "purgeRemovedContacts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Person;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Person;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncContacts-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const v5, 0x80001

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, THREAD_NAME:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;->_syncContactsInBackground(Ljava/util/List;Z)V

    .line 243
    return-void
.end method
