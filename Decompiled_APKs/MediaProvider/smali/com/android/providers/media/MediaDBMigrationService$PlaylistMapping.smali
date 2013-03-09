.class Lcom/android/providers/media/MediaDBMigrationService$PlaylistMapping;
.super Ljava/lang/Object;
.source "MediaDBMigrationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaDBMigrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaylistMapping"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/providers/media/MediaDBMigrationService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaDBMigrationService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/providers/media/MediaDBMigrationService$PlaylistMapping;->this$0:Lcom/android/providers/media/MediaDBMigrationService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p2, p0, Lcom/android/providers/media/MediaDBMigrationService$PlaylistMapping;->mContext:Landroid/content/Context;

    .line 391
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 398
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 404
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 406
    .local v15, mapRecords:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider$STORAGE;->EXTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->getDatabaseFileName(Lcom/android/providers/media/MediaProvider$STORAGE;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 408
    .local v11, databaseFileName:Ljava/lang/String;
    if-nez v11, :cond_3

    .line 464
    if-eqz v10, :cond_0

    .line 465
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_0
    if-eqz v15, :cond_1

    .line 469
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_1
    if-eqz v1, :cond_2

    .line 473
    throw v1

    .line 477
    .end local v11           #databaseFileName:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 413
    .restart local v11       #databaseFileName:Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaDBMigrationService$PlaylistMapping;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 415
    .local v12, databaseFilePath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "external-ffffffff.db"

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_6

    .line 464
    if-eqz v10, :cond_4

    .line 465
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_4
    if-eqz v15, :cond_5

    .line 469
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_5
    if-eqz v1, :cond_2

    .line 473
    throw v1

    goto :goto_0

    .line 423
    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_2
    invoke-static {v12, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 429
    const-string v2, "audio_playlists_map_old"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 433
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_9

    .line 435
    const-string v2, "DROP TRIGGER IF EXISTS audio_playlists_map_old_cleanup"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 464
    if-eqz v10, :cond_7

    .line 465
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_7
    if-eqz v15, :cond_8

    .line 469
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_8
    if-eqz v1, :cond_2

    .line 473
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 439
    :cond_9
    :try_start_3
    const-string v2, "SELECT audio_playlists_map_old._id AS _id, files._id AS audio_id, audio_playlists_map_old.playlist_id AS playlist_id, audio_playlists_map_old.play_order AS play_order FROM audio_playlists_map_old INNER JOIN audio_meta_old ON audio_playlists_map_old.audio_id = audio_meta_old._id INNER JOIN files ON audio_meta_old._data = files._data;"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/media/MediaDBMigrationService$PlaylistMapping;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 447
    .local v9, cr:Landroid/content/ContentResolver;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v16, values:Landroid/content/ContentValues;
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 449
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    .line 451
    const-string v2, "audio_id"

    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v2, "play_order"

    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v2, "external"

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 457
    const-string v2, "content://media/external/audio_playlists_map_old"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v9, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 461
    .end local v9           #cr:Landroid/content/ContentResolver;
    .end local v11           #databaseFileName:Ljava/lang/String;
    .end local v12           #databaseFilePath:Ljava/lang/String;
    .end local v14           #file:Ljava/io/File;
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v13

    .line 462
    .local v13, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "MediaIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when map playlist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 464
    if-eqz v10, :cond_a

    .line 465
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_a
    if-eqz v15, :cond_b

    .line 469
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_b
    if-eqz v1, :cond_2

    .line 473
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 464
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v9       #cr:Landroid/content/ContentResolver;
    .restart local v11       #databaseFileName:Ljava/lang/String;
    .restart local v12       #databaseFilePath:Ljava/lang/String;
    .restart local v14       #file:Ljava/io/File;
    .restart local v16       #values:Landroid/content/ContentValues;
    :cond_c
    if-eqz v10, :cond_d

    .line 465
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_d
    if-eqz v15, :cond_e

    .line 469
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_e
    if-eqz v1, :cond_2

    .line 473
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 464
    .end local v9           #cr:Landroid/content/ContentResolver;
    .end local v11           #databaseFileName:Ljava/lang/String;
    .end local v12           #databaseFilePath:Ljava/lang/String;
    .end local v14           #file:Ljava/io/File;
    .end local v16           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_f

    .line 465
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_f
    if-eqz v15, :cond_10

    .line 469
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_10
    if-eqz v1, :cond_11

    .line 473
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_11
    throw v2
.end method
