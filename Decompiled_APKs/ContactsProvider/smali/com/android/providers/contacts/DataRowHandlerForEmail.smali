.class public Lcom/android/providers/contacts/DataRowHandlerForEmail;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForEmail.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 7
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 33
    const-string v4, "vnd.android.cursor.item/email_v2"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 106
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 101
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 77
    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 78
    .local v1, dataId:J
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 80
    .local v3, rawContactId:J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 82
    .local v0, count:I
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 83
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 84
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 85
    return v0
.end method

.method protected getTypeRank(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 90
    packed-switch p1, :pswitch_data_0

    .line 95
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 91
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 94
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J
    .locals 7
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 41
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, email:Ljava/lang/String;
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v3

    .line 45
    .local v3, dataId:J
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 46
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, address:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/android/providers/contacts/ContactAggregator;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;JZ)V

    .line 51
    :cond_0
    return-wide v3
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 8
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 72
    :goto_0
    return v0

    .line 61
    :cond_0
    const-string v7, "data1"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 62
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 63
    .local v3, dataId:J
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 65
    .local v1, rawContactId:J
    const-string v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, address:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 67
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    .line 68
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 69
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForEmail;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .end local v1           #rawContactId:J
    .end local v3           #dataId:J
    .end local v5           #address:Ljava/lang/String;
    :cond_1
    move v0, v6

    .line 72
    goto :goto_0
.end method
