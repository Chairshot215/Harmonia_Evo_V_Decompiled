.class public Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForCommonDataKind.java"


# instance fields
.field protected mDataPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

.field private final mLabelColumn:Ljava/lang/String;

.field private final mTypeColumn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "mimetype"
    .parameter "typeColumn"
    .parameter "labelColumn"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 52
    iput-object p5, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    .line 55
    invoke-virtual {p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT COUNT (  data._id )  FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND contact_id=?   AND is_primary = 1 "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mDataPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    .line 63
    return-void
.end method

.method private enforceTypeAndLabel(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "augmented"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 95
    .local v1, hasType:Z
    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 97
    .local v0, hasLabel:Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be specified when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is defined."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0           #hasLabel:Z
    .end local v1           #hasType:Z
    :cond_0
    move v1, v3

    .line 94
    goto :goto_0

    .restart local v1       #hasType:Z
    :cond_1
    move v0, v3

    .line 95
    goto :goto_1

    .line 102
    .restart local v0       #hasLabel:Z
    :cond_2
    return-void
.end method


# virtual methods
.method protected IsEnableAutoPrimary()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method findIsSuperPrimaryDataIdForRawContact(Landroid/database/sqlite/SQLiteDatabase;J[I)J
    .locals 7
    .parameter "db"
    .parameter "rawContactId"
    .parameter "outType"

    .prologue
    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  SELECT _id , data2 FROM data WHERE raw_contact_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    AND mimetype_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getMimeTypeId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  AND is_super_primary = 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, rawQuerying:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 272
    .local v0, c:Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 273
    .local v2, superPrimaryId:J
    if-eqz v0, :cond_1

    .line 275
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 277
    if-eqz p4, :cond_0

    array-length v4, p4

    if-lez v4, :cond_0

    .line 278
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 279
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, p4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 288
    const/4 v0, 0x0

    .line 291
    :cond_1
    return-wide v2

    .line 282
    :cond_2
    const/4 v4, 0x0

    const/4 v5, -0x1

    :try_start_1
    aput v5, p4, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 288
    const/4 v0, 0x0

    throw v4
.end method

.method fixNewSuperPrimaryDataIfNoSuperPrimary(Landroid/database/sqlite/SQLiteDatabase;JZ)J
    .locals 22
    .parameter "db"
    .parameter "contactId"
    .parameter "isAllReset"

    .prologue
    .line 233
    const-wide/16 v20, -0x1

    .line 234
    .local v20, primaryId:J
    const/4 v14, 0x0

    .line 235
    .local v14, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "raw_contacts"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 238
    const/4 v5, 0x1

    new-array v0, v5, [I

    move-object/from16 v19, v0

    .line 239
    .local v19, outPrimaryType:[I
    const/4 v13, -0x1

    .line 241
    .local v13, bestType:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 243
    .local v17, nextRawContactId:J
    const-wide/16 v15, -0x1

    .line 245
    .local v15, dataId:J
    if-eqz p4, :cond_2

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v17

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->findNewPrimaryDataId(Landroid/database/sqlite/SQLiteDatabase;J[I)J

    move-result-wide v15

    .line 252
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v5, v15, v5

    if-ltz v5, :cond_0

    .line 255
    const/4 v5, -0x1

    if-eq v13, v5, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getTypeRank(I)I

    move-result v5

    const/4 v6, 0x0

    aget v6, v19, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getTypeRank(I)I

    move-result v6

    if-le v5, v6, :cond_0

    .line 256
    :cond_1
    const/4 v5, 0x0

    aget v13, v19, v5

    .line 257
    move-wide/from16 v20, v15

    goto :goto_0

    .line 249
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v17

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->findIsSuperPrimaryDataIdForRawContact(Landroid/database/sqlite/SQLiteDatabase;J[I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v15

    goto :goto_1

    .line 262
    .end local v15           #dataId:J
    .end local v17           #nextRawContactId:J
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 264
    return-wide v20

    .line 262
    :catchall_0
    move-exception v5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method fixNewSuperPrimaryDataIfNoSuperPrimary2(Landroid/database/sqlite/SQLiteDatabase;JZ)J
    .locals 29
    .parameter "db"
    .parameter "contactId"
    .parameter "AllReset"

    .prologue
    .line 128
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v16, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v14, dataIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v5, ""

    .line 132
    .local v5, appendCondition:Ljava/lang/String;
    if-nez p4, :cond_2

    .line 133
    const-string v5, " AND is_super_primary = 1  "

    .line 142
    :cond_0
    :goto_0
    const/4 v9, -0x1

    .line 144
    .local v9, bestTypePriority:I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "   SELECT data._id, data2, data1, is_primary, is_super_primary, account_type FROM data join raw_contacts on (data.raw_contact_id = raw_contacts._id)   WHERE mimetype_id =  "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getMimeTypeId()J

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "   AND contact_id = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 150
    .local v22, queryString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 151
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_3

    .line 152
    const-wide/16 v7, -0x1

    .line 224
    :cond_1
    :goto_1
    return-wide v7

    .line 136
    .end local v9           #bestTypePriority:I
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v22           #queryString:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getMimeTypeId()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getPrimaryDataCountByContactAndMimeType(JJ)J

    move-result-wide v20

    .line 137
    .local v20, primaryCount:J
    const-wide/16 v26, 0x0

    cmp-long v26, v20, v26

    if-lez v26, :cond_0

    .line 138
    const-string v5, "   AND is_primary = 1  "

    goto :goto_0

    .line 156
    .end local v20           #primaryCount:J
    .restart local v9       #bestTypePriority:I
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v22       #queryString:Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 161
    :try_start_0
    const-string v26, "data2"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 162
    .local v24, typeIdx:I
    const-string v26, "data1"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 163
    .local v15, dataIdx:I
    const-string v26, "account_type"

    move-object/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 165
    .local v19, nAccountTypeIdx:I
    :cond_4
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 166
    move/from16 v0, v24

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 167
    .local v25, typeString:Ljava/lang/String;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 168
    .local v12, dataId:J
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 170
    .local v17, dataString:Ljava/lang/String;
    const/4 v6, 0x0

    .line 171
    .local v6, bFacebookType:Z
    if-nez p4, :cond_5

    const-string v26, "com.htc.socialnetwork.facebook"

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 172
    const/4 v6, 0x1

    .line 177
    :cond_5
    const/16 v23, -0x1

    .line 178
    .local v23, type:I
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v26

    if-nez v26, :cond_6

    .line 180
    :try_start_1
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v23

    .line 186
    :cond_6
    :goto_3
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v9, v0, :cond_8

    .line 187
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getTypeRank(I)I

    move-result v9

    .line 188
    if-nez p4, :cond_7

    if-eqz v6, :cond_7

    .line 189
    add-int/lit16 v9, v9, 0x3e8

    .line 191
    :cond_7
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 216
    .end local v6           #bFacebookType:Z
    .end local v12           #dataId:J
    .end local v15           #dataIdx:I
    .end local v17           #dataString:Ljava/lang/String;
    .end local v19           #nAccountTypeIdx:I
    .end local v23           #type:I
    .end local v24           #typeIdx:I
    .end local v25           #typeString:Ljava/lang/String;
    :catchall_0
    move-exception v26

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v26

    .line 181
    .restart local v6       #bFacebookType:Z
    .restart local v12       #dataId:J
    .restart local v15       #dataIdx:I
    .restart local v17       #dataString:Ljava/lang/String;
    .restart local v19       #nAccountTypeIdx:I
    .restart local v23       #type:I
    .restart local v24       #typeIdx:I
    .restart local v25       #typeString:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 182
    .local v18, e:Ljava/lang/Exception;
    const/16 v23, -0x1

    goto :goto_3

    .line 195
    .end local v18           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getTypeRank(I)I

    move-result v10

    .line 196
    .local v10, currentRank:I
    if-nez p4, :cond_9

    if-eqz v6, :cond_9

    .line 197
    add-int/lit16 v10, v10, 0x3e8

    .line 199
    :cond_9
    if-le v9, v10, :cond_b

    .line 200
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getTypeRank(I)I

    move-result v9

    .line 201
    if-nez p4, :cond_a

    if-eqz v6, :cond_a

    .line 202
    add-int/lit16 v9, v9, 0x3e8

    .line 204
    :cond_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 205
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 206
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 209
    :cond_b
    if-ne v9, v10, :cond_4

    .line 210
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 216
    .end local v6           #bFacebookType:Z
    .end local v10           #currentRank:I
    .end local v12           #dataId:J
    .end local v17           #dataString:Ljava/lang/String;
    .end local v23           #type:I
    .end local v25           #typeString:Ljava/lang/String;
    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 219
    const-wide/16 v7, -0x1

    .line 221
    .local v7, bestPrimaryId:J
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_1

    .line 222
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto/16 :goto_1
.end method

.method protected getPrimaryDataCountByContactAndMimeType(JJ)J
    .locals 2
    .parameter "contactId"
    .parameter "mimeTypeId"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mDataPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 114
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mDataPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 115
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mDataPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 2
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 70
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->enforceTypeAndLabel(Landroid/content/ContentValues;)V

    .line 72
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 4
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 80
    .local v1, dataId:J
    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 81
    .local v0, augmented:Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return v3

    .line 84
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->enforceTypeAndLabel(Landroid/content/ContentValues;)V

    .line 85
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v3

    goto :goto_0
.end method
