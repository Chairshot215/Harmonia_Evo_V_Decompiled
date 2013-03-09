.class final Lcom/android/providers/media/MediaProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mAlbumArtCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mAlbumCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mArtistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mEarlyUpgrade:Z

.field final mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

.field final mName:Ljava/lang/String;

.field final mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field mUpgradeAttempted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/providers/media/MediaProvider$STORAGE;ZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "internal"
    .parameter "earlyUpgrade"
    .parameter "objectRemovedCallback"

    .prologue
    .line 465
    const/4 v0, 0x0

    const/16 v1, 0x198

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumArtCaches:Ljava/util/HashMap;

    .line 466
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 467
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    .line 468
    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    .line 469
    iput-boolean p4, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mEarlyUpgrade:Z

    .line 470
    iput-object p5, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 471
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 478
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 487
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 484
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 516
    monitor-enter p0

    const/4 v1, 0x0

    .line 517
    .local v1, result:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 530
    :cond_0
    if-nez v1, :cond_1

    :try_start_2
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    if-eqz v2, :cond_1

    .line 531
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 532
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 534
    :goto_0
    monitor-exit p0

    return-object v2

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_0

    .line 523
    const/4 v2, 0x0

    goto :goto_0

    .line 516
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 496
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DatabaseHelper][onCreate]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    const/4 v1, 0x0

    const/16 v2, 0x198

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/media/MediaProvider$STORAGE;II)V
    invoke-static {p1, v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->access$1200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/media/MediaProvider$STORAGE;II)V

    .line 499
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 28
    .parameter "db"

    .prologue
    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/providers/media/MediaProvider$STORAGE;->INTERNAL:Lcom/android/providers/media/MediaProvider$STORAGE;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 687
    :cond_0
    return-void

    .line 556
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mEarlyUpgrade:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 559
    const-string v25, "_OBJECT_REMOVED"

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 564
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 567
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .local v8, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 573
    .local v16, now:J
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, databases:[Ljava/lang/String;
    array-length v4, v5

    .line 578
    .local v4, count:I
    const/4 v12, 0x3

    .line 581
    .local v12, limit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v6

    .line 582
    .local v6, databasesToDel:[Ljava/lang/String;
    const-string v19, ".db-shm"

    .line 583
    .local v19, shm:Ljava/lang/String;
    const-string v24, ".db-wal"

    .line 584
    .local v24, wal:Ljava/lang/String;
    const-string v11, "-journal"

    .line 589
    .local v11, journal:Ljava/lang/String;
    const-wide v25, 0x134fd9000L

    sub-long v22, v16, v25

    .line 590
    .local v22, twoMonthsAgo:J
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_c

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    aget-object v26, v5, v9

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 595
    .local v18, other:Ljava/io/File;
    const-string v25, "internal.db"

    aget-object v26, v5, v9

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 596
    :cond_3
    const/16 v25, 0x0

    aput-object v25, v5, v9

    .line 597
    add-int/lit8 v4, v4, -0x1

    .line 598
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 601
    add-int/lit8 v12, v12, -0x1

    .line 590
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 604
    :cond_5
    aget-object v25, v5, v9

    if-eqz v25, :cond_6

    aget-object v25, v5, v9

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 607
    const/16 v25, 0x0

    aput-object v25, v5, v9

    .line 608
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 609
    :cond_6
    aget-object v25, v5, v9

    if-eqz v25, :cond_7

    aget-object v25, v5, v9

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 613
    const/16 v25, 0x0

    aput-object v25, v5, v9

    .line 614
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 616
    :cond_7
    aget-object v25, v5, v9

    if-eqz v25, :cond_8

    aget-object v25, v5, v9

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 620
    const/16 v25, 0x0

    aput-object v25, v5, v9

    .line 621
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 625
    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    .line 626
    .local v20, time:J
    cmp-long v25, v20, v22

    if-gez v25, :cond_4

    .line 628
    aget-object v25, v5, v9

    const-string v26, ".db"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 630
    .local v10, idx:I
    aget-object v7, v5, v9

    .line 632
    .local v7, dbName:Ljava/lang/String;
    if-ltz v10, :cond_9

    .line 633
    aget-object v25, v5, v9

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 638
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    aget-object v26, v5, v9

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 639
    const/16 v25, 0x0

    aput-object v25, v5, v9

    .line 640
    add-int/lit8 v4, v4, -0x1

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v6, v7}, Lcom/android/providers/media/MediaProvider;->DeleteShmWalDB(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 666
    .end local v7           #dbName:Ljava/lang/String;
    .end local v10           #idx:I
    .end local v18           #other:Ljava/io/File;
    .end local v20           #time:J
    .local v13, lruIndex:I
    .local v14, lruTime:J
    :cond_a
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v13, v0, :cond_c

    .line 668
    aget-object v25, v5, v13

    const-string v26, ".db"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 670
    .restart local v10       #idx:I
    aget-object v7, v5, v13

    .line 672
    .restart local v7       #dbName:Ljava/lang/String;
    if-ltz v10, :cond_b

    .line 673
    aget-object v25, v5, v13

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 678
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    aget-object v26, v5, v13

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 679
    const/16 v25, 0x0

    aput-object v25, v5, v13

    .line 680
    add-int/lit8 v4, v4, -0x1

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v6, v7}, Lcom/android/providers/media/MediaProvider;->DeleteShmWalDB(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Z

    .line 651
    .end local v7           #dbName:Ljava/lang/String;
    .end local v10           #idx:I
    .end local v13           #lruIndex:I
    .end local v14           #lruTime:J
    :cond_c
    if-le v4, v12, :cond_0

    .line 652
    const/4 v13, -0x1

    .line 653
    .restart local v13       #lruIndex:I
    const-wide/16 v14, 0x0

    .line 655
    .restart local v14       #lruTime:J
    const/4 v9, 0x0

    :goto_2
    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_a

    .line 656
    aget-object v25, v5, v9

    if-eqz v25, :cond_e

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    aget-object v26, v5, v9

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    .line 658
    .restart local v20       #time:J
    const-wide/16 v25, 0x0

    cmp-long v25, v14, v25

    if-eqz v25, :cond_d

    cmp-long v25, v20, v14

    if-gez v25, :cond_e

    .line 659
    :cond_d
    move v13, v9

    .line 660
    move-wide/from16 v14, v20

    .line 655
    .end local v20           #time:J
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    .line 511
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Lcom/android/providers/media/MediaProvider$STORAGE;

    #calls: Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/media/MediaProvider$STORAGE;II)V
    invoke-static {p1, v0, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$1200(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/media/MediaProvider$STORAGE;II)V

    .line 512
    return-void
.end method
