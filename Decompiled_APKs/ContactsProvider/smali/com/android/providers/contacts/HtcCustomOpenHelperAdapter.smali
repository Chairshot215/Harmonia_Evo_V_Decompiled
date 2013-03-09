.class public Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
.super Ljava/lang/Object;
.source "HtcCustomOpenHelperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$DatabaseVersionColumns;,
        Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;
    }
.end annotation


# static fields
.field protected static final DEFAULT_START_VERSION:I = 0x1

.field protected static final TABLE_DATABASE_VERSION:Ljava/lang/String; = "custom_database_version"

.field private static final TAG:Ljava/lang/String; = "HtcCustomOpenHelperAdapter"


# instance fields
.field private mCustomDatabaseVersion:I

.field private mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;)V
    .locals 1
    .parameter "openHelper"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mCustomDatabaseVersion:I

    .line 60
    iput-object p1, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    .line 61
    return-void
.end method


# virtual methods
.method public getCustomDatabaseVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 7
    .parameter "db"
    .parameter "name"

    .prologue
    .line 156
    const/4 v2, -0x1

    .line 157
    .local v2, version:I
    const/4 v4, -0x1

    iget v5, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mCustomDatabaseVersion:I

    if-ne v4, v5, :cond_3

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT version FROM custom_database_version WHERE name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, versionQuery:Ljava/lang/String;
    const/4 v0, 0x0

    .line 164
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    const-string v4, "version"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 173
    :cond_0
    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #versionQuery:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 169
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v3       #versionQuery:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "HtcCustomOpenHelperAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteException @ custom database version query:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 173
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4

    .line 179
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #versionQuery:Ljava/lang/String;
    :cond_3
    iget v2, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mCustomDatabaseVersion:I

    goto :goto_0
.end method

.method public getDatabaseHelper()Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    return-object v0
.end method

.method public getDatabaseVersion()I
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    invoke-interface {v1}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;->getDatabaseVersion()I

    move-result v0

    .line 130
    .local v0, version:I
    if-gtz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    .end local v0           #version:I
    :cond_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    invoke-interface {v1}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;->getName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string v0, "UnknownDatabase"

    .line 124
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getValidAccounts()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    invoke-interface {v1}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;->getValidAccounts()Ljava/util/Set;

    move-result-object v0

    .line 143
    .local v0, validAccounts:Ljava/util/Set;,"Ljava/util/Set<Landroid/accounts/Account;>;"
    if-eqz v0, :cond_0

    .line 147
    .end local v0           #validAccounts:Ljava/util/Set;,"Ljava/util/Set<Landroid/accounts/Account;>;"
    :goto_0
    return-object v0

    .restart local v0       #validAccounts:Ljava/util/Set;,"Ljava/util/Set<Landroid/accounts/Account;>;"
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #validAccounts:Ljava/util/Set;,"Ljava/util/Set<Landroid/accounts/Account;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 73
    const-string v2, "CREATE TABLE IF NOT EXISTS custom_database_version (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,version INTEGER,UNIQUE(name));"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getCustomDatabaseVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, version:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO \'custom_database_version\'(name,version) VALUES(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getDatabaseVersion()I

    move-result v3

    invoke-interface {v2, p1, v1, v3}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE \'custom_database_version\' SET version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    invoke-interface {v3}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;->getDatabaseVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcCustomOpenHelperAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute onCreate() of \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    invoke-interface {v1, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcCustomOpenHelperAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute onOpen() of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter "db"
    .parameter "oldGoogleVersion"
    .parameter "newGoogleVersion"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getCustomDatabaseVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v4

    .line 99
    .local v4, version:I
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getDatabaseVersion()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;IIII)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE \'custom_database_version\' SET version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getDatabaseVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v6

    .line 105
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "HtcCustomOpenHelperAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute onUpgrade() of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'(ver."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to ver."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getDatabaseVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onWipeData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    invoke-interface {v1, p1}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;->onWipeData(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcCustomOpenHelperAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute onWipeData() of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;->mOpenHelper:Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
