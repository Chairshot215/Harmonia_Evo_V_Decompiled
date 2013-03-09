.class public Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForGroupMembership.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;
    }
.end annotation


# static fields
.field private static final IS_ENABLE_INSERT_STARRED_GROUP_THEN_SET_STARRED:Z = true

.field private static final QUERY_COUNT_FAVORITES_GROUP_MEMBERSHIPS_BY_RAW_CONTACT_ID:Ljava/lang/String; = "SELECT COUNT(*) FROM data LEFT OUTER JOIN groups ON data.data1=groups._id WHERE mimetype_id=? AND data.raw_contact_id=? AND favorites!=0"

.field private static final SELECTION_RAW_CONTACT_ID:Ljava/lang/String; = "_id=?"


# instance fields
.field protected final mGroupIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/util/HashMap;)V
    .locals 1
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/providers/contacts/ContactsDatabaseHelper;",
            "Lcom/android/providers/contacts/ContactAggregator;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p4, groupIdCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;>;"
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 81
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    .line 82
    return-void
.end method

.method private getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Lcom/android/providers/contacts/AccountWithDataSet;)J
    .locals 22
    .parameter "db"
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "accountWithDataSet"

    .prologue
    .line 303
    if-nez p5, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 305
    const-string v4, "raw_contacts"

    sget-object v5, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "_id=?"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 308
    .local v13, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 310
    .local v11, accountName:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 311
    .local v12, accountType:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 312
    .local v15, dataSet:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 313
    new-instance p5, Lcom/android/providers/contacts/AccountWithDataSet;

    .end local p5
    move-object/from16 v0, p5

    invoke-direct {v0, v11, v12, v15}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    .end local v15           #dataSet:Ljava/lang/String;
    .restart local p5
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 322
    .end local v13           #c:Landroid/database/Cursor;
    :cond_1
    if-nez p5, :cond_2

    .line 323
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "if the groupmembership only has a sourceid the the contact must be associated with an account"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    .end local p5
    .restart local v13       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 328
    .end local v13           #c:Landroid/database/Cursor;
    .restart local p5
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 329
    .local v16, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    if-nez v16, :cond_3

    .line 330
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .restart local v16       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 335
    .local v14, count:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    if-ge v0, v14, :cond_5

    .line 336
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    .line 337
    .local v17, entry:Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountName:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountType:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->dataSet:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 340
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    .line 392
    :goto_1
    return-wide v3

    .line 335
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 344
    .end local v17           #entry:Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    :cond_5
    new-instance v17, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;-><init>()V

    .line 345
    .restart local v17       #entry:Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountName:Ljava/lang/String;

    .line 346
    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountType:Ljava/lang/String;

    .line 347
    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->dataSet:Ljava/lang/String;

    .line 348
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->sourceId:Ljava/lang/String;

    .line 349
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 354
    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 355
    const-string v4, "groups"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const-string v6, "sourceid=? AND account_name=? AND account_type=? AND data_set IS NULL"

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v7, v3

    const/4 v3, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x2

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 373
    .restart local v13       #c:Landroid/database/Cursor;
    :goto_2
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 374
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v17

    iput-wide v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 389
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 392
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    goto :goto_1

    .line 363
    .end local v13           #c:Landroid/database/Cursor;
    :cond_6
    const-string v4, "groups"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const-string v6, "sourceid=? AND account_name=? AND account_type=? AND data_set=?"

    const/4 v3, 0x4

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v7, v3

    const/4 v3, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x2

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x3

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .restart local v13       #c:Landroid/database/Cursor;
    goto :goto_2

    .line 376
    :cond_7
    :try_start_2
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v20, groupValues:Landroid/content/ContentValues;
    const-string v3, "account_name"

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v3, "account_type"

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v3, "data_set"

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v3, "sourceid"

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v3, "groups"

    const-string v4, "account_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 382
    .local v18, groupId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-gez v3, :cond_8

    .line 383
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to create a new group with this sourceid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 389
    .end local v18           #groupId:J
    .end local v20           #groupValues:Landroid/content/ContentValues;
    :catchall_1
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 386
    .restart local v18       #groupId:J
    .restart local v20       #groupValues:Landroid/content/ContentValues;
    :cond_8
    :try_start_3
    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3
