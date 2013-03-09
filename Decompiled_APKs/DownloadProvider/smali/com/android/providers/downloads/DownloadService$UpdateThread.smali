.class Lcom/android/providers/downloads/DownloadService$UpdateThread;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    .line 340
    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method private bindMediaScanner()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 520
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$100(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 521
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 522
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.media"

    const-string v2, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 525
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    invoke-static {v2}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/providers/downloads/DownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 527
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private scheduleAlarm(J)V
    .locals 7
    .parameter "wakeUp"

    .prologue
    const/4 v6, 0x0

    .line 530
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 531
    .local v0, alarms:Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 532
    const-string v2, "DownloadManager"

    const-string v3, "couldn\'t get alarm manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_0
    return-void

    .line 536
    :cond_0
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_1

    .line 537
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduling retry in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.providers.downloads"

    const-class v3, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/high16 v5, 0x4000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 345
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 346
    const/16 v18, 0x0

    .line 349
    .local v18, keepService:Z
    const-wide v25, 0x7fffffffffffffffL

    .line 351
    .local v25, wakeUp:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    monitor-enter v5

    .line 352
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    move-object/from16 v0, p0

    if-eq v4, v0, :cond_1

    .line 353
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "multiple UpdateThreads in DownloadService"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 367
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 356
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$300(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    .line 358
    if-nez v18, :cond_2

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->stopSelf()V

    .line 361
    :cond_2
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v25, v6

    if-eqz v4, :cond_3

    .line 362
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->scheduleAlarm(J)V

    .line 364
    :cond_3
    monitor-exit v5

    return-void

    .line 366
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v6, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z
    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$302(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 367
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v4}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v22

    .line 382
    .local v22, now:J
    const/16 v19, 0x0

    .line 383
    .local v19, mustScan:Z
    const/16 v18, 0x0

    .line 384
    const-wide v25, 0x7fffffffffffffffL

    .line 385
    new-instance v16, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 390
    .local v16, idsNoLongerInDatabase:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v10, 0x0

    .line 392
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 403
    :cond_5
    :goto_0
    if-eqz v10, :cond_0

    .line 407
    :try_start_3
    new-instance v24, Lcom/android/providers/downloads/DownloadInfo$Reader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v10}, Lcom/android/providers/downloads/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    .line 409
    .local v24, reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    const-string v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 410
    .local v15, idColumn:I
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_6

    .line 411
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number of rows from downloads-db: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_b

    .line 415
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 416
    .local v13, id:J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 418
    .local v17, info:Lcom/android/providers/downloads/DownloadInfo;
    if-eqz v17, :cond_9

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-wide/from16 v2, v22

    #calls: Lcom/android/providers/downloads/DownloadService;->updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$500(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V

    .line 424
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v17

    #calls: Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    invoke-static {v4, v0, v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v4

    if-nez v4, :cond_7

    .line 425
    const/16 v19, 0x1

    .line 426
    const/16 v18, 0x1

    .line 435
    :cond_7
    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo;->nextAction(J)J

    move-result-wide v20

    .line 436
    .local v20, next:J
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-nez v4, :cond_a

    .line 437
    const/16 v18, 0x1

    .line 414
    :cond_8
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 444
    .end local v13           #id:J
    .end local v15           #idColumn:I
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v20           #next:J
    .end local v24           #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :catch_0
    move-exception v11

    .line 445
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "downloadservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dump catch java exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 449
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 452
    .end local v11           #e:Ljava/lang/Exception;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 453
    .local v13, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    #calls: Lcom/android/providers/downloads/DownloadService;->deleteDownload(J)V
    invoke-static {v4, v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;J)V

    goto :goto_5

    .line 395
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #id:Ljava/lang/Long;
    :catch_1
    move-exception v11

    .line 396
    .local v11, e:Landroid/database/CursorWindowAllocationException;
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dump catch java exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-eqz v10, :cond_5

    .line 398
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 399
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 421
    .end local v11           #e:Landroid/database/CursorWindowAllocationException;
    .local v13, id:J
    .restart local v15       #idColumn:I
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    .restart local v24       #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    #calls: Lcom/android/providers/downloads/DownloadService;->insertDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    invoke-static {v4, v0, v1, v2}, Lcom/android/providers/downloads/DownloadService;->access$600(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v17

    goto/16 :goto_2

    .line 438
    .restart local v20       #next:J
    :cond_a
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_8

    cmp-long v4, v20, v25

    if-gez v4, :cond_8

    .line 439
    move-wide/from16 v25, v20

    goto :goto_3

    .line 449
    .end local v13           #id:J
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v20           #next:J
    :cond_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v15           #idColumn:I
    .end local v24           #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :catchall_1
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    .line 458
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_c
    if-nez v19, :cond_e

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 460
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 461
    const/16 v19, 0x1

    .line 462
    const/16 v18, 0x1

    .line 467
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$900(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotification;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/providers/downloads/DownloadNotification;->updateNotification(Ljava/util/Collection;)V

    .line 468
    if-eqz v19, :cond_10

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->bindMediaScanner()V

    .line 476
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_f
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 477
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-eqz v4, :cond_f

    .line 480
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 481
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v17

    #calls: Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    invoke-static {v4, v0, v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v4

    if-nez v4, :cond_f

    .line 485
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "scanFile failed!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 471
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->disconnectMediaScanner()V

    goto :goto_6

    .line 492
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 509
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    #calls: Lcom/android/providers/downloads/DownloadService;->deleteFileIfExists(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/downloads/DownloadService;->access$1100(Lcom/android/providers/downloads/DownloadService;Ljava/lang/String;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_7
.end method
