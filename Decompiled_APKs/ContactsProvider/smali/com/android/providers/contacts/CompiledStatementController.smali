.class public Lcom/android/providers/contacts/CompiledStatementController;
.super Ljava/lang/Object;
.source "CompiledStatementController.java"


# instance fields
.field private mClearCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

.field private mClearCalllogByNumberAndType:Landroid/database/sqlite/SQLiteStatement;

.field private mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mInsertOrReplaceFrequency:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryFrequencyInCallLog:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryIsDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryMimetypeCountByTypeByRawContactId:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryPersonPhoneCountByNumber:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryPhoneNumberById:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryPhoneTypeById:Landroid/database/sqlite/SQLiteStatement;

.field private mQueryRecordNumByContactId:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactHasPhone:Landroid/database/sqlite/SQLiteStatement;

.field private mRemoveDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

.field private mTimesInFrequencyTable:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateCalllogType:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateFrequency:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 60
    return-void
.end method

.method private obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 453
    return-object v0
.end method


# virtual methods
.method public clearCalllogByNumber(JLjava/lang/String;)V
    .locals 3
    .parameter "rawContactId"
    .parameter "number"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 151
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 170
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 155
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v1, "UPDATE calls SET numbertype=NULL, name=NULL, raw_contact_id=NULL, numberlabel=NULL  WHERE raw_contact_id=?  AND PHONE_NUMBERS_EQUAL(number, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    .line 166
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 167
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public clearCalllogByNumberAndType(JJLjava/lang/String;)V
    .locals 3
    .parameter "rawContactId"
    .parameter "phoneType"
    .parameter "number"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumberAndType:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 175
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 193
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 178
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v1, "UPDATE calls SET numbertype=NULL, name=NULL, raw_contact_id=NULL, numberlabel=NULL  WHERE raw_contact_id=?  AND numbertype=?  AND PHONE_NUMBERS_EQUAL(number, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumberAndType:Landroid/database/sqlite/SQLiteStatement;

    .line 189
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumberAndType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 190
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumberAndType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 191
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumberAndType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumberAndType:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public insertOrReplaceFrequency(JJJ)V
    .locals 3
    .parameter "rawContactId"
    .parameter "frequencyType"
    .parameter "countsInCalls"

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mInsertOrReplaceFrequency:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 436
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 448
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 439
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v1, " INSERT OR REPLACE INTO frequency(raw_contact_id, type, times)  VALUES (? , ? , ?) "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mInsertOrReplaceFrequency:Landroid/database/sqlite/SQLiteStatement;

    .line 444
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mInsertOrReplaceFrequency:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 445
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mInsertOrReplaceFrequency:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 446
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mInsertOrReplaceFrequency:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 447
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mInsertOrReplaceFrequency:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0
.end method

.method public isHasPhone(JJLjava/lang/String;)Z
    .locals 8
    .parameter "rawContactId"
    .parameter "mimeTypeId"
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 360
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v5

    .line 364
    :cond_1
    iget-object v6, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRawContactHasPhone:Landroid/database/sqlite/SQLiteStatement;

    if-nez v6, :cond_2

    .line 365
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 366
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_0

    .line 369
    const-string v6, " SELECT COUNT(data._id) FROM raw_contacts JOIN data ON (raw_contacts._id = data.raw_contact_id)  WHERE raw_contact_id= ? AND  mimetype_id = ? AND PHONE_NUMBERS_EQUAL(data1, ?) AND deleted  = 0 "

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    iput-object v6, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRawContactHasPhone:Landroid/database/sqlite/SQLiteStatement;

    .line 375
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    iget-object v6, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRawContactHasPhone:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v6, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 376
    iget-object v6, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRawContactHasPhone:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 377
    iget-object v6, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRawContactHasPhone:Landroid/database/sqlite/SQLiteStatement;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 378
    const-wide/16 v0, 0x0

    .line 380
    .local v0, counts:J
    :try_start_0
    iget-object v6, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRawContactHasPhone:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 384
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    :goto_2
    move v5, v4

    goto :goto_0

    .line 381
    :catch_0
    move-exception v3

    .line 382
    .local v3, e:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v0, 0x0

    goto :goto_1

    .end local v3           #e:Landroid/database/sqlite/SQLiteDoneException;
    :cond_3
    move v4, v5

    .line 384
    goto :goto_2
.end method

