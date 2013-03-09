.class public Lcom/android/providers/contacts/DataRowHandlerForOrganization;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForOrganization.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 7
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 38
    const-string v4, "vnd.android.cursor.item/organization"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 142
    const-string v0, "data4"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;)V

    .line 143
    const-string v0, "data1"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 144
    const-string v0, "data8"

    invoke-virtual {p1, v0, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 146
    const-string v0, "data7"

    invoke-virtual {p1, v0, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 147
    const-string v0, "data5"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 148
    const-string v0, "data9"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 149
    const-string v0, "data6"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 131
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 110
    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 111
    .local v1, dataId:J
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 113
    .local v3, rawContactId:J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 114
    .local v0, count:I
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 115
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 116
    return v0
.end method

.method protected getTypeRank(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 125
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 122
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
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
    .line 47
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, company:Ljava/lang/String;
    const-string v0, "data4"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, title:Ljava/lang/String;
    invoke-super/range {p0 .. p6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;Z)J

    move-result-wide v3

    .line 52
    .local v3, dataId:J
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    move-object v0, p0

    move-wide v1, p3

    .line 55
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->insertNameLookupForOrganization(JJLjava/lang/String;Ljava/lang/String;)V

    .line 58
    return-wide v3
.end method

.method public insertNameLookupForOrganization(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "company"
    .parameter "title"

    .prologue
    const/4 v5, 0x5

    .line 155
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-static {p5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    .line 158
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-static {p6}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    .line 161
    :cond_1
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 11
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 64
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    .line 68
    :cond_0
    const-string v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 69
    .local v7, containsCompany:Z
    const-string v0, "data4"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    .line 70
    .local v8, containsTitle:Z
    if-nez v7, :cond_1

    if-eqz v8, :cond_2

    .line 71
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 72
    .local v3, dataId:J
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 76
    .local v1, rawContactId:J
    if-eqz v7, :cond_3

    .line 77
    const-string v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, company:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_4

    .line 88
    const-string v0, "data4"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, title:Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    move-object v0, p0

    .line 100
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->insertNameLookupForOrganization(JJLjava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 105
    .end local v1           #rawContactId:J
    .end local v3           #dataId:J
    .end local v5           #company:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    .restart local v1       #rawContactId:J
    .restart local v3       #dataId:J
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    .line 80
    const-string v0, "SELECT data1 FROM data WHERE _id=?"

    iget-object v9, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, v0, v9}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #company:Ljava/lang/String;
    goto :goto_1

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    .line 91
    const-string v0, "SELECT data4 FROM data WHERE _id=?"

    iget-object v9, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p1, v0, v9}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #title:Ljava/lang/String;
    goto :goto_2
.end method
