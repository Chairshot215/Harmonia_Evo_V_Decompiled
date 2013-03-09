.class public Lcom/htc/opensense/album/util/ImageFileCacheManager;
.super Ljava/lang/Object;
.source "ImageFileCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "FileCacheMgr"

.field private static MIN_SPACE_DIV_BLOCK_SIZE:D = 0.0

.field private static final STORAGE_MIN_SPACE:J = 0x100000L


# instance fields
.field private mCacheSize:I

.field private mContext:Landroid/content/Context;

.field private mDBHelperExternal:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

.field private mDBHelperPhone:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

.field private mExternalStorageFolder:Ljava/lang/String;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPhoneStorageFolder:Ljava/lang/String;

.field private mPhoneStorageReady:Z

.field private mScreenLarge:I

.field private mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 290
    const-wide/high16 v0, -0x4010

    sput-wide v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "fileCacheSize"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-boolean v3, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mPhoneStorageReady:Z

    .line 571
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 572
    iput-object v2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    .line 573
    iput-object v2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    .line 574
    iput-object v2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mContext:Landroid/content/Context;

    .line 575
    iput v3, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mScreenLarge:I

    .line 576
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mCacheSize:I

    .line 43
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mContext:Landroid/content/Context;

    .line 44
    iput p2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mCacheSize:I

    .line 45
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    .line 47
    invoke-static {v4}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mPhoneStorageReady:Z

    .line 49
    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->initializeThumbDB()V

    .line 50
    new-instance v1, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;-><init>(Lcom/htc/opensense/album/util/ImageFileCacheManager;)V

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    .line 51
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->start()V

    .line 53
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 54
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mScreenLarge:I

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/album/util/ImageFileCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->insertThumbDB(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/util/ImageFileCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 286
    invoke-static {p1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeThumbDB()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 332
    invoke-static {v6}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 337
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    .line 338
    .local v1, vid:I
    new-instance v2, Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DBExternalThumb-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    .line 341
    .end local v0           #file:Ljava/io/File;
    .end local v1           #vid:I
    :cond_1
    invoke-static {v6}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 346
    :cond_2
    new-instance v2, Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mContext:Landroid/content/Context;

    const-string v4, "DBPhoneThumb"

    invoke-direct {v2, v3, v4}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    .line 348
    .end local v0           #file:Ljava/io/File;
    :cond_3
    return-void
.end method

.method private insertThumbDB(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18
    .parameter "fileName"
    .parameter "cacheName"
    .parameter "type"

    .prologue
    .line 386
    const-string v14, "FileCacheMgr"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "insert record="

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    invoke-static {v14, v15}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    const/4 v4, 0x0

    .line 390
    .local v4, dbhelper:Lcom/htc/opensense/album/util/ThumbnailDBHelper;
    invoke-static/range {p1 .. p1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    .line 395
    :goto_0
    if-nez v4, :cond_1

    .line 396
    const-string v14, "FileCacheMgr"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Not support path. "

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    invoke-static {v14, v15}, Lcom/htc/opensense/album/util/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    :goto_1
    return-void

    .line 393
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 402
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v14

    if-nez v14, :cond_2

    .line 403
    const-string v14, "FileCacheMgr"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "database closed. "

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    invoke-static {v14, v15}, Lcom/htc/opensense/album/util/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 409
    :cond_2
    const/4 v9, 0x0

    .line 410
    .local v9, recordCount:I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 411
    .local v10, t1:J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELECT COUNT(_id) FROM thumbnails WHERE type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 412
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 415
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 416
    const/4 v14, 0x0

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 420
    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 423
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 426
    .local v12, t2:J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mCacheSize:I

    if-lt v9, v14, :cond_8

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 428
    const/4 v8, 0x0

    .line 429
    .local v8, path:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELECT _id, _data FROM thumbnails WHERE type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ORDER BY date_modified LIMIT 1"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 430
    const/4 v7, -0x1

    .line 431
    .local v7, id:I
    if-eqz v1, :cond_6

    .line 434
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 436
    const/4 v14, 0x0

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 437
    const/4 v14, 0x1

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 442
    :cond_5
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 445
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 448
    const/4 v14, -0x1

    if-eq v7, v14, :cond_8

    .line 449
    if-eqz v8, :cond_7

    .line 451
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 455
    .end local v6           #file:Ljava/io/File;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 456
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DELETE FROM thumbnails WHERE _id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 464
    .end local v7           #id:I
    .end local v8           #path:Ljava/lang/String;
    :cond_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 465
    .local v2, cv:Landroid/content/ContentValues;
    const-string v14, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v2, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v14, "type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    const-string v14, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 469
    const-string v14, "thumbnails"

    const-string v15, "type"

    invoke-virtual {v3, v14, v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 480
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 420
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v12           #t2:J
    :catchall_0
    move-exception v14

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 474
    .end local v1           #c:Landroid/database/Cursor;
    .end local v10           #t1:J
    :catch_0
    move-exception v5

    .line 476
    .local v5, e:Ljava/lang/Exception;
    :try_start_6
    const-string v14, "FileCacheMgr"

    const-string v15, "update thumbnail fail"

    invoke-static {v14, v15, v5}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 480
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1

    .line 442
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v7       #id:I
    .restart local v8       #path:Ljava/lang/String;
    .restart local v10       #t1:J
    .restart local v12       #t2:J
    :catchall_1
    move-exception v14

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 480
    .end local v1           #c:Landroid/database/Cursor;
    .end local v7           #id:I
    .end local v8           #path:Ljava/lang/String;
    .end local v10           #t1:J
    .end local v12           #t2:J
    :catchall_2
    move-exception v14

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v14
.end method

.method private isStorageSpaceAvailable()Z
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 294
    const/4 v0, 0x0

    .line 297
    .local v0, available:Z
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, path:Ljava/lang/String;
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 299
    .local v7, stat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    .line 300
    .local v4, nAvailableBlock:I
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    .line 301
    .local v5, nBlockSize:I
    mul-int v10, v4, v5

    int-to-long v2, v10

    .line 305
    .local v2, lFreeSpace:J
    const-string v10, "FileCacheMgr"

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "[isStorageSpaceAvailable] Path = "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    const/4 v12, 0x2

    const-string v13, ", Storage threshold = "

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-wide/32 v13, 0x100000

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, ", AvailableBlocks = "

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, ", BlockSize = "

    aput-object v13, v11, v12

    const/4 v12, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, ", Free Space = "

    aput-object v13, v11, v12

    const/16 v12, 0x9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    sget-wide v10, Lcom/htc/opensense/album/util/ImageFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    .line 312
    if-lez v5, :cond_2

    const-wide/32 v10, 0x100000

    int-to-long v12, v5

    div-long/2addr v10, v12

    long-to-double v10, v10

    :goto_0
    sput-wide v10, Lcom/htc/opensense/album/util/ImageFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D

    .line 315
    :cond_0
    int-to-double v10, v4

    sget-wide v12, Lcom/htc/opensense/album/util/ImageFileCacheManager;->MIN_SPACE_DIV_BLOCK_SIZE:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    move v0, v8

    .line 323
    .end local v2           #lFreeSpace:J
    .end local v4           #nAvailableBlock:I
    .end local v5           #nBlockSize:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #stat:Landroid/os/StatFs;
    :goto_1
    if-nez v0, :cond_1

    .line 324
    const-string v8, "FileCacheMgr"

    const-string v9, "[isStorageSpaceAvailable] Storage space is less than 1M"

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_1
    return v0

    .line 312
    .restart local v2       #lFreeSpace:J
    .restart local v4       #nAvailableBlock:I
    .restart local v5       #nBlockSize:I
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #stat:Landroid/os/StatFs;
    :cond_2
    const-wide v10, 0x41dfffffffc00000L

    goto :goto_0

    :cond_3
    move v0, v9

    .line 315
    goto :goto_1

    .line 317
    .end local v2           #lFreeSpace:J
    .end local v4           #nAvailableBlock:I
    .end local v5           #nBlockSize:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 319
    .local v1, ex:Ljava/lang/Exception;
    const-string v8, "FileCacheMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[externalStorageChecker] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;
    .locals 5
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"
    .parameter "screenLarge"

    .prologue
    const/16 v4, 0x2d

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 257
    .local v1, n:I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 258
    .local v0, buf:[C
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static final toUpperCaseLength8([C)[C
    .locals 6
    .parameter "h"

    .prologue
    const/16 v5, 0x8

    .line 267
    array-length v2, p0

    .line 269
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 271
    aget-char v3, p0, v1

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    .line 272
    aget-char v3, p0, v1

    add-int/lit8 v3, v3, -0x20

    int-to-char v3, v3

    aput-char v3, p0, v1

    .line 269
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_1
    if-le v2, v5, :cond_2

    .line 282
    .end local p0
    :goto_1
    return-object p0

    .line 280
    .restart local p0
    :cond_2
    new-array v0, v5, [C

    fill-array-data v0, :array_0

    .line 281
    .local v0, buf:[C
    const/4 v3, 0x0

    rsub-int/lit8 v4, v2, 0x8

    invoke-static {p0, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 282
    goto :goto_1

    .line 280
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method

.method private updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "fileName"
    .parameter "cacheName"
    .parameter "type"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, dbhelper:Lcom/htc/opensense/album/util/ThumbnailDBHelper;
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    .line 357
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 358
    const-string v4, "FileCacheMgr"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Not support path. "

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :goto_1
    return-void

    .line 354
    :cond_1
    invoke-static {p1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 364
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3

    .line 365
    const-string v4, "FileCacheMgr"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "database closed. "

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 371
    :cond_3
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    const-string v4, "thumbnails"

    const-string v5, "_data=? and type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 375
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 377
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "FileCacheMgr"

    const-string v5, "update access time fail"

    invoke-static {v4, v5, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method


# virtual methods
.method protected onMediaMounted()V
    .locals 5

    .prologue
    .line 239
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    if-eqz v1, :cond_0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 242
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->close()V

    .line 243
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, vid:I
    new-instance v1, Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBExternalThumb-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense/album/util/ThumbnailDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 249
    .end local v0           #vid:I
    :cond_0
    return-void

    .line 246
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pull(Ljava/lang/String;JII)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 128
    const-string v2, "FileCacheMgr"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Pull by empty filename"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/htc/opensense/album/util/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v8, 0x0

    .line 199
    :goto_0
    return-object v8

    .line 132
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mScreenLarge:I

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, cacheName:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 135
    .local v12, rootFolder:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v10, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 138
    .local v13, t1:J
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    .line 139
    .local v11, fileExists:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 140
    .local v15, t2:J
    sub-long v4, v15, v13

    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    .line 142
    const-string v2, "FileCacheMgr"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "[PERFORMANCE_CHECK] File.Exists time "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sub-long v6, v15, v13

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, " ms"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_1
    if-nez v11, :cond_2

    const/4 v8, 0x0

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 150
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 152
    sub-long v4, v15, v13

    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 154
    const-string v2, "FileCacheMgr"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "[PERFORMANCE_CHECK] File.Delete time "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sub-long v6, v15, v13

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, " ms"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 159
    :cond_4
    const/4 v8, 0x0

    .line 162
    .local v8, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 163
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 166
    .local v17, t3:J
    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/opensense/album/util/ScaladoLib2;->decodeFile(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 170
    .local v19, t4:J
    sub-long v4, v19, v17

    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_5

    .line 172
    const-string v2, "FileCacheMgr"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "[PERFORMANCE_CHECK] decodeFile time "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sub-long v6, v19, v17

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, " ms"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_5
    if-nez v8, :cond_7

    .line 177
    const-string v2, "FileCacheMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[pull] Unable to decode file cache, delete it now..., Path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 179
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 181
    sub-long v4, v19, v17

    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_6

    .line 183
    const-string v2, "FileCacheMgr"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "[PERFORMANCE_CHECK] delete file time "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sub-long v6, v19, v17

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, " ms"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_6
    const/4 v8, 0x0

    .line 196
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 192
    .restart local v8       #bmp:Landroid/graphics/Bitmap;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    if-eqz v2, :cond_8

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    const/4 v4, 0x3

    new-instance v5, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$Parameter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {v5, v6, v0, v7, v1}, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$Parameter;-><init>(Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v4, v5}, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v3           #path:Ljava/lang/String;
    .end local v17           #t3:J
    .end local v19           #t4:J
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public push(Ljava/lang/String;JIILandroid/graphics/Bitmap;)Z
    .locals 17
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"
    .parameter "bmp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->isStorageSpaceAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    const/4 v2, 0x0

    .line 115
    :goto_0
    return v2

    .line 68
    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mScreenLarge:I

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;

    move-result-object v9

    .line 69
    .local v9, cacheName:Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, rootFolder:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 75
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v10, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 80
    .local v13, t1:J
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 81
    .local v11, fs:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    .line 82
    .local v8, bret:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 83
    .local v15, t2:J
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 85
    sub-long v2, v15, v13

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 87
    const-string v2, "FileCacheMgr"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[PERFORMANCE_CHECK] encode cache time "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sub-long v5, v15, v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, " ms. size: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_1
    if-eqz v8, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    if-eqz v2, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    const/4 v3, 0x2

    new-instance v4, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$Parameter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-direct {v4, v5, v0, v6, v1}, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker$Parameter;-><init>(Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 115
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 101
    :cond_3
    :try_start_1
    const-string v2, "FileCacheMgr"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "create cache fail. ("

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ", "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, ") "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->w2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 103
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 105
    sub-long v2, v15, v13

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 107
    const-string v2, "FileCacheMgr"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[PERFORMANCE_CHECK] encode delete time "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sub-long v5, v15, v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->i2(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_4
    const/4 v2, 0x0

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v8           #bret:Z
    .end local v10           #file:Ljava/io/File;
    .end local v11           #fs:Ljava/io/FileOutputStream;
    .end local v13           #t1:J
    .end local v15           #t2:J
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mThumbDBWorker:Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ImageFileCacheManager$ThumbDBWorker;->quit()Z

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperExternal:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->closeDB()V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/opensense/album/util/ThumbnailDBHelper;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ThumbnailDBHelper;->closeDB()V

    .line 236
    :cond_2
    return-void
.end method

.method public remove(Ljava/lang/String;JII)V
    .locals 9
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"

    .prologue
    .line 211
    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget v5, p0, Lcom/htc/opensense/album/util/ImageFileCacheManager;->mScreenLarge:I

    move-object v0, p1

    move-wide v1, p2

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, cacheName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/ImageFileCacheManager;->chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, rootFolder:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
