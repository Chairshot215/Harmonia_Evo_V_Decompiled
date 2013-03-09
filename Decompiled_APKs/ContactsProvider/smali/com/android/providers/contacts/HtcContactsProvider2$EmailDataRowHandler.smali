.class Lcom/android/providers/contacts/HtcContactsProvider2$EmailDataRowHandler;
.super Lcom/android/providers/contacts/DataRowHandlerForEmail;
.source "HtcContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmailDataRowHandler"
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
    .line 10365
    iput-object p1, p0, Lcom/android/providers/contacts/HtcContactsProvider2$EmailDataRowHandler;->this$0:Lcom/android/providers/contacts/HtcContactsProvider2;

    .line 10366
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForEmail;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V

    .line 10367
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 11
    .parameter "db"
    .parameter "transactionContext"
    .parameter "c"

    .prologue
    .line 10418
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 10425
    .local v6, id:J
    :try_start_0
    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;

    move-result-object v4

    .line 10427
    .local v4, controller:Lcom/android/providers/contacts/CompiledStatementController;
    invoke-virtual {v4, v6, v7}, Lcom/android/providers/contacts/CompiledStatementController;->queryIsDefaultActionByDataId(J)J

    move-result-wide v0

    .line 10429
    .local v0, action:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 10432
    invoke-virtual {v4, v6, v7}, Lcom/android/providers/contacts/CompiledStatementController;->removeDefaultActionByDataId(J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10438
    .end local v0           #action:J
    .end local v4           #controller:Lcom/android/providers/contacts/CompiledStatementController;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v5

    .line 10439
    .local v5, count:I
    if-lez v5, :cond_1

    .line 10440
    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v9, 0x2

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v2

    .line 10442
    .local v2, contactId:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_1

    .line 10443
    sget-object v8, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v8, v2, v3}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    .line 10446
    .end local v2           #contactId:J
    :cond_1
    return v5

    .line 10435
    .end local v5           #count:I
    :catch_0
    move-exception v8

    goto :goto_0

    .line 10434
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 9
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    const-wide/16 v7, 0x0

    .line 10374
    const-string v5, "data1"

    invoke-virtual {p5, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10375
    .local v4, email:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10376
    const-string v5, "data13"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p5, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10380
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 10383
    .local v2, dataId:J
    cmp-long v5, v2, v7

    if-lez v5, :cond_1

    .line 10384
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 10385
    .local v0, contactId:J
    cmp-long v5, v0, v7

    if-lez v5, :cond_1

    .line 10386
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v5, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    .line 10389
    .end local v0           #contactId:J
    :cond_1
    return-wide v2
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 7
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 10396
    const-string v4, "data1"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10397
    .local v2, email:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10398
    const-string v4, "data13"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10402
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v3

    .line 10405
    .local v3, result:Z
    if-eqz v3, :cond_1

    .line 10406
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v5, 0x1

    invoke-interface {p4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 10408
    .local v0, contactId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 10409
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v4, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    .line 10412
    .end local v0           #contactId:J
    :cond_1
    return v3
.end method
