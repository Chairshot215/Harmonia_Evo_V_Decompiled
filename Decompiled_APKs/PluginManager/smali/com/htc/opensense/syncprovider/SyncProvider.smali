.class public Lcom/htc/opensense/syncprovider/SyncProvider;
.super Landroid/content/ContentProvider;
.source "SyncProvider.java"

# interfaces
.implements Lcom/htc/opensense/sync/SyncSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/syncprovider/SyncProvider$EXTRAS;,
        Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;,
        Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SyncProvider"

.field private static final SYNC_EXTRAS:I = 0x2

.field private static final SYNC_EXTRAS_ID:I = 0x3

.field private static final SYNC_SETTINGS:I = 0x0

.field private static final SYNC_SETTINGS_ID:I = 0x1

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/opensense/syncprovider/SyncProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 106
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.settings.accountsync.SYNC"

    const-string v2, "sync_settings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.settings.accountsync.SYNC"

    const-string v2, "sync_settings/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.settings.accountsync.SYNC"

    const-string v2, "extras"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v0, Lcom/htc/opensense/syncprovider/SyncProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.settings.accountsync.SYNC"

    const-string v2, "extras/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 378
    return-void
.end method

.method public static getPluginResName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "pkgName"
    .parameter "resId"

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 225
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 221
    :catch_1
    move-exception v0

    .line 223
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateValues(Landroid/content/ContentValues;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 159
    const-string v3, "update_secs_res_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    const-string v3, "update_secs_res_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 161
    .local v1, resId:I
    const-string v3, "plugin_pkg_name"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, pkgName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/opensense/syncprovider/SyncProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/htc/opensense/syncprovider/SyncProvider;->getPluginResName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, resName:Ljava/lang/String;
    const-string v3, "update_secs_res_id"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v0           #pkgName:Ljava/lang/String;
    .end local v1           #resId:I
    .end local v2           #resName:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense/syncprovider/SyncProvider;->mDbHelper:Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;

    invoke-virtual {v4}, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    if-nez v1, :cond_0

    .line 123
    const-string v4, "SyncProvider"

    const-string v5, "db == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, e:Landroid/database/SQLException;
    const-string v4, "SyncProvider"

    const-string v5, "mOpenHelper delete SQLException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .end local v2           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v0, 0x0

    .line 127
    .local v0, count:I
    sget-object v4, Lcom/htc/opensense/syncprovider/SyncProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    const-string v4, "sync_settings"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 130
    goto :goto_0

    .line 133
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    .local v3, segment:Ljava/lang/String;
    const-string v4, "sync_settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 136
    goto :goto_0

    .line 139
    .end local v3           #segment:Ljava/lang/String;
    :pswitch_2
    const-string v4, "extras"

    invoke-virtual {v1, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 140
    goto :goto_0

    .line 143
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 144
    .restart local v3       #segment:Ljava/lang/String;
    const-string v4, "extras"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 146
    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v6, 0x0

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v7, p0, Lcom/htc/opensense/syncprovider/SyncProvider;->mDbHelper:Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;

    invoke-virtual {v7}, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 177
    const-string v7, "SyncProvider"

    const-string v8, "db == null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 206
    :goto_0
    return-object v5

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, e:Landroid/database/SQLException;
    const-string v7, "SyncProvider"

    const-string v8, "mOpenHelper insert SQLException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 174
    goto :goto_0

    .line 180
    .end local v1           #e:Landroid/database/SQLException;
    :cond_0
    const-wide/16 v2, -0x1

    .line 181
    .local v2, rowID:J
    if-nez p2, :cond_1

    .line 182
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .restart local p2
    :cond_1
    const-string v7, "SyncProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert content uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v7, Lcom/htc/opensense/syncprovider/SyncProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 197
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 188
    :pswitch_1
    const-string v7, "SyncProvider"

    const-string v8, "match settings"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v4, "sync_settings"

    .line 190
    .local v4, table:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/htc/opensense/syncprovider/SyncProvider;->updateValues(Landroid/content/ContentValues;)V

    .line 199
    :goto_1
    const-string v7, "SyncProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "res = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "update_secs_res_id"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 203
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_2

    .line 204
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 205
    .local v5, uri1:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/opensense/syncprovider/SyncProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 193
    .end local v4           #table:Ljava/lang/String;
    .end local v5           #uri1:Landroid/net/Uri;
    :pswitch_2
    const-string v4, "extras"

    .line 194
    .restart local v4       #table:Ljava/lang/String;
    goto :goto_1

    .line 209
    :cond_2
    new-instance v6, Landroid/database/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert row into "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 231
    const-string v0, "SyncProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/htc/opensense/syncprovider/SyncProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/syncprovider/SyncProvider;->mDbHelper:Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 239
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 240
    .local v0, builder:Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v7, p5

    .line 243
    .local v7, orderBy:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/syncprovider/SyncProvider;->mDbHelper:Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;

    invoke-virtual {v2}, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 250
    const-string v2, "SyncProvider"

    const-string v3, "db == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v5

    .line 245
    :catch_0
    move-exception v9

    .line 246
    .local v9, ex:Landroid/database/SQLException;
    const-string v2, "SyncProvider"

    const-string v3, "mOpenHelper query SQLException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    .end local v9           #ex:Landroid/database/SQLException;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    sget-object v2, Lcom/htc/opensense/syncprovider/SyncProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 287
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :pswitch_0
    const-string v2, "SyncProvider"

    const-string v3, "match settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v2, "sync_settings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 258
    sget-object v2, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 259
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v7, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    :goto_1
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    .line 290
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 292
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/htc/opensense/syncprovider/SyncProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    move-object v5, v8

    .line 295
    goto :goto_0

    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    move-object v7, p5

    .line 259
    goto :goto_1

    .line 264
    :pswitch_1
    const-string v2, "sync_settings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 267
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v7, Lcom/htc/opensense/syncprovider/SyncProvider$SyncParms;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    .line 269
    :goto_2
    goto :goto_1

    :cond_3
    move-object v7, p5

    .line 267
    goto :goto_2

    .line 272
    :pswitch_2
    const-string v2, "extras"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 273
    sget-object v2, Lcom/htc/opensense/syncprovider/SyncProvider$EXTRAS;->PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 274
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v7, Lcom/htc/opensense/syncprovider/SyncProvider$EXTRAS;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    .line 276
    :goto_3
    goto :goto_1

    :cond_4
    move-object v7, p5

    .line 274
    goto :goto_3

    .line 279
    :pswitch_3
    const-string v2, "extras"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 282
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v7, Lcom/htc/opensense/syncprovider/SyncProvider$EXTRAS;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    .line 284
    :goto_4
    goto/16 :goto_1

    :cond_5
    move-object v7, p5

    .line 282
    goto :goto_4

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, count:I
    const/4 v1, 0x0

    .line 304
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/syncprovider/SyncProvider;->mDbHelper:Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;

    invoke-virtual {v5}, Lcom/htc/opensense/syncprovider/SyncProvider$SyncDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 309
    if-nez v1, :cond_0

    .line 310
    const-string v5, "SyncProvider"

    const-string v6, "db == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return v4

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, e:Landroid/database/SQLException;
    const-string v5, "SyncProvider"

    const-string v6, "mOpenHelper update SQLException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    .end local v2           #e:Landroid/database/SQLException;
    :cond_0
    sget-object v4, Lcom/htc/opensense/syncprovider/SyncProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    move v4, v0

    .line 341
    goto :goto_0

    .line 315
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/htc/opensense/syncprovider/SyncProvider;->updateValues(Landroid/content/ContentValues;)V

    .line 316
    const-string v4, "sync_settings"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 318
    goto :goto_1

    .line 322
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 323
    .local v3, segment:Ljava/lang/String;
    const-string v4, "SyncProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "match settings_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0, p2}, Lcom/htc/opensense/syncprovider/SyncProvider;->updateValues(Landroid/content/ContentValues;)V

    .line 325
    const-string v4, "sync_settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, p2, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 327
    goto :goto_1

    .line 330
    .end local v3           #segment:Ljava/lang/String;
    :pswitch_2
    const-string v4, "extras"

    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 332
    goto :goto_1

    .line 335
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 336
    .restart local v3       #segment:Ljava/lang/String;
    const-string v4, "extras"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, p2, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 338
    goto :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