.method public queryFrequencyInCallLog(JIILjava/lang/String;)J
    .locals 7
    .parameter "rawContactId"
    .parameter "callLogType_1"
    .parameter "callLogType_2"
    .parameter "number"

    .prologue
    .line 389
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryFrequencyInCallLog:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 391
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    .line 392
    const-wide/16 v0, 0x0

    .line 411
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-wide v0

    .line 394
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v3, " SELECT COUNT(_id) FROM calls WHERE raw_contact_id= ? AND ( type= ? OR type = ? ) AND PHONE_NUMBERS_EQUAL(number, ?) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryFrequencyInCallLog:Landroid/database/sqlite/SQLiteStatement;

    .line 401
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryFrequencyInCallLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 402
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryFrequencyInCallLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    int-to-long v5, p3

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 403
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryFrequencyInCallLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    int-to-long v5, p4

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 404
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryFrequencyInCallLog:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 406
    const-wide/16 v0, 0x0

    .line 408
    .local v0, countsInCalls:J
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryFrequencyInCallLog:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public queryIsDefaultActionByDataId(J)J
    .locals 5
    .parameter "dataId"

    .prologue
    .line 291
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryIsDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 293
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 294
    const-wide/16 v1, 0x0

    .line 312
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-wide v1

    .line 296
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v3, " SELECT data12 FROM data WHERE _id =?"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryIsDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

    .line 305
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const-wide/16 v1, 0x0

    .line 307
    .local v1, isDefaultAction:J
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryIsDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 308
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryIsDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 309
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public queryMimetypeCountByTypeByRawContactId(Ljava/lang/String;J)J
    .locals 6
    .parameter "mimeType"
    .parameter "rawContactId"

    .prologue
    .line 268
    iget-object v4, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryMimetypeCountByTypeByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    if-nez v4, :cond_1

    .line 269
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 270
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_0

    .line 271
    const-wide/16 v0, 0x0

    .line 288
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-wide v0

    .line 274
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v4, " SELECT COUNT(mimetypes._id) FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetypes.mimetype =? AND raw_contact_id =?"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryMimetypeCountByTypeByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    .line 280
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v4, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryMimetypeCountByTypeByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 281
    iget-object v4, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryMimetypeCountByTypeByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 282
    const-wide/16 v0, 0x0

    .line 284
    .local v0, count:J
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryMimetypeCountByTypeByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v3

    .line 286
    .local v3, e:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public queryPersonPhoneCountByNumber(JJLjava/lang/String;)J
    .locals 5
    .parameter "mimetypeId"
    .parameter "rawContactId"
    .parameter "number"

    .prologue
    .line 196
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPersonPhoneCountByNumber:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 198
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 199
    const-wide/16 v0, 0x0

    .line 219
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-wide v0

    .line 201
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const-string v3, " SELECT count(data._id)  FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)  WHERE mimetype_id = ? AND raw_contacts._id = ? AND PHONE_NUMBERS_EQUAL(data1, ?) "

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPersonPhoneCountByNumber:Landroid/database/sqlite/SQLiteStatement;

    .line 208
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    const-wide/16 v0, 0x0

    .line 210
    .local v0, count:J
    if-eqz p5, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPersonPhoneCountByNumber:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPersonPhoneCountByNumber:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 212
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPersonPhoneCountByNumber:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 213
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPersonPhoneCountByNumber:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPersonPhoneCountByNumber:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public queryPhoneNumberById(J)Ljava/lang/String;
    .locals 4
    .parameter "dataId"

    .prologue
    .line 244
    iget-object v2, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPhoneNumberById:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 246
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 247
    const/4 v1, 0x0

    .line 264
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v1

    .line 249
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v2, "SELEcT data1 FROM data WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPhoneNumberById:Landroid/database/sqlite/SQLiteStatement;

    .line 256
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v1, 0x0

    .line 258
    .local v1, number:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPhoneNumberById:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 259
    iget-object v2, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPhoneNumberById:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public queryPhoneTypeById(J)J
    .locals 5
    .parameter "dataId"

    .prologue
    .line 222
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPhoneTypeById:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 224
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 225
    const-wide/16 v1, -0x1

    .line 241
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-wide v1

    .line 227
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v3, "SELECT data2 FROM data WHERE _id=?"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPhoneTypeById:Landroid/database/sqlite/SQLiteStatement;

    .line 234
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const-wide/16 v1, 0x0

    .line 236
    .local v1, oldType:J
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPhoneTypeById:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 237
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPhoneTypeById:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public queryRecordNumByContactId(J)J
    .locals 5
    .parameter "contactId"

    .prologue
    .line 82
    const-wide/16 v1, -0x1

    .line 83
    .local v1, recordNum:J
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryRecordNumByContactId:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 85
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 86
    const-wide/16 v3, 0x0

    .line 101
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-wide v3

    .line 88
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v3, "SELECT sourceid FROM raw_contacts WHERE account_type =\'com.anddroid.contacts.sim\' AND contact_id=?"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryRecordNumByContactId:Landroid/database/sqlite/SQLiteStatement;

    .line 96
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryRecordNumByContactId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 97
    iget-object v3, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryRecordNumByContactId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_1
    move-wide v3, v1

    .line 101
    goto :goto_0

    .line 98
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public queryTimesInFrequencyTable(JI)J
    .locals 8
    .parameter "rawContactId"
    .parameter "frequencyType"

    .prologue
    .line 338
    iget-object v4, p0, Lcom/android/providers/contacts/CompiledStatementController;->mTimesInFrequencyTable:Landroid/database/sqlite/SQLiteStatement;

    if-nez v4, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 340
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 341
    const-wide/16 v2, 0x0

    .line 356
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-wide v2

    .line 343
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v4, " SELECT times FROM frequency WHERE raw_contact_id=? AND type=?"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/contacts/CompiledStatementController;->mTimesInFrequencyTable:Landroid/database/sqlite/SQLiteStatement;

    .line 347
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v4, p0, Lcom/android/providers/contacts/CompiledStatementController;->mTimesInFrequencyTable:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 348
    iget-object v4, p0, Lcom/android/providers/contacts/CompiledStatementController;->mTimesInFrequencyTable:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x2

    int-to-long v6, p3

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 350
    const-wide/16 v2, 0x0

    .line 352
    .local v2, times:J
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/CompiledStatementController;->mTimesInFrequencyTable:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, e:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public recycleAllCompileStatements()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryRecordNumByContactId:Landroid/database/sqlite/SQLiteStatement;

    .line 64
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    .line 65
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogType:Landroid/database/sqlite/SQLiteStatement;

    .line 66
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    .line 67
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mClearCalllogByNumberAndType:Landroid/database/sqlite/SQLiteStatement;

    .line 68
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPersonPhoneCountByNumber:Landroid/database/sqlite/SQLiteStatement;

    .line 69
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPhoneTypeById:Landroid/database/sqlite/SQLiteStatement;

    .line 70
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryPhoneNumberById:Landroid/database/sqlite/SQLiteStatement;

    .line 71
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryMimetypeCountByTypeByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    .line 72
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryIsDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

    .line 73
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRemoveDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

    .line 74
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mTimesInFrequencyTable:Landroid/database/sqlite/SQLiteStatement;

    .line 75
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRawContactHasPhone:Landroid/database/sqlite/SQLiteStatement;

    .line 76
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mQueryFrequencyInCallLog:Landroid/database/sqlite/SQLiteStatement;

    .line 77
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateFrequency:Landroid/database/sqlite/SQLiteStatement;

    .line 78
    iput-object v0, p0, Lcom/android/providers/contacts/CompiledStatementController;->mInsertOrReplaceFrequency:Landroid/database/sqlite/SQLiteStatement;

    .line 79
    return-void
