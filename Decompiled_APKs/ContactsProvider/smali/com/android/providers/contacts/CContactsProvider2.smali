.class public Lcom/android/providers/contacts/CContactsProvider2;
.super Lcom/android/providers/contacts/ContactsProvider2;
.source "CContactsProvider2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CContactsProvider2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsProvider2;-><init>()V

    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 157
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 159
    .local v2, result:[Landroid/content/ContentProviderResult;
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/providers/contacts/ContactsProvider2;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 170
    :goto_0
    return-object v2

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CContactsProvider2"

    const-string v4, " "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 162
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 163
    .local v1, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CContactsProvider2"

    const-string v4, " "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 175
    const/4 v2, 0x0

    .line 177
    .local v2, result:I
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 188
    :goto_0
    return v2

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CContactsProvider2"

    const-string v4, " "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 181
    .local v1, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CContactsProvider2"

    const-string v4, " "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, deleteNum:I
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 102
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v2

    .line 103
    .local v2, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 197
    const/4 v2, 0x0

    .line 199
    .local v2, result:I
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactsProvider2;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 205
    :goto_0
    return v2

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 203
    .local v1, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/CContactsProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    invoke-static {p1}, Lcom/android/providers/contacts/COpenHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/COpenHelper;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 117
    .local v2, insertionUri:Landroid/net/Uri;
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 129
    :goto_0
    return-object v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 213
    const/4 v2, 0x0

    .line 215
    .local v2, result:Landroid/net/Uri;
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 221
    :goto_0
    return-object v2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 218
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 219
    .local v1, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 230
    const/4 v2, 0x0

    .line 232
    .local v2, result:Landroid/database/Cursor;
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 238
    :goto_0
    return-object v2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 235
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 236
    .local v1, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 137
    .local v2, updateNum:I
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 148
    :goto_0
    return v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CContactsProvider2"

    const-string v4, " "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 141
    .local v1, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CContactsProvider2"

    const-string v4, "Catch Exception: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 267
    const/4 v2, 0x0

    .line 269
    .local v2, result:I
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 275
    :goto_0
    return v2

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 272
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 273
    .local v1, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CContactsProvider2"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
