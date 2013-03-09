.class public Lcom/google/android/gsf/settings/GoogleSettingsProvider;
.super Landroid/content/ContentProvider;
.source "GoogleSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    }
.end annotation


# instance fields
.field private mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 44
    return-void
.end method

.method private checkNetworkLocationOptIn(Landroid/content/ContentValues;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 177
    const-string v1, "network_location_opt_in"

    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "value"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void

    .line 180
    .restart local v0       #value:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 123
    const-string v0, "partner"

    iget-object v1, p1, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.providers.settings.permission.WRITE_GSETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot write to Google settings table"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .locals 5
    .parameter "tableUri"
    .parameter "values"
    .parameter "rowId"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, table:Ljava/lang/String;
    const-string v2, "partner"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, name:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 99
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 108
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 187
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 188
    .local v0, args:Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 190
    iget-object v4, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/gsf/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 191
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 193
    :try_start_0
    array-length v3, p2

    .line 194
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 195
    iget-object v4, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v4, 0x0

    .line 201
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 205
    :goto_1
    return v4

    .line 197
    :cond_0
    :try_start_1
    aget-object v4, p2, v2

    invoke-direct {p0, v4}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkNetworkLocationOptIn(Landroid/content/ContentValues;)V

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 204
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 205
    array-length v4, p2

    goto :goto_1

    .line 201
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 227
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    .local v0, args:Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 230
    iget-object v3, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/gsf/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 231
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, count:I
    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 234
    :cond_0
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 167
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    .local v0, args:Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    iget-object v1, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v4, 0x0

    .line 210
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 211
    .local v0, args:Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 213
    iget-object v5, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v5}, Lcom/google/android/gsf/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 214
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v5, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 215
    .local v2, rowId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_0

    .line 222
    :goto_0
    return-object v4

    .line 218
    :cond_0
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object p1

    .line 219
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 220
    invoke-direct {p0, p2}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkNetworkLocationOptIn(Landroid/content/ContentValues;)V

    move-object v4, p1

    .line 222
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    new-instance v6, Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gsf/settings/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    .line 133
    iget-object v6, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/android/gsf/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 135
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v6}, Lcom/google/android/gsf/settings/DatabaseHelper;->assistedGpsSettingNeedsUpdate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 138
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v6, "network_location_opt_in"

    invoke-static {v3, v6, v5}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v2, v4

    .line 140
    .local v2, optIn:Z
    :goto_0
    const-string v6, "assisted_gps_enabled"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 142
    .local v0, agpsEnabled:Z
    :goto_1
    if-eq v0, v2, :cond_1

    .line 143
    const-string v6, "assisted_gps_enabled"

    if-eqz v2, :cond_0

    move v5, v4

    :cond_0
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    .end local v0           #agpsEnabled:Z
    .end local v2           #optIn:Z
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_1
    return v4

    .restart local v3       #resolver:Landroid/content/ContentResolver;
    :cond_2
    move v2, v5

    .line 138
    goto :goto_0

    .restart local v2       #optIn:Z
    :cond_3
    move v0, v5

    .line 140
    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "url"
    .parameter "select"
    .parameter "where"
    .parameter "whereArgs"
    .parameter "sort"

    .prologue
    const/4 v5, 0x0

    .line 152
    new-instance v8, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    .local v8, args:Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    iget-object v2, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/gsf/settings/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 155
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 156
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 158
    iget-object v3, v8, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 159
    .local v9, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 160
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "initialValues"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 239
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    .local v0, args:Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 242
    iget-object v3, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/gsf/settings/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 243
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 244
    .local v1, count:I
    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 246
    :cond_0
    return v1
.end method
