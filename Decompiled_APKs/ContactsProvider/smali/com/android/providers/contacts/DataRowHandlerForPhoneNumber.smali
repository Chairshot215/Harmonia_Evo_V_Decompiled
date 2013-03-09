.class public Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForPhoneNumber.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataRowHandlerForPhoneNumber"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 7
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 47
    const-string v4, "vnd.android.cursor.item/phone_v2"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private findBestSuperPrimary(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, dataFacebookList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 206
    const/4 v5, -0x1

    .line 207
    .local v5, nBestIndex:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 208
    .local v7, nSize:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v7, v11, :cond_0

    move v6, v5

    .line 232
    .end local v5           #nBestIndex:I
    .local v6, nBestIndex:I
    :goto_0
    return v6

    .line 211
    .end local v6           #nBestIndex:I
    .restart local v5       #nBestIndex:I
    :cond_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    move v1, v9

    .line 212
    .local v1, bAllNonFacebook:Z
    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    move v0, v9

    .line 215
    .local v0, bAllFacebook:Z
    :goto_2
    if-nez v1, :cond_6

    if-nez v0, :cond_6

    .line 216
    const/4 v4, -0x1

    .line 217
    .local v4, maxLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v7, :cond_6

    .line 218
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1

    .line 219
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 220
    .local v8, number:Ljava/lang/String;
    if-nez v8, :cond_4

    .line 217
    .end local v8           #number:Ljava/lang/String;
    :cond_1
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0           #bAllFacebook:Z
    .end local v1           #bAllNonFacebook:Z
    .end local v2           #i:I
    .end local v4           #maxLen:I
    :cond_2
    move v1, v10

    .line 211
    goto :goto_1

    .restart local v1       #bAllNonFacebook:Z
    :cond_3
    move v0, v10

    .line 212
    goto :goto_2

    .line 221
    .restart local v0       #bAllFacebook:Z
    .restart local v2       #i:I
    .restart local v4       #maxLen:I
    .restart local v8       #number:Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    .line 222
    .local v3, len:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_5

    .line 223
    move v4, v3

    .line 224
    move v5, v2

    goto :goto_4

    .line 225
    :cond_5
    if-ge v4, v3, :cond_1

    .line 226
    move v4, v3

    .line 227
    move v5, v2

    goto :goto_4

    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #maxLen:I
    .end local v8           #number:Ljava/lang/String;
    :cond_6
    move v6, v5

    .line 232
    .end local v5           #nBestIndex:I
    .restart local v6       #nBestIndex:I
    goto :goto_0
.end method

.method private updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "number"
    .parameter "numberE164"

    .prologue
    const/4 v5, 0x0

    .line 132
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 133
    const-string v2, "phone_lookup"

    const-string v3, "data_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    if-eqz p6, :cond_0

    .line 135
    invoke-static {p6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, normalizedNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v1, phoneValues:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    const-string v2, "data_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string v2, "normalized_number"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "min_match"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "phone_lookup"

    invoke-virtual {p1, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 145
    if-eqz p7, :cond_0

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const-string v2, "normalized_number"

    invoke-virtual {v1, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "min_match"

    invoke-static {p7}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "phone_lookup"

    invoke-virtual {p1, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 153
    .end local v0           #normalizedNumber:Ljava/lang/String;
    .end local v1           #phoneValues:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 185
    const-string v3, "data1"

    invoke-virtual {p1, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, normalizedNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendToken(Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, numberE164:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 180
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 9
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    .line 118
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 119
    .local v4, dataId:J
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 121
    .local v2, rawContactId:J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v8

    .local v8, count:I
    move-object v0, p0

    move-object v1, p1

    move-object v7, v6

    .line 123
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 125
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 126
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 127
    return v8
.end method

.method fixNewSuperPrimaryDataIfNoSuperPrimary(Landroid/database/sqlite/SQLiteDatabase;JZ)J
    .locals 31
    .parameter "db"
    .parameter "contactId"
    .parameter "isAllReset"

    .prologue
    .line 372
    const-wide/16 v27, -0x1

    .line 373
    .local v27, primaryId:J
    const/4 v15, 0x0

    .line 374
    .local v15, c:Landroid/database/Cursor;
    const-string v6, "raw_contacts"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact_id="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 377
    const/4 v5, 0x1

    new-array v0, v5, [I

    move-object/from16 v26, v0

    .line 378
    .local v26, outPrimaryType:[I
    const/4 v14, -0x1

    .line 379
    .local v14, bestType:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v13, bestDataIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 382
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 383
    .local v23, nextRawContactId:J
    const-wide/16 v18, -0x1

    .line 384
    .local v18, dataId:J
    if-eqz p4, :cond_2

    .line 385
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v23

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->findNewPrimaryDataId(Landroid/database/sqlite/SQLiteDatabase;J[I)J

    move-result-wide v18

    .line 390
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v5, v18, v5

    if-ltz v5, :cond_0

    .line 393
    const/4 v5, -0x1

    if-eq v14, v5, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->getTypeRank(I)I

    move-result v5

    const/4 v6, 0x0

    aget v6, v26, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->getTypeRank(I)I

    move-result v6

    if-le v5, v6, :cond_3

    .line 394
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 395
    const/4 v5, 0x0

    aget v14, v26, v5

    .line 397
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 405
    .end local v18           #dataId:J
    .end local v23           #nextRawContactId:J
    :catchall_0
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 406
    const/4 v15, 0x0

    throw v5

    .line 388
    .restart local v18       #dataId:J
    .restart local v23       #nextRawContactId:J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v23

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->findIsSuperPrimaryDataIdForRawContact(Landroid/database/sqlite/SQLiteDatabase;J[I)J

    move-result-wide v18

    goto :goto_1

    .line 399
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->getTypeRank(I)I

    move-result v5

    const/4 v6, 0x0

    aget v6, v26, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->getTypeRank(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 400
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 405
    .end local v18           #dataId:J
    .end local v23           #nextRawContactId:J
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 406
    const/4 v15, 0x0

    .line 409
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 410
    const-string v29, ""

    .line 411
    .local v29, selection:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 412
    .local v30, size:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    .line 413
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 414
    .local v16, dId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 415
    add-int/lit8 v5, v30, -0x1

    move/from16 v0, v20

    if-ge v0, v5, :cond_5

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 412
    :cond_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 419
    .end local v16           #dId:J
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  SELECT _id , data1  FROM data WHERE _id IN ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 420
    const/16 v22, -0x1

    .line 421
    .local v22, max_len:I
    if-eqz v15, :cond_a

    .line 423
    :cond_7
    :goto_3
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 424
    const/4 v5, 0x1

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 425
    .local v25, number:Ljava/lang/String;
    if-eqz v25, :cond_7

    .line 426
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v21

    .line 427
    .local v21, len:I
    const/4 v5, -0x1

    move/from16 v0, v22

    if-eq v0, v5, :cond_8

    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 428
    :cond_8
    move/from16 v22, v21

    .line 429
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v27

    goto :goto_3

    .line 434
    .end local v21           #len:I
    .end local v25           #number:Ljava/lang/String;
    :cond_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v15, 0x0

    .line 439
    .end local v20           #i:I
    .end local v22           #max_len:I
    .end local v29           #selection:Ljava/lang/String;
    .end local v30           #size:I
    :cond_a
    return-wide v27

    .line 434
    .restart local v20       #i:I
    .restart local v22       #max_len:I
    .restart local v29       #selection:Ljava/lang/String;
    .restart local v30       #size:I
    :catchall_1
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v15, 0x0

    throw v5
.end method

.method fixNewSuperPrimaryDataIfNoSuperPrimary2(Landroid/database/sqlite/SQLiteDatabase;JZ)J
    .locals 38
    .parameter "db"
    .parameter "contactId"
    .parameter "AllReset"

    .prologue
    .line 238
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v18, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v16, dataIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v13, dataFacebookList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const-string v5, ""

    .line 243
    .local v5, appendCondition:Ljava/lang/String;
    if-nez p4, :cond_1

    .line 244
    const-string v5, "   AND is_super_primary = 1  "

    .line 253
    :cond_0
    :goto_0
    const/4 v10, -0x1

    .line 255
    .local v10, bestTypePriority:I
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "   SELECT data._id, data2, data1, is_primary, is_super_primary, account_type FROM data join raw_contacts on (data.raw_contact_id = raw_contacts._id)   WHERE mimetype_id =  "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->getMimeTypeId()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "   AND contact_id = "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 261
    .local v30, queryString:Ljava/lang/String;
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 264
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_2

    .line 265
    const-wide/16 v8, -0x1

    .line 366
    :goto_1
    return-wide v8

    .line 247
    .end local v10           #bestTypePriority:I
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v30           #queryString:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->getMimeTypeId()J

    move-result-wide v35

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    move-wide/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->getPrimaryDataCountByContactAndMimeType(JJ)J

    move-result-wide v28

    .line 248
    .local v28, primaryCount:J
    const-wide/16 v35, 0x0

    cmp-long v35, v28, v35

    if-lez v35, :cond_0

    .line 249
    const-string v5, "   AND is_primary = 1  "

    goto :goto_0

    .line 269
    .end local v28           #primaryCount:J
    .restart local v10       #bestTypePriority:I
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v30       #queryString:Ljava/lang/String;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    .line 272
    :try_start_0
    const-string v35, "data2"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 273
    .local v33, typeIdx:I
    const-string v35, "data1"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 274
    .local v17, dataIdx:I
    const-string v35, "account_type"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 276
    .local v26, nAccountTypeIdx:I
    :cond_3
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v35

    if-eqz v35, :cond_9

    .line 277
    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 278
    .local v34, typeString:Ljava/lang/String;
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 279
    .local v14, dataId:J
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 281
    .local v19, dataString:Ljava/lang/String;
    const/4 v6, 0x0

    .line 282
    .local v6, bFacebookType:Z
    if-nez p4, :cond_4

    const-string v35, "com.htc.socialnetwork.facebook"

    move/from16 v0, v26

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 283
    const/4 v6, 0x1

    .line 286
    :cond_4
    const/16 v32, -0x1

    .line 287
    .local v32, type:I
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v35

    if-nez v35, :cond_5

    .line 289
    :try_start_1
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v32

    .line 295
    :cond_5
    :goto_3
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v10, v0, :cond_7

    .line 296
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->getTypeRank(I)I

    move-result v10

    .line 297
    if-nez p4, :cond_6

    .line 298
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_6
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 325
    .end local v6           #bFacebookType:Z
    .end local v14           #dataId:J
    .end local v17           #dataIdx:I
    .end local v19           #dataString:Ljava/lang/String;
    .end local v26           #nAccountTypeIdx:I
    .end local v32           #type:I
    .end local v33           #typeIdx:I
    .end local v34           #typeString:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 326
    .local v20, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 327
    const-string v35, "PERFORMANCE_FIX_SUPER_PRIMARY"

    const-string v36, "crash"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 333
    .end local v20           #e:Ljava/lang/Exception;
    :goto_4
    const-wide/16 v8, -0x1

    .line 334
    .local v8, bestPrimaryId:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 335
    .local v31, size:I
    if-nez v31, :cond_a

    .line 336
    const-wide/16 v8, -0x1

    goto/16 :goto_1

    .line 290
    .end local v8           #bestPrimaryId:J
    .end local v31           #size:I
    .restart local v6       #bFacebookType:Z
    .restart local v14       #dataId:J
    .restart local v17       #dataIdx:I
    .restart local v19       #dataString:Ljava/lang/String;
    .restart local v26       #nAccountTypeIdx:I
    .restart local v32       #type:I
    .restart local v33       #typeIdx:I
    .restart local v34       #typeString:Ljava/lang/String;
    :catch_1
    move-exception v20

    .line 291
    .restart local v20       #e:Ljava/lang/Exception;
    const/16 v32, -0x1

    goto :goto_3

    .line 304
    .end local v20           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->getTypeRank(I)I

    move-result v11

    .line 305
    .local v11, currentRank:I
    if-le v10, v11, :cond_8

    .line 306
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->getTypeRank(I)I

    move-result v10

    .line 307
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 308
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 309
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    if-nez p4, :cond_3

    .line 312
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 313
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 330
    .end local v6           #bFacebookType:Z
    .end local v11           #currentRank:I
    .end local v14           #dataId:J
    .end local v17           #dataIdx:I
    .end local v19           #dataString:Ljava/lang/String;
    .end local v26           #nAccountTypeIdx:I
    .end local v32           #type:I
    .end local v33           #typeIdx:I
    .end local v34           #typeString:Ljava/lang/String;
    :catchall_0
    move-exception v35

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v35

    .line 316
    .restart local v6       #bFacebookType:Z
    .restart local v11       #currentRank:I
    .restart local v14       #dataId:J
    .restart local v17       #dataIdx:I
    .restart local v19       #dataString:Ljava/lang/String;
    .restart local v26       #nAccountTypeIdx:I
    .restart local v32       #type:I
    .restart local v33       #typeIdx:I
    .restart local v34       #typeString:Ljava/lang/String;
    :cond_8
    if-ne v10, v11, :cond_3

    .line 317
    :try_start_5
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    if-nez p4, :cond_3

    .line 320
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 330
    .end local v6           #bFacebookType:Z
    .end local v11           #currentRank:I
    .end local v14           #dataId:J
    .end local v19           #dataString:Ljava/lang/String;
    .end local v32           #type:I
    .end local v34           #typeString:Ljava/lang/String;
    :cond_9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 339
    .end local v17           #dataIdx:I
    .end local v26           #nAccountTypeIdx:I
    .end local v33           #typeIdx:I
    .restart local v8       #bestPrimaryId:J
    .restart local v31       #size:I
    :cond_a
    const/16 v25, -0x1

    .line 340
    .local v25, maxLen:I
    const/4 v7, -0x1

    .line 341
    .local v7, bestIndex:I
    if-nez p4, :cond_b

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->findBestSuperPrimary(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v7

    .line 344
    :cond_b
    if-lez v31, :cond_f

    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v0, v7, :cond_f

    .line 345
    const/16 v23, 0x0

    .line 346
    .local v23, index:I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v31

    if-ge v0, v1, :cond_f

    .line 347
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 348
    .local v27, number:Ljava/lang/String;
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Long;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 349
    .local v21, id:J
    if-nez v27, :cond_d

    .line 346
    :cond_c
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 350
    :cond_d
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v24

    .line 351
    .local v24, len:I
    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-ne v0, v1, :cond_e

    .line 352
    move/from16 v25, v24

    .line 353
    move/from16 v7, v23

    goto :goto_6

    .line 357
    :cond_e
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    .line 358
    move/from16 v25, v24

    .line 359
    move/from16 v7, v23

    goto :goto_6

    .line 365
    .end local v21           #id:J
    .end local v23           #index:I
    .end local v24           #len:I
    .end local v27           #number:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Long;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 366
    goto/16 :goto_1
.end method

.method protected getTypeRank(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 174
    :pswitch_0
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 158
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 161
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 162
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 163
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 165
    :pswitch_7
    const/4 v0, 0x6

    goto :goto_0

    .line 166
    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    .line 167
    :pswitch_9
    const/16 v0, 0x8

    goto :goto_0

    .line 168
    :pswitch_a
    const/16 v0, 0x9

    goto :goto_0

    .line 169
    :pswitch_b
    const/16 v0, 0xa

    goto :goto_0

    .line 170
    :pswitch_c
    const/16 v0, 0xb

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 8
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 55
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, numberE164:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 61
    const-string v0, "data4"

    invoke-virtual {p5, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v4

    .local v4, dataId:J
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    .line 67
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 69
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 76
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/android/providers/contacts/ContactAggregator;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;JZ)V

    .line 82
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #numberE164:Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 79
    .end local v4           #dataId:J
    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v4

    .restart local v4       #dataId:J
    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 9
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    .local v6, number:Ljava/lang/String;
    const/4 v7, 0x0

    .line 90
    .local v7, numberE164:Ljava/lang/String;
    const-string v1, "data1"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "data1"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    if-eqz v6, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 96
    :cond_0
    if-eqz v7, :cond_1

    .line 97
    const-string v1, "data4"

    invoke-virtual {p3, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    :goto_0
    return v0

    .line 105
    :cond_2
    const-string v1, "data1"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 107
    .local v4, dataId:J
    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .local v2, rawContactId:J
    move-object v0, p0

    move-object v1, p1

    .line 108
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 110
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 111
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .end local v2           #rawContactId:J
    .end local v4           #dataId:J
    :cond_3
    move v0, v8

    .line 113
    goto :goto_0
.end method
