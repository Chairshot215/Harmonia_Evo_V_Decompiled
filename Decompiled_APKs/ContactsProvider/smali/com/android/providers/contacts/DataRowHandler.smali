.class public abstract Lcom/android/providers/contacts/DataRowHandler;
.super Ljava/lang/Object;
.source "DataRowHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;,
        Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;
    }
.end annotation


# static fields
.field public static final IS_ENABLE_AUTO_PRIMARY:Z = true


# instance fields
.field protected final mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

.field protected final mContext:Landroid/content/Context;

.field protected final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field protected final mMimetype:Ljava/lang/String;

.field protected mMimetypeId:J

.field protected mSelectionArgs1:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "mimetype"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/android/providers/contacts/DataRowHandler;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 102
    iput-object p3, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    .line 103
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetype:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private fixPrimary(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 19
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v13

    .line 317
    .local v13, mimeTypeId:J
    const-wide/16 v15, -0x1

    .line 318
    .local v15, primaryId:J
    const/16 v17, -0x1

    .line 319
    .local v17, primaryType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 320
    const-string v3, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id)"

    sget-object v4, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->CONCRETE_COLUMNS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "raw_contact_id=? AND mimetype_id="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, c:Landroid/database/Cursor;
    move-wide v5, v15

    .line 326
    .end local v15           #primaryId:J
    .local v5, primaryId:J
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 330
    .local v11, dataId:J
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 332
    .local v18, type:I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandler;->getTypeRank(I)I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandler;->getTypeRank(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ge v2, v3, :cond_0

    .line 333
    :cond_1
    move-wide v5, v11

    .line 334
    move/from16 v17, v18

    goto :goto_0

    .line 338
    .end local v11           #dataId:J
    .end local v18           #type:I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 340
    const-wide/16 v2, -0x1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_3

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v3, p2

    move-wide v7, v13

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    .line 344
    :cond_3
    return-wide v5

    .line 338
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private handlePrimaryAndSuperPrimary(Landroid/content/ContentValues;JJ)V
    .locals 26
    .parameter "values"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    .line 206
    const-string v3, "is_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    .line 207
    .local v18, hasPrimary:Z
    const-string v3, "is_super_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    .line 210
    .local v19, hasSuperPrimary:Z
    const/16 v22, 0x0

    .line 214
    .local v22, isSuperPrimaryChanged:Z
    if-nez v18, :cond_1

    if-nez v19, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v11

    .line 219
    .local v11, mimeTypeId:J
    if-eqz v18, :cond_6

    const-string v3, "is_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v14, 0x1

    .line 221
    .local v14, clearPrimary:Z
    :goto_1
    if-eqz v19, :cond_7

    const-string v3, "is_super_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_7

    const/4 v15, 0x1

    .line 224
    .local v15, clearSuperPrimary:Z
    :goto_2
    if-nez v14, :cond_2

    if-eqz v15, :cond_a

    .line 226
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 227
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "is_primary"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "is_super_primary"

    aput-object v4, v5, v3

    .line 228
    .local v5, cols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "data"

    const-string v6, "_id=?"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 231
    .local v13, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_8

    const/16 v20, 0x1

    .line 233
    .local v20, isPrimary:Z
    :goto_3
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_9

    const/16 v21, 0x1

    .line 235
    .local v21, isSuperPrimary:Z
    :goto_4
    if-eqz v21, :cond_3

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1, v11, v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->clearSuperPrimary(JJ)V

    .line 238
    :cond_3
    if-eqz v14, :cond_4

    if-eqz v20, :cond_4

    .line 239
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-wide/16 v9, -0x1

    move-wide/from16 v7, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .end local v20           #isPrimary:Z
    .end local v21           #isSuperPrimary:Z
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 275
    .end local v5           #cols:[Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    :cond_5
    :goto_5
    const-string v3, "is_super_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 276
    const-string v3, "is_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 279
    if-eqz v22, :cond_0

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v16

    .line 281
    .local v16, contactId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-lez v3, :cond_0

    .line 282
    invoke-static {}, Lcom/android/providers/contacts/NotifyDialerScheduler;->getInstance()Lcom/android/providers/contacts/NotifyDialerScheduler;

    move-result-object v23

    .line 283
    .local v23, notifier:Lcom/android/providers/contacts/NotifyDialerScheduler;
    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    goto/16 :goto_0

    .line 219
    .end local v14           #clearPrimary:Z
    .end local v15           #clearSuperPrimary:Z
    .end local v16           #contactId:J
    .end local v23           #notifier:Lcom/android/providers/contacts/NotifyDialerScheduler;
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 221
    .restart local v14       #clearPrimary:Z
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 232
    .restart local v5       #cols:[Ljava/lang/String;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #clearSuperPrimary:Z
    :cond_8
    const/16 v20, 0x0

    goto :goto_3

    .line 233
    .restart local v20       #isPrimary:Z
    :cond_9
    const/16 v21, 0x0

    goto :goto_4

    .line 243
    .end local v20           #isPrimary:Z
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 247
    .end local v5           #cols:[Ljava/lang/String;
    .end local v13           #c:Landroid/database/Cursor;
    :cond_a
    if-eqz v18, :cond_b

    const-string v3, "is_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v24, 0x1

    .line 249
    .local v24, setPrimary:Z
    :goto_6
    if-eqz v19, :cond_c

    const-string v3, "is_super_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_c

    const/16 v25, 0x1

    .line 251
    .local v25, setSuperPrimary:Z
    :goto_7
    if-eqz v25, :cond_d

    .line 253
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v7, p4

    move-wide/from16 v9, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    .line 254
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v7, p4

    move-wide/from16 v9, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    .line 257
    const/16 v22, 0x1

    goto :goto_5

    .line 247
    .end local v24           #setPrimary:Z
    .end local v25           #setSuperPrimary:Z
    :cond_b
    const/16 v24, 0x0

    goto :goto_6

    .line 249
    .restart local v24       #setPrimary:Z
    :cond_c
    const/16 v25, 0x0

    goto :goto_7

    .line 260
    .restart local v25       #setSuperPrimary:Z
    :cond_d
    if-eqz v24, :cond_5

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1, v11, v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rawContactHasSuperPrimary(JJ)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 265
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v7, p4

    move-wide/from16 v9, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    .line 267
    const/16 v22, 0x1

    .line 270
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v7, p4

    move-wide/from16 v9, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    goto/16 :goto_5
.end method

.method private isNewRawContact(Lcom/android/providers/contacts/TransactionContext;J)Z
    .locals 1
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 429
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected IsEnableAutoPrimary()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 198
    return-void
.end method

.method public areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 5
    .parameter "values"
    .parameter "keys"

    .prologue
    .line 476
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 477
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 478
    const/4 v4, 0x0

    .line 481
    .end local v2           #key:Ljava/lang/String;
    :goto_1
    return v4

    .line 476
    .restart local v2       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 5
    .parameter "values"
    .parameter "keys"

    .prologue
    .line 488
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 489
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    const/4 v4, 0x1

    .line 493
    .end local v2           #key:Ljava/lang/String;
    :goto_1
    return v4

    .line 488
    .restart local v2       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 10
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    .line 290
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 291
    .local v1, dataId:J
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 292
    .local v4, rawContactId:J
    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    .line 293
    .local v3, primary:Z
    :goto_0
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 294
    const-string v7, "data"

    const-string v8, "_id=?"

    iget-object v9, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 295
    .local v0, count:I
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    .line 296
    const-string v6, "presence"

    const-string v7, "presence_raw_contact_id=?"

    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 297
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 298
    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/contacts/DataRowHandler;->fixPrimary(Landroid/database/sqlite/SQLiteDatabase;J)J

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->hasSearchableData()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 302
    invoke-virtual {p2, v4, v5}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForRawContact(J)V

    .line 305
    :cond_1
    return v0

    .end local v0           #count:I
    .end local v3           #primary:Z
    :cond_2
    move v3, v6

    .line 292
    goto :goto_0
.end method

.method findIsSuperPrimaryDataIdForRawContact(Landroid/database/sqlite/SQLiteDatabase;J[I)J
    .locals 7
    .parameter "db"
    .parameter "rawContactId"
    .parameter "outType"

    .prologue
    .line 383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  SELECT _id  FROM data WHERE raw_contact_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  AND is_super_primary = 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, rawQuerying:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 386
    .local v0, c:Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 387
    .local v2, superPrimaryId:J
    if-eqz v0, :cond_1

    .line 389
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 391
    if-eqz p4, :cond_0

    array-length v4, p4

    if-lez v4, :cond_0

    .line 392
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, p4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 397
    const/4 v0, 0x0

    .line 400
    :cond_1
    return-wide v2

    .line 396
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 397
    const/4 v0, 0x0

    throw v4
.end method

.method protected findNewPrimaryDataId(Landroid/database/sqlite/SQLiteDatabase;J[I)J
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "outPrimaryType"

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 350
    const-wide/16 v3, -0x1

    .line 351
    .local v3, primaryId:J
    const/4 v5, -0x1

    .line 352
    .local v5, primaryType:I
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->queryData(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;

    move-result-object v0

    .line 354
    .local v0, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 355
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 356
    .local v1, dataId:J
    const/4 v8, 0x6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 357
    .local v6, type:I
    :goto_1
    if-eq v5, v7, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/DataRowHandler;->getTypeRank(I)I

    move-result v8

    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/DataRowHandler;->getTypeRank(I)I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 358
    :cond_1
    move-wide v3, v1

    .line 359
    move v5, v6

    goto :goto_0

    .line 356
    .end local v6           #type:I
    :cond_2
    const/4 v8, 0x6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    goto :goto_1

    .line 363
    .end local v1           #dataId:J
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 365
    if-eqz p4, :cond_4

    array-length v7, p4

    if-lez v7, :cond_4

    .line 366
    aput v5, p4, v10

    .line 368
    :cond_4
    return-wide v3

    .line 363
    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7
.end method

.method fixNewSuperPrimaryDataIfNoSuperPrimary(Landroid/database/sqlite/SQLiteDatabase;JZ)J
    .locals 2
    .parameter "db"
    .parameter "contactId"
    .parameter "isAllReset"

    .prologue
    .line 379
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method fixNewSuperPrimaryDataIfNoSuperPrimary2(Landroid/database/sqlite/SQLiteDatabase;JZ)J
    .locals 2
    .parameter "db"
    .parameter "contactId"
    .parameter "isAllReset"

    .prologue
    .line 375
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 422
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandler;->isNewRawContact(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 426
    :cond_0
    return-void
.end method

.method public getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 18
    .parameter "db"
    .parameter "dataId"
    .parameter "update"

    .prologue
    .line 439
    const/4 v10, 0x0

    .line 440
    .local v10, changing:Z
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 441
    .local v17, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 442
    const-string v3, "data"

    const/4 v4, 0x0

    const-string v5, "_id=?"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 445
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 446
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v12, v2, :cond_3

    .line 447
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v13

    .line 448
    .local v13, key:Ljava/lang/String;
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 449
    .local v16, value:Ljava/lang/String;
    if-nez v10, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 451
    .local v15, newValue:Ljava/lang/Object;
    if-nez v15, :cond_1

    const/4 v14, 0x0

    .line 452
    .local v14, newString:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v10, v2

    .line 454
    .end local v14           #newString:Ljava/lang/String;
    .end local v15           #newValue:Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 451
    .restart local v15       #newValue:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    goto :goto_1

    .line 452
    .restart local v14       #newString:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 458
    .end local v12           #i:I
    .end local v13           #key:Ljava/lang/String;
    .end local v14           #newString:Ljava/lang/String;
    .end local v15           #newValue:Ljava/lang/Object;
    .end local v16           #value:Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 460
    if-nez v10, :cond_4

    .line 461
    const/16 v17, 0x0

    .line 465
    .end local v17           #values:Landroid/content/ContentValues;
    :goto_3
    return-object v17

    .line 458
    .restart local v17       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 464
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_3
.end method

.method protected getMimeTypeId()J
    .locals 4

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetypeId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetypeId:J

    .line 118
    :cond_0
    iget-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetypeId:J

    return-wide v0
.end method

.method protected getTypeRank(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 9
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 128
    const-string v0, "data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 130
    .local v3, dataId:J
    const-string v0, "is_primary"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 131
    .local v7, primary:Ljava/lang/Integer;
    const-string v0, "is_super_primary"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 132
    .local v8, superPrimary:Ljava/lang/Integer;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v5

    .line 134
    .local v5, mimeTypeId:J
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    .line 138
    if-eqz v8, :cond_5

    .line 139
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    .line 153
    .end local v5           #mimeTypeId:J
    :cond_2
    :goto_0
    invoke-virtual {p0, p5}, Lcom/android/providers/contacts/DataRowHandler;->containsSearchableColumns(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForRawContact(J)V

    .line 157
    :cond_3
    return-wide v3

    .line 142
    .restart local v5       #mimeTypeId:J
    :cond_4
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p3, p4, v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->clearSuperPrimary(JJ)V

    goto :goto_0

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p3, p4, v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rawContactHasSuperPrimary(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    goto :goto_0
.end method

.method protected queryData(Landroid/database/sqlite/SQLiteDatabase;J)Landroid/database/Cursor;
    .locals 8
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    const/4 v4, 0x0

    .line 414
    const-string v1, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id)"

    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->CONCRETE_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mimetype"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 470
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 8
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 169
    .local v2, dataId:J
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .local v4, rawContactId:J
    move-object v0, p0

    move-object v1, p3

    .line 171
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandler;->handlePrimaryAndSuperPrimary(Landroid/content/ContentValues;JJ)V

    .line 173
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 175
    const-string v0, "data"

    const-string v1, "_id =?"

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v0, p3, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/providers/contacts/DataRowHandler;->containsSearchableColumns(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p2, v4, v5}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForRawContact(J)V

    .line 182
    :cond_1
    if-nez p5, :cond_2

    .line 183
    invoke-virtual {p2, v4, v5}, Lcom/android/providers/contacts/TransactionContext;->markRawContactDirty(J)V

    .line 186
    :cond_2
    return v7
.end method
