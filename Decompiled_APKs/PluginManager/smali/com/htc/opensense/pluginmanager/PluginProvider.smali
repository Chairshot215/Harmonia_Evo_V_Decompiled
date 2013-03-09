.class public Lcom/htc/opensense/pluginmanager/PluginProvider;
.super Landroid/content/ContentProvider;
.source "PluginProvider.java"

# interfaces
.implements Lcom/htc/opensense/plugin/PluginConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final FEATURES:I = 0x0

.field static final FEATURES_ID:I = 0x1

.field static final METADATA:I = 0x2

.field static final METADATA_ID:I = 0x3

.field static final PLUGIN:I = 0x4

.field static final PLUGIN_ID:I = 0x5

.field static final PLUGIN_PKG:I = 0x6

.field static final PLUGIN_PKG_ID:I = 0x7

.field static final PLUGIN_RAWQUERY:I = 0x9

.field static final RAWQUERY:I = 0x8

.field static final TAG:Ljava/lang/String; = "PluginProvider"

.field static final URL_FEATURES:Ljava/lang/String; = "features"

.field static final URL_FEATURES_ID:Ljava/lang/String; = "features/#"

.field static final URL_METADATA:Ljava/lang/String; = "meta_data"

.field static final URL_METADATA_ID:Ljava/lang/String; = "meta_data/#"

.field static final URL_PLUGIN:Ljava/lang/String; = "plugins"

.field static final URL_PLUGIN_ID:Ljava/lang/String; = "plugins/#"

.field static final URL_PLUGIN_PKG:Ljava/lang/String; = "plugin_pkg"

.field static final URL_PLUGIN_PKG_ID:Ljava/lang/String; = "plugin_pkg/#"

.field static final URL_PLUGIN_RAWQUERY:Ljava/lang/String; = "plugins_raw"

.field static final URL_RAW_QUERY:Ljava/lang/String; = "rawquery"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field mOpenHelper:Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 52
    sget-object v0, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.opensense.plugin"

    const-string v2, "features"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.opensense.plugin"

    const-string v2, "features/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.opensense.plugin"

    const-string v2, "meta_data"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.opensense.plugin"

    const-string v2, "meta_data/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.opensense.plugin"

    const-string v2, "plugins_raw"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.opensense.plugin"

    const-string v2, "plugins"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.opensense.plugin"

    const-string v2, "plugins/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    sget-object v0, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.opensense.plugin"

    const-string v2, "plugin_pkg"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.opensense.plugin"

    const-string v2, "rawquery"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 143
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lcom/htc/opensense/pluginmanager/PluginProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    array-length v1, p2

    return v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 150
    sget-object v3, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 151
    .local v1, match:I
    iget-object v3, p0, Lcom/htc/opensense/pluginmanager/PluginProvider;->mOpenHelper:Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 153
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1}, Lcom/htc/opensense/pluginmanager/PluginProvider;->getMatchTB(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, tb:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method getMatchTB(I)Ljava/lang/String;
    .locals 1
    .parameter "match"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, tb:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 182
    :goto_0
    :pswitch_0
    return-object v0

    .line 170
    :pswitch_1
    const-string v0, "features"

    .line 171
    goto :goto_0

    .line 173
    :pswitch_2
    const-string v0, "meta_data"

    .line 174
    goto :goto_0

    .line 176
    :pswitch_3
    const-string v0, "plugin"

    .line 177
    goto :goto_0

    .line 179
    :pswitch_4
    const-string v0, "plugin_pkg"

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v10, 0x0

    .line 193
    sget-object v9, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 194
    .local v3, match:I
    iget-object v9, p0, Lcom/htc/opensense/pluginmanager/PluginProvider;->mOpenHelper:Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;

    invoke-virtual {v9}, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 195
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v5, -0x1

    .line 196
    .local v5, rowID:J
    invoke-virtual {p0, v3}, Lcom/htc/opensense/pluginmanager/PluginProvider;->getMatchTB(I)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, tb:Ljava/lang/String;
    sparse-switch v3, :sswitch_data_0

    .line 228
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v5

    .line 235
    :goto_0
    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_0

    .line 236
    invoke-static {p1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 237
    .local v4, ret:Landroid/net/Uri;
    return-object v4

    .line 200
    .end local v4           #ret:Landroid/net/Uri;
    :sswitch_0
    invoke-virtual {v1, v8, v10, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 201
    goto :goto_0

    .line 203
    :sswitch_1
    const-string v7, "REPLACE INTO plugin (package_id, feature_id, plugin_class, version, description, plugin_meta, removed) SELECT ?, _id, ?, ?, ?, ?, ? FROM features WHERE feature=? ORDER BY version DESC LIMIT 1"

    .line 210
    .local v7, sql:Ljava/lang/String;
    const/4 v9, 0x7

    new-array v0, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "package_id"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "plugin_class"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-string v10, "version"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x3

    const-string v10, "description"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x4

    const-string v10, "plugin_meta"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x5

    const-string v10, "removed"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v0, v9

    const/4 v9, 0x6

    const-string v10, "feature"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    .line 219
    .local v0, bindArgs:[Ljava/lang/Object;
    const-wide/16 v5, 0x0

    .line 220
    :try_start_1
    invoke-virtual {v1, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, e:Landroid/database/SQLException;
    const-string v9, "PluginProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to insert row into "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-wide/16 v5, -0x1

    .line 225
    goto :goto_0

    .line 229
    .end local v0           #bindArgs:[Ljava/lang/Object;
    .end local v2           #e:Landroid/database/SQLException;
    .end local v7           #sql:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 230
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "PluginProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to insert row into "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 239
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v9, Landroid/database/SQLException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to insert row into "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 244
    const-string v0, "PluginProvider"

    const-string v1, "PluginProvider onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/opensense/pluginmanager/PluginProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;-><init>(Lcom/htc/opensense/pluginmanager/PluginProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/pluginmanager/PluginProvider;->mOpenHelper:Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 252
    iget-object v2, p0, Lcom/htc/opensense/pluginmanager/PluginProvider;->mOpenHelper:Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 254
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 255
    .local v8, match:I
    const/16 v2, 0x8

    if-ne v8, v2, :cond_0

    .line 256
    invoke-virtual {v0, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 259
    :goto_0
    return-object v2

    .line 258
    :cond_0
    invoke-virtual {p0, v8}, Lcom/htc/opensense/pluginmanager/PluginProvider;->getMatchTB(I)Ljava/lang/String;

    move-result-object v1

    .local v1, tb:Ljava/lang/String;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 259
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 275
    sget-object v3, Lcom/htc/opensense/pluginmanager/PluginProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 276
    .local v1, match:I
    iget-object v3, p0, Lcom/htc/opensense/pluginmanager/PluginProvider;->mOpenHelper:Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/htc/opensense/pluginmanager/PluginProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 277
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1}, Lcom/htc/opensense/pluginmanager/PluginProvider;->getMatchTB(I)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, tb:Ljava/lang/String;
    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method
