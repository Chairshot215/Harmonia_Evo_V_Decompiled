.class Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;
.super Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneDataRowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HtcContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/HtcContactsProvider2;Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 10090
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 10091
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    .line 10092
    return-void
.end method

.method private getPersonNumberCounts(JJLjava/lang/String;)J
    .locals 8
    .parameter "rawContactId"
    .parameter "type"
    .parameter "number"

    .prologue
    .line 10319
    const-wide/16 v6, 0x0

    .line 10322
    .local v6, count:J
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v0

    .line 10324
    .local v0, controller:Lcom/android/providers/contacts/CompiledStatementController;
    if-eqz p5, :cond_0

    .line 10333
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->getMimeTypeId()J

    move-result-wide v1

    move-wide v3, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/CompiledStatementController;->queryPersonPhoneCountByNumber(JJLjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 10339
    .end local v0           #controller:Lcom/android/providers/contacts/CompiledStatementController;
    :cond_0
    :goto_0
    return-wide v6

    .line 10336
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isHasPhone(JLjava/lang/String;)Z
    .locals 6
    .parameter "rawContactId"
    .parameter "number"

    .prologue
    .line 10299
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10300
    const/4 v1, 0x0

    .line 10314
    :goto_0
    return v1

    .line 10312
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v0

    .line 10314
    .local v0, controller:Lcom/android/providers/contacts/CompiledStatementController;
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->getMimeTypeId()J

    move-result-wide v3

    move-wide v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/CompiledStatementController;->isHasPhone(JJLjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private updateBlackNumber(JLjava/lang/String;)V
    .locals 8
    .parameter "rawContactId"
    .parameter "number"

    .prologue
    const/4 v7, 0x1

    .line 10345
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v2, v2, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "blocked_number"

    const-string v4, "PHONE_NUMBERS_EQUAL(number, ?)"

    new-array v5, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 10348
    .local v1, count:I
    if-lez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 10355
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 10356
    .local v0, BlackValues:Landroid/content/ContentValues;
    const-string v2, "send_to_voicemail"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10357
    iget-object v2, p0, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    iget-object v2, v2, Lcom/android/providers/contacts/ContactsProvider2;->mActiveDb:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "raw_contacts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 10360
    .end local v0           #BlackValues:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 16
    .parameter "db"
    .parameter "transactionContext"
    .parameter "c"

    .prologue
    .line 10250
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 10257
    .local v10, id:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v1

    .line 10259
    .local v1, controller:Lcom/android/providers/contacts/CompiledStatementController;
    invoke-virtual {v1, v10, v11}, Lcom/android/providers/contacts/CompiledStatementController;->queryIsDefaultActionByDataId(J)J

    move-result-wide v7

    .line 10261
    .local v7, action:J
    const-wide/16 v12, 0x0

    cmp-long v12, v7, v12

    if-lez v12, :cond_0

    .line 10264
    invoke-virtual {v1, v10, v11}, Lcom/android/providers/contacts/CompiledStatementController;->removeDefaultActionByDataId(J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10271
    .end local v1           #controller:Lcom/android/providers/contacts/CompiledStatementController;
    .end local v7           #action:J
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v9

    .line 10273
    .local v9, count:I
    if-lez v9, :cond_1

    .line 10274
    const/4 v12, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 10276
    .local v2, rawContactId:J
    const/4 v12, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 10277
    .local v6, number:Ljava/lang/String;
    const/4 v12, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .local v4, phoneType:J
    move-object/from16 v1, p0

    .line 10279
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->getPersonNumberCounts(JJLjava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    .line 10286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v1

    .line 10288
    .restart local v1       #controller:Lcom/android/providers/contacts/CompiledStatementController;
    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/contacts/CompiledStatementController;->clearCalllogByNumberAndType(JJLjava/lang/String;)V

    .line 10291
    sget-object v12, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v12}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyCallLog()V

    .line 10295
    .end local v1           #controller:Lcom/android/providers/contacts/CompiledStatementController;
    .end local v2           #rawContactId:J
    .end local v4           #phoneType:J
    .end local v6           #number:Ljava/lang/String;
    :cond_1
    return v9

    .line 10268
    .end local v9           #count:I
    :catch_0
    move-exception v12

    goto :goto_0

    .line 10267
    :catch_1
    move-exception v12

    goto :goto_0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 20
    .parameter "db"
    .parameter "transactionContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 10098
    const/16 v19, 0x0

    .line 10099
    .local v19, isHasPhone:Z
    const-string v6, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v6}, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->isHasPhone(JLjava/lang/String;)Z

    move-result v19

    .line 10102
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v17

    .line 10106
    .local v17, dataId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v17, v6

    if-lez v6, :cond_0

    .line 10108
    const-string v6, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10109
    .local v8, number:Ljava/lang/String;
    const-string v6, "data2"

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 10117
    .local v4, type:J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v3

    .local v3, controller:Lcom/android/providers/contacts/CompiledStatementController;
    move-wide/from16 v6, p3

    .line 10119
    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/contacts/CompiledStatementController;->updateCalllogByNumber(JJLjava/lang/String;)V

    .line 10122
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v15

    .line 10123
    .local v15, contactId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v8}, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->updateBlackNumber(JLjava/lang/String;)V

    .line 10125
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v6}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyCallLog()V

    .line 10126
    sget-object v6, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    .line 10128
    if-nez v19, :cond_0

    .line 10129
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->getMimeTypeId()J

    move-result-wide v10

    move-wide/from16 v12, p3

    move-object v14, v8

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->loadCallLogIntoFrequencyTable(JJLjava/lang/String;)V
    invoke-static/range {v9 .. v14}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1400(Lcom/android/providers/contacts/HtcContactsProvider2;JJLjava/lang/String;)V

    .line 10134
    .end local v3           #controller:Lcom/android/providers/contacts/CompiledStatementController;
    .end local v4           #type:J
    .end local v8           #number:Ljava/lang/String;
    .end local v15           #contactId:J
    :cond_0
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isFaceBookPhoneProject()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10135
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const/4 v7, 0x1

    move-wide/from16 v0, p3

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->downloadOriginalFacebookLargePhoto(JZ)V
    invoke-static {v6, v0, v1, v7}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1500(Lcom/android/providers/contacts/HtcContactsProvider2;JZ)V

    .line 10138
    :cond_1
    return-wide v17
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 21
    .parameter "db"
    .parameter "transactionContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 10145
    const/4 v8, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 10146
    .local v5, rawContactId:J
    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 10148
    .local v18, dataId:J
    const/16 v20, 0x0

    .line 10149
    .local v20, updateNumber:Z
    const/4 v15, 0x0

    .line 10150
    .local v15, oldNumber:Ljava/lang/String;
    const-wide/16 v13, 0x0

    .line 10151
    .local v13, oldType:J
    const-string v8, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 10152
    const/16 v20, 0x1

    .line 10157
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v2

    .line 10159
    .local v2, controller:Lcom/android/providers/contacts/CompiledStatementController;
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/CompiledStatementController;->queryPhoneNumberById(J)Ljava/lang/String;

    move-result-object v15

    .line 10165
    invoke-virtual {v2, v5, v6, v15}, Lcom/android/providers/contacts/CompiledStatementController;->clearCalllogByNumber(JLjava/lang/String;)V

    .line 10177
    .end local v2           #controller:Lcom/android/providers/contacts/CompiledStatementController;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v8, v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v16

    .line 10178
    .local v16, contactId:J
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 10180
    sget-object v8, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    .line 10184
    :cond_1
    if-eqz v20, :cond_5

    .line 10185
    const-string v8, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10187
    .local v7, newNumber:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 10188
    .local v3, newType:J
    const-string v8, "data2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 10189
    const-string v8, "data2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 10205
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v2

    .line 10207
    .restart local v2       #controller:Lcom/android/providers/contacts/CompiledStatementController;
    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/contacts/CompiledStatementController;->updateCalllogByNumber(JJLjava/lang/String;)V

    .line 10210
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->updateBlackNumber(JLjava/lang/String;)V

    .line 10212
    sget-object v8, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v8}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyCallLog()V

    .line 10240
    .end local v2           #controller:Lcom/android/providers/contacts/CompiledStatementController;
    .end local v3           #newType:J
    .end local v7           #newNumber:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isFaceBookPhoneProject()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 10241
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/HtcContactsProvider2$PhoneDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    const/4 v9, 0x1

    #calls: Lcom/android/providers/contacts/HtcContactsProvider2;->downloadOriginalFacebookLargePhoto(JZ)V
    invoke-static {v8, v5, v6, v9}, Lcom/android/providers/contacts/HtcContactsProvider2;->access$1500(Lcom/android/providers/contacts/HtcContactsProvider2;JZ)V

    .line 10244
    :cond_2
    const/4 v8, 0x1

    return v8

    .line 10167
    .end local v16           #contactId:J
    :cond_3
    const-string v8, "data2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10172
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v2

    .line 10174
    .restart local v2       #controller:Lcom/android/providers/contacts/CompiledStatementController;
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/CompiledStatementController;->queryPhoneTypeById(J)J

    move-result-wide v13

    goto :goto_0

    .line 10195
    .end local v2           #controller:Lcom/android/providers/contacts/CompiledStatementController;
    .restart local v3       #newType:J
    .restart local v7       #newNumber:Ljava/lang/String;
    .restart local v16       #contactId:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v2

    .line 10197
    .restart local v2       #controller:Lcom/android/providers/contacts/CompiledStatementController;
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/CompiledStatementController;->queryPhoneTypeById(J)J

    move-result-wide v3

    goto :goto_1

    .line 10214
    .end local v2           #controller:Lcom/android/providers/contacts/CompiledStatementController;
    .end local v3           #newType:J
    .end local v7           #newNumber:Ljava/lang/String;
    :cond_5
    const-string v8, "data2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 10215
    const-string v8, "data2"

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 10220
    .restart local v3       #newType:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v2

    .line 10222
    .restart local v2       #controller:Lcom/android/providers/contacts/CompiledStatementController;
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/CompiledStatementController;->queryPhoneNumberById(J)Ljava/lang/String;

    move-result-object v15

    move-object v8, v2

    move-wide v9, v3

    move-wide v11, v5

    .line 10230
    invoke-virtual/range {v8 .. v15}, Lcom/android/providers/contacts/CompiledStatementController;->updateCalllogType(JJJLjava/lang/String;)V

    .line 10233
    sget-object v8, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v8}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyCallLog()V

    goto :goto_2

    .line 10235
    .end local v2           #controller:Lcom/android/providers/contacts/CompiledStatementController;
    .end local v3           #newType:J
    :cond_6
    const-string v8, "HtcContactsProvider2"

    const-string v9, "PhoneDataRowHandler:update. no number/type specified..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
