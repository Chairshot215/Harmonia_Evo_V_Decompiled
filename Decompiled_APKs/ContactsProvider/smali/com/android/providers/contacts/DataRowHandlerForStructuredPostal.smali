.class public Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForStructuredPostal.java"


# instance fields
.field private final STRUCTURED_FIELDS:[Ljava/lang/String;

.field private final mSplitter:Lcom/android/providers/contacts/PostalSplitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PostalSplitter;)V
    .locals 3
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "splitter"

    .prologue
    .line 49
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->STRUCTURED_FIELDS:[Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    .line 51
    return-void
.end method

.method private fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 8
    .parameter "augmented"
    .parameter "update"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 85
    const-string v7, "data1"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, unstruct:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v5

    .line 88
    .local v3, touchedUnstruct:Z
    :goto_0
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v7}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 90
    .local v2, touchedStruct:Z
    :goto_1
    new-instance v1, Lcom/android/providers/contacts/PostalSplitter$Postal;

    invoke-direct {v1}, Lcom/android/providers/contacts/PostalSplitter$Postal;-><init>()V

    .line 92
    .local v1, postal:Lcom/android/providers/contacts/PostalSplitter$Postal;
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 93
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-virtual {v5, v1, v4}, Lcom/android/providers/contacts/PostalSplitter;->split(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/PostalSplitter$Postal;->toValues(Landroid/content/ContentValues;)V

    .line 101
    :cond_0
    :goto_2
    return-void

    .end local v1           #postal:Lcom/android/providers/contacts/PostalSplitter$Postal;
    .end local v2           #touchedStruct:Z
    .end local v3           #touchedUnstruct:Z
    :cond_1
    move v3, v6

    .line 87
    goto :goto_0

    .restart local v3       #touchedUnstruct:Z
    :cond_2
    move v2, v6

    .line 88
    goto :goto_1

    .line 95
    .restart local v1       #postal:Lcom/android/providers/contacts/PostalSplitter$Postal;
    .restart local v2       #touchedStruct:Z
    :cond_3
    if-nez v3, :cond_0

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/PostalSplitter$Postal;->fromValues(Landroid/content/ContentValues;)V

    .line 98
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-virtual {v5, v1}, Lcom/android/providers/contacts/PostalSplitter;->join(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, joined:Ljava/lang/String;
    const-string v5, "data1"

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 116
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 111
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .line 58
    invoke-direct {p0, p5, p5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 60
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

    .line 67
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 68
    .local v1, dataId:J
    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 69
    .local v0, augmented:Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 75
    :goto_0
    return v3

    .line 73
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 74
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 75
    const/4 v3, 0x1

    goto :goto_0
.end method
