.class public Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MigrateToAccountManagerBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private migrateAccounts(Landroid/content/Context;)V
    .locals 29
    .parameter "context"

    .prologue
    .line 68
    const-string v3, "accounts.db"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 69
    .local v24, path:Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v20, file:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    const-string v3, "GoogleLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipping migration because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v3, "GoogleLoginService"

    const-string v4, "beginning migration to the AccountManager..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v13

    .line 79
    .local v13, accountManager:Landroid/accounts/AccountManager;
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-static {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 81
    .local v2, oldDatabase:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x0

    .line 83
    .local v17, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    .line 84
    const-string v3, "GoogleLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong DB version, skipping migration. Expected 7, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    if-eqz v17, :cond_2

    .line 155
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_2
    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 92
    :cond_3
    :try_start_1
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v15, accounts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/accounts/Account;>;"
    const-string v3, "accounts"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "username"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "encryptedpassword"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "sha1hash"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "flags"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "registered"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 105
    const/16 v23, 0x0

    .line 106
    .local v23, foundHosted:Z
    :cond_4
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 107
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 108
    .local v21, flags:J
    const-wide/16 v3, 0x2

    and-long v3, v3, v21

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 109
    const/16 v23, 0x1

    goto :goto_1

    .line 112
    .end local v21           #flags:J
    :cond_5
    const/4 v3, -0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 114
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 115
    .local v14, accountName:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 116
    .local v18, encryptedPassword:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 117
    .local v28, sha1hash:Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 118
    .restart local v21       #flags:J
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 119
    .local v25, registered:J
    const/4 v3, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 121
    .local v11, accountId:J
    new-instance v10, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v10, v14, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v10, account:Landroid/accounts/Account;
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v19, extras:Landroid/os/Bundle;
    const-string v3, "flags"

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "sha1hash"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v3, "registered"

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "GoogleLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrating account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v10, v0, v1}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 154
    .end local v10           #account:Landroid/accounts/Account;
    .end local v11           #accountId:J
    .end local v14           #accountName:Ljava/lang/String;
    .end local v15           #accounts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v18           #encryptedPassword:Ljava/lang/String;
    .end local v19           #extras:Landroid/os/Bundle;
    .end local v21           #flags:J
    .end local v23           #foundHosted:Z
    .end local v25           #registered:J
    .end local v28           #sha1hash:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_6

    .line 155
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_6
    if-eqz v2, :cond_7

    .line 158
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v3

    .line 131
    .restart local v15       #accounts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v23       #foundHosted:Z
    :cond_8
    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 134
    const-string v3, "authtokens"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "account"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "service"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "authtoken"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 136
    :cond_9
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 137
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 138
    .restart local v11       #accountId:J
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 139
    .local v27, service:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 141
    .local v16, authToken:Ljava/lang/String;
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/accounts/Account;

    .line 142
    .restart local v10       #account:Landroid/accounts/Account;
    if-eqz v10, :cond_9

    .line 145
    const-string v3, "GoogleLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrating authtoken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v13, v10, v0, v1}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 149
    .end local v10           #account:Landroid/accounts/Account;
    .end local v11           #accountId:J
    .end local v16           #authToken:Ljava/lang/String;
    .end local v27           #service:Ljava/lang/String;
    :cond_a
    const-string v3, "GoogleLoginService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migration complete, deleting the old database file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    if-eqz v17, :cond_b

    .line 155
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_b
    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0
.end method

.method private migrateAndroidId(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 31
    new-instance v6, Ljava/io/File;

    const-string v8, "accounts.db"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 34
    new-instance v6, Ljava/io/File;

    .end local v6           #file:Ljava/io/File;
    const-string v8, "gls.db"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .restart local v6       #file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 36
    const-string v8, "GoogleLoginService"

    const-string v9, "no legacy android id exists to migrate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 44
    .local v7, oldDatabase:Landroid/database/sqlite/SQLiteDatabase;
    const-string v8, "SELECT intValue FROM meta WHERE name=\'androidId\'"

    invoke-static {v7, v8, v10}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    .line 46
    .local v1, androidId:J
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 47
    const/4 v7, 0x0

    .line 49
    const-string v8, "GoogleLoginService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setting the androidId to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 52
    .local v3, dir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v8, "pre_froyo_aid"

    invoke-direct {v0, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .local v0, aidFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 55
    :try_start_0
    new-instance v4, Ljava/io/DataOutputStream;

    const-string v8, "pre_froyo_aid"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    .local v4, dos:Ljava/io/DataOutputStream;
    invoke-virtual {v4, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 60
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v4           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v5

    .line 62
    .local v5, e:Ljava/io/IOException;
    const-string v8, "GoogleLoginService"

    const-string v9, "error saving old android id"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;->migrateAndroidId(Landroid/content/Context;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;->migrateAccounts(Landroid/content/Context;)V

    .line 168
    const-string v0, "GoogleLoginService"

    const-string v1, "disabling the migration script since the migration is complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v4, componentName:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v5

    .line 172
    .local v5, result:Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v0, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;

    const-string v2, "disableMigrationScript"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;-><init>(Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/MigrateToAccountManagerBroadcastReceiver$1;->start()V

    .line 181
    return-void
.end method
