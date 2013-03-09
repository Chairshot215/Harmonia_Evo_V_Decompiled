.class Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UpdaterProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/db/UpdaterProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 104
    const-string v0, "fota.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 106
    iput-object p1, p0, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method private createBlackListTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 147
    const-string v0, "CREATE TABLE blacklist (_id INTEGER PRIMARY KEY,blackFileUrl TEXT,cancelCount TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private createCotaSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 158
    const-string v0, "CREATE TABLE cotasettings (_id INTEGER PRIMARY KEY,_name TEXT,_value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/updater/db/COTASettings;->getDefaultSettings(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->insertCotaSettings(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    .line 165
    return-void
.end method

.method private createDetailTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 130
    const-string v0, "CREATE TABLE detail (_id INTEGER PRIMARY KEY,appName TEXT,ApStatus TEXT,appSize TEXT,versionName TEXT,description TEXT,icon TEXT,source TEXT,optionalCount TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private insertCotaSettings(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V
    .locals 6
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p2, cotaSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 234
    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    .local v0, cotaSettingName:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v3, value:Landroid/content/ContentValues;
    const-string v4, "_name"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v5, "_value"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v4, "cotasettings"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v0           #cotaSettingName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #value:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Landroid/database/SQLException;
    :try_start_1
    const-string v4, "UpdaterAPK | UpdaterProvider"

    const-string v5, "insertCotaSettings()"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 247
    .end local v1           #e:Landroid/database/SQLException;
    :goto_1
    return-void

    .line 241
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 245
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method private insertSettings(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V
    .locals 6
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 214
    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    .local v2, settingName:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v3, value:Landroid/content/ContentValues;
    const-string v4, "_name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v5, "_value"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v4, "settings"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #settingName:Ljava/lang/String;
    .end local v3           #value:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Landroid/database/SQLException;
    :try_start_1
    const-string v4, "UpdaterAPK | UpdaterProvider"

    const-string v5, "insertSettings"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 227
    .end local v0           #e:Landroid/database/SQLException;
    :goto_1
    return-void

    .line 221
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 112
    const-string v0, "CREATE TABLE settings (_id INTEGER PRIMARY KEY,_name TEXT,_value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/updater/db/FOTASettings;->getDefaultSettings(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->insertSettings(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->createDetailTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->createBlackListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->createCotaSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/updater/db/FOTASettings;->getDefaultSettings(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v11

    .line 175
    .local v11, settingValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 177
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 178
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 179
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const-string v0, "_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, settingName:Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v10           #settingName:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 185
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "UpdaterAPK | UpdaterProvider"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    if-eqz v8, :cond_0

    .line 188
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 192
    .end local v9           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-direct {p0, p1, v11}, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->insertSettings(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    .line 197
    :try_start_2
    const-string v0, "DROP TABLE IF EXISTS detail"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string v0, "DROP TABLE IF EXISTS blacklist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    const-string v0, "DROP TABLE IF EXISTS cotasettings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 203
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->createDetailTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->createBlackListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/android/updater/db/UpdaterProvider$DatabaseHelper;->createCotaSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    return-void

    .line 187
    :cond_1
    if-eqz v8, :cond_0

    .line 188
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 188
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 200
    :catch_1
    move-exception v9

    .line 201
    .local v9, e:Landroid/database/SQLException;
    const-string v0, "UpdaterAPK | UpdaterProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCotaSettingsTable() exception! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
