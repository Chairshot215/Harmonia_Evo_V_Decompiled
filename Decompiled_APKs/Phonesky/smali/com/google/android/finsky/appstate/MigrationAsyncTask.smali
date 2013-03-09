.class public Lcom/google/android/finsky/appstate/MigrationAsyncTask;
.super Landroid/os/AsyncTask;
.source "MigrationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final FINSKY_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

.field private final FINSKY_COLUMN_AUTO_UPDATE:Ljava/lang/String;

.field private final FINSKY_COLUMN_PACKAGE_NAME:Ljava/lang/String;

.field private final FINSKY_DATABASE_NAME:Ljava/lang/String;

.field private final FINSKY_TABLE_NAME:Ljava/lang/String;

.field private final GRANOLA_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

.field private final GRANOLA_COLUMN_AUTO_UPDATE:Ljava/lang/String;

.field private final GRANOLA_COLUMN_PACKAGE_NAME:Ljava/lang/String;

.field private final GRANOLA_DATABASE_NAME:Ljava/lang/String;

.field private final GRANOLA_TABLE_NAME:Ljava/lang/String;

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    const-string v0, "assets14.db"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_DATABASE_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "assets10"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_TABLE_NAME:Ljava/lang/String;

    .line 35
    const-string v0, "package_name"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_COLUMN_PACKAGE_NAME:Ljava/lang/String;

    .line 36
    const-string v0, "auto_update"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_COLUMN_AUTO_UPDATE:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

    .line 40
    const-string v0, "market_assets.db"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_DATABASE_NAME:Ljava/lang/String;

    .line 41
    const-string v0, "assets"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_TABLE_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "PACKAGE"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_COLUMN_PACKAGE_NAME:Ljava/lang/String;

    .line 43
    const-string v0, "AUTO_UPDATE"

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_COLUMN_AUTO_UPDATE:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

    .line 47
    iput-object p1, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 49
    return-void
.end method

.method private collectLegacyData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .parameter
    .parameter "dbName"
    .parameter "tableName"
    .parameter "columnPackageName"
    .parameter "columnAutoUpdate"
    .parameter "autoUpdateIsStrings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 106
    .local v15, dbFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 119
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "Reading from legacy database %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v4, v3

    const/4 v3, 0x1

    aput-object p5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 125
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 126
    .local v11, INDEX_PACKAGENAME:I
    const/4 v10, 0x1

    .line 128
    .local v10, INDEX_AUTOUPDATE:I
    if-eqz v14, :cond_6

    .line 130
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 132
    .local v17, packageName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    const/4 v13, 0x0

    .line 136
    .local v13, autoUpdateValue:I
    if-eqz p6, :cond_4

    .line 138
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, autoUpdateLabel:Ljava/lang/String;
    const-string v3, "DISABLED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    const/4 v13, 0x1

    .line 149
    .end local v12           #autoUpdateLabel:Ljava/lang/String;
    :cond_2
    :goto_2
    packed-switch v13, :pswitch_data_0

    goto :goto_1

    .line 151
    :pswitch_0
    sget-object v3, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DISABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 159
    .end local v13           #autoUpdateValue:I
    .end local v17           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    .line 114
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #INDEX_AUTOUPDATE:I
    .end local v11           #INDEX_PACKAGENAME:I
    .end local v14           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v16

    .line 115
    .local v16, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "Unable to open %s because %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #INDEX_AUTOUPDATE:I
    .restart local v11       #INDEX_PACKAGENAME:I
    .restart local v12       #autoUpdateLabel:Ljava/lang/String;
    .restart local v13       #autoUpdateValue:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v17       #packageName:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v3, "ENABLED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    const/4 v13, 0x2

    goto :goto_2

    .line 146
    .end local v12           #autoUpdateLabel:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    goto :goto_2

    .line 154
    :pswitch_1
    sget-object v3, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->ENABLED:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 159
    .end local v13           #autoUpdateValue:I
    .end local v17           #packageName:Ljava/lang/String;
    :cond_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 7
    .parameter "voids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->blockingLoad()V

    .line 58
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 59
    .local v1, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;>;"
    const-string v2, "assets14.db"

    const-string v3, "assets10"

    const-string v4, "package_name"

    const-string v5, "auto_update"

    iget-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->GRANOLA_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->collectLegacyData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    const-string v2, "market_assets.db"

    const-string v3, "assets"

    const-string v4, "PACKAGE"

    const-string v5, "AUTO_UPDATE"

    iget-object v0, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->FINSKY_AUTOUPDATE_IS_STRINGS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->collectLegacyData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, legacyMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 73
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    if-ne v4, v5, :cond_0

    .line 81
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 82
    .local v2, newState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    const-string v4, "Migrating %s autoupdate = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v4, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V

    goto :goto_0

    .line 90
    .end local v0           #appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    .end local v2           #newState:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .end local v3           #packageName:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mContext:Landroid/content/Context;

    const-string v5, "assets14.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 91
    iget-object v4, p0, Lcom/google/android/finsky/appstate/MigrationAsyncTask;->mContext:Landroid/content/Context;

    const-string v5, "market_assets.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 92
    return-void
.end method