.end method

.method private hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 9
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 166
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    .line 168
    .local v0, groupMembershipMimetypeId:J
    const-wide/16 v4, 0x0

    const-string v6, "SELECT COUNT(*) FROM data LEFT OUTER JOIN groups ON data.data1=groups._id WHERE mimetype_id=? AND data.raw_contact_id=? AND favorites!=0"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p1, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 171
    .local v2, isStarred:Z
    :goto_0
    return v2

    .end local v2           #isStarred:Z
    :cond_0
    move v2, v3

    .line 168
    goto :goto_0
.end method

.method private isGoogleRawContact(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 11
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 222
    const/4 v9, 0x0

    .line 223
    .local v9, isGoogle:Z
    const-string v1, "raw_contacts"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "account_type"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 225
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, type:Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v0, "com.google"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x1

    .line 230
    .end local v10           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_1
    return v9

    .line 228
    .restart local v10       #type:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private isStarredGroup(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 11
    .parameter "db"
    .parameter "groupId"

    .prologue
    .line 236
    const/4 v9, 0x0

    .line 237
    .local v9, isStarredInAndroid:Z
    const-string v1, "groups"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "title"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 238
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 239
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, title:Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v0, "Starred in Android"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x1

    .line 243
    .end local v10           #title:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_1
    return v9

    .line 241
    .restart local v10       #title:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    .locals 10
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "db"
    .parameter "values"
    .parameter "isInsert"

    .prologue
    .line 263
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 264
    .local v7, containsGroupSourceId:Z
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 265
    .local v6, containsGroupId:Z
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you are not allowed to set both the GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    if-nez v7, :cond_1

    if-nez v6, :cond_1

    .line 272
    if-eqz p6, :cond_2

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must set exactly one of GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    if-eqz v7, :cond_2

    .line 282
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, sourceId:Ljava/lang/String;
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->getAccountWithDataSetForRawContact(J)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Lcom/android/providers/contacts/AccountWithDataSet;)J

    move-result-wide v8

    .line 285
    .local v8, groupId:J
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 286
    const-string v0, "data1"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    .end local v4           #sourceId:Ljava/lang/String;
    .end local v8           #groupId:J
    :cond_2
    return-void
.end method

.method private setModifyToGroupTrackingTable(Ljava/lang/String;)V
    .locals 3
    .parameter "groupID"

    .prologue
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE aabGroupsTracking SET _modify=1 WHERE _id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "starred"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v0, rawContactValues:Landroid/content/ContentValues;
    const-string v4, "starred"

    if-eqz p4, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v1, "raw_contacts"

    const-string v4, "_id=?"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateStarred(J)V

    .line 162
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 157
    goto :goto_0
.end method

.method private updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 4
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 252
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregationAfterVisibilityChange(J)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 176
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 177
    .local v2, rawContactId:J
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v4

    .line 178
    .local v4, wasStarred:Z
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 179
    .local v0, count:I
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v1

    .line 180
    .local v1, isStarred:Z
    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 181
    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v3, v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 183
    :cond_0
    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 218
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 10
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 93
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 95
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v7

    .line 97
    .local v7, dataId:J
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 100
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 129
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isAABEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, groupID:Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->setModifyToGroupTrackingTable(Ljava/lang/String;)V

    .line 135
    .end local v9           #groupID:Ljava/lang/String;
    :cond_1
    return-wide v7
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 10
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 141
    invoke-interface {p4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 142
    .local v2, rawContactId:J
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v8

    .local v8, wasStarred:Z
    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    .line 143
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 144
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return v6

    .line 147
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v7

    .line 148
    .local v7, isStarred:Z
    if-eq v8, v7, :cond_1

    .line 149
    invoke-direct {p0, p1, v2, v3, v7}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 151
    :cond_1
    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    move v6, v9

    .line 152
    goto :goto_0
.end method
