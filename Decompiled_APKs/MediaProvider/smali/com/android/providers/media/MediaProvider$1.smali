.class Lcom/android/providers/media/MediaProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 264
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v12, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mbUnNotify:Z
    invoke-static {v11, v12}, Lcom/android/providers/media/MediaProvider;->access$002(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Lcom/android/providers/media/MediaProvider;->access$102(J)J

    .line 267
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 268
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mbUnNotify:Z
    invoke-static {v11}, Lcom/android/providers/media/MediaProvider;->access$000(Lcom/android/providers/media/MediaProvider;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 270
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v11}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$200()Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 276
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 278
    .local v7, uri:Landroid/net/Uri;
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    #calls: Lcom/android/providers/media/MediaProvider;->sendUpgradeComplete(Landroid/net/Uri;)V
    invoke-static {v11, v7}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V

    .line 284
    .end local v7           #uri:Landroid/net/Uri;
    :cond_2
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, exp_sd:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, mountPath:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 386
    :cond_3
    :goto_0
    return-void

    .line 302
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 304
    :cond_5
    const-string v11, "storage_volume"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 310
    .local v6, storage:Landroid/os/storage/StorageVolume;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$400()[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$400()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-eqz v11, :cond_3

    .line 316
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 334
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$400()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 335
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string v12, "content://media/external"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    #calls: Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V
    invoke-static {v11, v12}, Lcom/android/providers/media/MediaProvider;->access$500(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V

    .line 336
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$600()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 337
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    goto :goto_0

    .line 341
    :cond_6
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/providers/media/MediaProvider;->access$700(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v12

    monitor-enter v12

    .line 342
    :try_start_0
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/providers/media/MediaProvider;->access$700(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v11

    const-string v13, "external"

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 343
    .local v1, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 344
    .restart local v7       #uri:Landroid/net/Uri;
    if-eqz v1, :cond_7

    .line 348
    :try_start_1
    new-instance v11, Landroid/content/Intent;

    const-string v13, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v11, v13, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 352
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v13, 0x1

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static {v11, v13}, Lcom/android/providers/media/MediaProvider;->access$802(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 354
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 358
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v8, values:Landroid/content/ContentValues;
    const-string v11, "_data"

    const-string v13, ""

    invoke-virtual {v8, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v9, "storage_id=?"

    .line 361
    .local v9, where:Ljava/lang/String;
    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v11

    .line 362
    .local v10, whereArgs:[Ljava/lang/String;
    const-string v11, "files"

    invoke-virtual {v2, v11, v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 364
    const-string v11, "files"

    invoke-virtual {v2, v11, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "external"

    invoke-static {v13}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "external"

    invoke-static {v13}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "external"

    invoke-static {v13}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "external"

    invoke-static {v13}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    :try_start_2
    new-instance v11, Landroid/content/Intent;

    const-string v13, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v11, v13, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v13, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static {v11, v13}, Lcom/android/providers/media/MediaProvider;->access$802(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 383
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #values:Landroid/content/ContentValues;
    .end local v9           #where:Ljava/lang/String;
    .end local v10           #whereArgs:[Ljava/lang/String;
    :cond_7
    :goto_1
    monitor-exit v12

    goto/16 :goto_0

    .end local v1           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v7           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 375
    .restart local v1       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v7       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 376
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/lang/String;

    move-result-object v11

    const-string v13, "exception deleting storage entries"

    invoke-static {v11, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    :try_start_4
    new-instance v11, Landroid/content/Intent;

    const-string v13, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v11, v13, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    iget-object v11, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v13, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static {v11, v13}, Lcom/android/providers/media/MediaProvider;->access$802(Lcom/android/providers/media/MediaProvider;Z)Z

    goto :goto_1

    .line 378
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v13, v14, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    iget-object v13, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v14, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static {v13, v14}, Lcom/android/providers/media/MediaProvider;->access$802(Lcom/android/providers/media/MediaProvider;Z)Z

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
