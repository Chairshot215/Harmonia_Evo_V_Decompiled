.class public Lcom/google/android/onetimeinitializer/OneTimeService;
.super Landroid/app/IntentService;
.source "OneTimeService.java"


# static fields
.field private static final LAUNCHER_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mMappingTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "content://com.android.launcher2.settings/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/onetimeinitializer/OneTimeService;->LAUNCHER_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "OneTimeInitializer Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private getMappingVersion()I
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/onetimeinitializer/OneTimeService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mapping_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private prepareTable()V
    .locals 6

    .prologue
    .line 111
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    .line 114
    const-string v4, "com.google.android.finsky"

    .line 115
    .local v4, oldPkg:Ljava/lang/String;
    const-string v1, "com.android.vending"

    .line 117
    .local v1, newPkg:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.google.android.finsky.activities.MainActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v2, oldMarket:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, ".activities.MainActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v3, oldMarketShort:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.android.vending.AssetBrowserActivity"

    invoke-direct {v0, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v0, newMarket:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v5, p0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method private updateMappingVersion()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/onetimeinitializer/OneTimeService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "mapping_version"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method private updateShortcut()V
    .locals 20

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/google/android/onetimeinitializer/OneTimeService;->prepareTable()V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/onetimeinitializer/OneTimeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 131
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/onetimeinitializer/OneTimeService;->LAUNCHER_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "intent"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 133
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 190
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v19, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 136
    .local v19, values:Landroid/content/ContentValues;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 139
    .local v16, selectionArg:[Ljava/lang/String;
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v15, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 144
    .local v13, intentUri:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 147
    const/4 v2, 0x0

    invoke-static {v13, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17

    .line 148
    .local v17, shortcut:Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 149
    .local v9, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/onetimeinitializer/OneTimeService;->mMappingTable:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ComponentName;

    .line 154
    .local v14, newComp:Landroid/content/ComponentName;
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 155
    .local v11, id:J
    const/4 v2, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v2

    .line 158
    if-nez v14, :cond_2

    .line 159
    const-string v2, "OneTimeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing shortcut id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v2, Lcom/google/android/onetimeinitializer/OneTimeService;->LAUNCHER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id = ?"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 162
    .local v7, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 174
    .end local v7           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v9           #comp:Landroid/content/ComponentName;
    .end local v11           #id:J
    .end local v13           #intentUri:Ljava/lang/String;
    .end local v14           #newComp:Landroid/content/ComponentName;
    .end local v17           #shortcut:Landroid/content/Intent;
    :catch_0
    move-exception v18

    .line 176
    .local v18, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "OneTimeService"

    const-string v3, "can\'t parse a shortcut entry"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 183
    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v18           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v10

    .line 184
    .local v10, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "OneTimeService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 167
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v9       #comp:Landroid/content/ComponentName;
    .restart local v11       #id:J
    .restart local v13       #intentUri:Ljava/lang/String;
    .restart local v14       #newComp:Landroid/content/ComponentName;
    .restart local v15       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v17       #shortcut:Landroid/content/Intent;
    :cond_2
    :try_start_4
    const-string v2, "OneTimeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fix shortcut id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    sget-object v2, Lcom/google/android/onetimeinitializer/OneTimeService;->LAUNCHER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "intent"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "_id = ?"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 173
    .restart local v7       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 185
    .end local v7           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v9           #comp:Landroid/content/ComponentName;
    .end local v11           #id:J
    .end local v13           #intentUri:Ljava/lang/String;
    .end local v14           #newComp:Landroid/content/ComponentName;
    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v17           #shortcut:Landroid/content/Intent;
    :catch_2
    move-exception v10

    .line 186
    .local v10, e:Landroid/content/OperationApplicationException;
    :try_start_5
    const-string v2, "OneTimeService"

    invoke-virtual {v10}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 180
    .end local v10           #e:Landroid/content/OperationApplicationException;
    .restart local v15       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    :try_start_6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 181
    sget-object v2, Lcom/google/android/onetimeinitializer/OneTimeService;->LAUNCHER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v15}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_2

    .line 188
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 86
    const-string v0, "oti"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/onetimeinitializer/OneTimeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/onetimeinitializer/OneTimeService;->mPreferences:Landroid/content/SharedPreferences;

    .line 87
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 91
    const-string v0, "OneTimeService"

    const-string v1, "OneTimeService.onHandleIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0}, Lcom/google/android/onetimeinitializer/OneTimeService;->getMappingVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 94
    const-string v0, "OneTimeService"

    const-string v1, "Updating shortcuts"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/google/android/onetimeinitializer/OneTimeService;->updateShortcut()V

    .line 96
    invoke-direct {p0}, Lcom/google/android/onetimeinitializer/OneTimeService;->updateMappingVersion()V

    .line 98
    :cond_0
    return-void
.end method
