.class public Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;
.super Ljava/lang/Object;
.source "SyncStateContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static DB_VERSION:J

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mInternalProviderInterface:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;

.field final mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    .line 43
    const-string v0, "content://syncstate/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    .line 51
    const-wide/16 v0, 0x3

    sput-wide v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->DB_VERSION:J

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_sync_account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "syncstate"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .parameter "openHelper"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 62
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;-><init>(Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;)V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->mInternalProviderInterface:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;

    .line 63
    return-void
.end method

.method static synthetic access$000()Landroid/content/UriMatcher;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public asContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->mInternalProviderInterface:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;

    return-object v0
.end method

.method public copySyncState(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V
    .locals 10
    .parameter "dbSrc"
    .parameter "dbDest"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 174
    new-array v4, v7, [Ljava/lang/String;

    iget-object v0, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v3

    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v6

    .line 175
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v1, "_sync_state"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_sync_account"

    aput-object v0, v2, v3

    const-string v0, "_sync_account_type"

    aput-object v0, v2, v6

    const-string v0, "data"

    aput-object v0, v2, v7

    const-string v3, "_sync_account = ? AND _sync_account_type = ?"

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 179
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 181
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "_sync_account"

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "_sync_account_type"

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "data"

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 184
    const-string v0, "_sync_state"

    const-string v1, "_sync_account"

    invoke-virtual {p2, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 189
    return-void

    .line 187
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 70
    const-string v1, "DROP TABLE IF EXISTS _sync_state"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v1, "CREATE TABLE _sync_state (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,data TEXT,UNIQUE(_sync_account, _sync_account_type));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v1, "DROP TABLE IF EXISTS _sync_state_metadata"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v1, "CREATE TABLE _sync_state_metadata (version INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "version"

    sget-wide v2, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->DB_VERSION:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    const-string v1, "_sync_state_metadata"

    const-string v2, "version"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 86
    return-void
.end method

.method public discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V
    .locals 5
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 218
    if-eqz p2, :cond_0

    .line 219
    const-string v0, "_sync_state"

    const-string v1, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v0, "_sync_state"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public matches(Landroid/net/Uri;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 160
    const-string v0, "syncstate"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAccountsChanged([Landroid/accounts/Account;)V
    .locals 19
    .parameter "accounts"

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 193
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "_sync_state"

    sget-object v4, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 195
    .local v15, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 196
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 197
    .local v12, accountName:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 198
    .local v13, accountType:Ljava/lang/String;
    new-instance v11, Landroid/accounts/Account;

    invoke-direct {v11, v12, v13}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v11, account:Landroid/accounts/Account;
    const/16 v16, 0x0

    .line 201
    .local v16, contains:Z
    move-object/from16 v14, p1

    .local v14, arr$:[Landroid/accounts/Account;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v10, v14, v17

    .line 202
    .local v10, a:Landroid/accounts/Account;
    invoke-virtual {v11, v10}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    const/16 v16, 0x1

    .line 207
    .end local v10           #a:Landroid/accounts/Account;
    :cond_1
    if-nez v16, :cond_0

    .line 208
    const-string v3, "_sync_state"

    const-string v4, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v12, v5, v6

    const/4 v6, 0x1

    aput-object v13, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 213
    .end local v11           #account:Landroid/accounts/Account;
    .end local v12           #accountName:Ljava/lang/String;
    .end local v13           #accountType:Ljava/lang/String;
    .end local v14           #arr$:[Landroid/accounts/Account;
    .end local v16           #contains:Z
    .end local v17           #i$:I
    .end local v18           #len$:I
    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    .line 201
    .restart local v10       #a:Landroid/accounts/Account;
    .restart local v11       #account:Landroid/accounts/Account;
    .restart local v12       #accountName:Ljava/lang/String;
    .restart local v13       #accountType:Ljava/lang/String;
    .restart local v14       #arr$:[Landroid/accounts/Account;
    .restart local v16       #contains:Z
    .restart local v17       #i$:I
    .restart local v18       #len$:I
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 213
    .end local v10           #a:Landroid/accounts/Account;
    .end local v11           #account:Landroid/accounts/Account;
    .end local v12           #accountName:Ljava/lang/String;
    .end local v13           #accountType:Ljava/lang/String;
    .end local v14           #arr$:[Landroid/accounts/Account;
    .end local v16           #contains:Z
    .end local v17           #i$:I
    .end local v18           #len$:I
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 215
    return-void
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 89
    const-string v2, "select version from _sync_state_metadata"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 91
    .local v0, version:J
    sget-wide v2, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->DB_VERSION:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    :cond_0
    return-void
.end method