.end method

.method public removeDefaultActionByDataId(J)V
    .locals 3
    .parameter "dataId"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRemoveDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1

    .line 317
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 318
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 334
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 321
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v1, " UPDATE contacts SET default_action = NULL WHERE _id = (  SELECT contact_id FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE data._id =? ) "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRemoveDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

    .line 332
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRemoveDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 333
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mRemoveDefaultActionByDataId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public updateCalllogByNumber(JJLjava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "rawContactId"
    .parameter "number"

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 124
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 111
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v1, "UPDATE calls SET numbertype=?, raw_contact_id=?  WHERE raw_contact_id IS NULL AND  PHONE_NUMBERS_EQUAL(number, ?) "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    .line 120
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 121
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 122
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogByNumber:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public updateCalllogType(JJJLjava/lang/String;)V
    .locals 3
    .parameter "newType"
    .parameter "rawContactId"
    .parameter "type"
    .parameter "number"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogType:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 146
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 132
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v1, "UPDATE calls SET numbertype=?  WHERE raw_contact_id=?  AND numbertype=?  AND PHONE_NUMBERS_EQUAL(number, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogType:Landroid/database/sqlite/SQLiteStatement;

    .line 141
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 142
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 143
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 144
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateCalllogType:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public updateFrequency(JJJ)V
    .locals 3
    .parameter "countsInCalls"
    .parameter "rawContactId"
    .parameter "frequencyType"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateFrequency:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1

    .line 416
    invoke-direct {p0}, Lcom/android/providers/contacts/CompiledStatementController;->obtainDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 417
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 431
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 420
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const-string v1, " UPDATE frequency  SET times = (times + ? )  WHERE raw_contact_id = ? AND type = ? "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateFrequency:Landroid/database/sqlite/SQLiteStatement;

    .line 427
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateFrequency:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 428
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateFrequency:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 429
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateFrequency:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 430
    iget-object v1, p0, Lcom/android/providers/contacts/CompiledStatementController;->mUpdateFrequency:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method
