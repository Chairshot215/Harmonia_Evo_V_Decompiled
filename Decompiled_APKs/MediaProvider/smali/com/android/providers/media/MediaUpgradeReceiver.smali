.class public Lcom/android/providers/media/MediaUpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaUpgradeReceiver.java"


# static fields
.field static final PREF_DB_VERSION:Ljava/lang/String; = "db_version"

.field static final TAG:Ljava/lang/String; = "MediaUpgradeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    const-string v2, "MediaUpgradeReceiver"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 52
    .local v12, prefs:Landroid/content/SharedPreferences;
    const-string v2, "db_version"

    const/4 v4, 0x0

    invoke-interface {v12, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 53
    .local v11, prefVersion:I
    const/16 v2, 0x198

    if-ne v11, v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "db_version"

    const/16 v5, 0x198

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    :try_start_0
    const-string v2, "foo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 60
    .local v8, dbDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, files:[Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 62
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v2, v9

    if-ge v10, v2, :cond_0

    .line 63
    aget-object v3, v9, v10

    .line 64
    .local v3, file:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->isMediaDatabaseName(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const v4, 0x7f040002

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :goto_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v13

    .line 73
    .local v13, startTime:J
    const/4 v7, 0x0

    .line 75
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    new-instance v1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->isInternalMediaDatabaseName(Ljava/lang/String;)Lcom/android/providers/media/MediaProvider$STORAGE;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/media/MediaProvider$STORAGE;ZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 78
    .local v1, helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    .line 82
    if-eqz v7, :cond_2

    .line 83
    :try_start_4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 86
    .end local v1           #helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_2
    :goto_3
    const-string v2, "MediaUpgradeReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<--- Finished upgrade of media database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v13

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v13           #startTime:J
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 79
    .restart local v7       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v13       #startTime:J
    :catch_0
    move-exception v2

    .line 82
    if-eqz v7, :cond_2

    .line 83
    throw v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 90
    .end local v3           #file:Ljava/lang/String;
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #dbDir:Ljava/io/File;
    .end local v9           #files:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v13           #startTime:J
    :catch_1
    move-exception v15

    .line 92
    .local v15, t:Ljava/lang/Throwable;
    const-string v2, "MediaUpgradeReceiver"

    const-string v4, "Error during upgrade attempt."

    invoke-static {v2, v4, v15}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 82
    .end local v15           #t:Ljava/lang/Throwable;
    .restart local v3       #file:Ljava/lang/String;
    .restart local v7       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #dbDir:Ljava/io/File;
    .restart local v9       #files:[Ljava/lang/String;
    .restart local v10       #i:I
    .restart local v13       #startTime:J
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_4

    .line 83
    :try_start_5
    throw v7

    :cond_4
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 68
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v13           #startTime:J
    :catch_2
    move-exception v2

    goto :goto_2
.end method
