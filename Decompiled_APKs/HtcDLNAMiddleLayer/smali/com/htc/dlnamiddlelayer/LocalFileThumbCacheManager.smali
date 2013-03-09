.class public Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;
.super Ljava/lang/Object;
.source "LocalFileThumbCacheManager.java"


# instance fields
.field private mCacheSize:I

.field private mContext:Landroid/content/Context;

.field private mDBHelperExternal:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

.field private mDBHelperPhone:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

.field private mExternalStorageFolder:Ljava/lang/String;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPhoneStorageFolder:Ljava/lang/String;

.field private mPhoneStorageReady:Z

.field private mScreenLarge:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "fileCacheSize"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-boolean v3, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mPhoneStorageReady:Z

    .line 305
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 306
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    .line 307
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mDBHelperExternal:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    .line 308
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mContext:Landroid/content/Context;

    .line 309
    iput v3, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mScreenLarge:I

    .line 310
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mCacheSize:I

    .line 34
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mCacheSize:I

    .line 36
    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    .line 38
    invoke-static {v4}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mPhoneStorageReady:Z

    .line 39
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->initializeThumbDB()V

    .line 41
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 42
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mScreenLarge:I

    .line 43
    return-void
.end method

.method private chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "fileName"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    return-object v0
.end method

.method private initializeThumbDB()V
    .locals 6

    .prologue
    .line 161
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mExternalStorageFolder:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_0
    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    .line 167
    .local v1, vid:I
    new-instance v2, Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mContext:Landroid/content/Context;

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

    invoke-direct {v2, v3, v4}, Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mDBHelperExternal:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    .line 170
    .end local v0           #file:Ljava/io/File;
    .end local v1           #vid:I
    :cond_1
    iget-boolean v2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mPhoneStorageReady:Z

    if-eqz v2, :cond_3

    .line 171
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mPhoneStorageFolder:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 175
    :cond_2
    new-instance v2, Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mContext:Landroid/content/Context;

    const-string v4, "DBPhoneThumb"

    invoke-direct {v2, v3, v4}, Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    .line 177
    .end local v0           #file:Ljava/io/File;
    :cond_3
    return-void
.end method

.method private insertThumbDB(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 22
    .parameter "fileName"
    .parameter "cacheName"
    .parameter "type"

    .prologue
    .line 212
    const/4 v5, 0x0

    .line 213
    .local v5, dbhelper:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;
    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 214
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mDBHelperExternal:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    .line 216
    :cond_0
    if-nez v5, :cond_1

    .line 217
    const-string v16, "DLNAMiddlelayer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Not support path. "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 225
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 226
    .local v11, recordCount:I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 227
    .local v12, t1:J
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SELECT COUNT(_id) FROM thumbnails WHERE type="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 228
    .local v2, c:Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 231
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 232
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .line 236
    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 240
    .local v14, t2:J
    const-string v16, "DLNAMiddlelayer"

    const-string v17, "Query time: %d, count: %d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sub-long v20, v14, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mCacheSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v11, v0, :cond_6

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 244
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SELECT _id, _data FROM thumbnails WHERE type="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ORDER BY date_modified LIMIT 1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 245
    const/4 v10, -0x1

    .line 246
    .local v10, id:I
    const/4 v9, 0x0

    .line 247
    .local v9, filePath:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 250
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 252
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 253
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    .line 258
    :cond_4
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 262
    const-string v16, "DLNAMiddlelayer"

    const-string v17, "Query id time: %d, id=%d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sub-long v20, v14, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v10, v0, :cond_6

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 266
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DELETE FROM thumbnails WHERE _id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 268
    const-string v16, "DLNAMiddlelayer"

    const-string v17, "Delete id time: %d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sub-long v20, v14, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-eqz v9, :cond_6

    .line 273
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v6, delFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 275
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 281
    .end local v6           #delFile:Ljava/io/File;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #id:I
    :cond_6
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v8, file:Ljava/io/File;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 283
    .local v3, cv:Landroid/content/ContentValues;
    const-string v16, "_data"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v16, "type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v16, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 287
    const-string v16, "thumbnails"

    const-string v17, "type"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 289
    const-string v16, "DLNAMiddlelayer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Insert time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-long v18, v14, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 297
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 236
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v8           #file:Ljava/io/File;
    .end local v14           #t2:J
    :catchall_0
    move-exception v16

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 291
    .end local v2           #c:Landroid/database/Cursor;
    .end local v12           #t1:J
    :catch_0
    move-exception v7

    .line 293
    .local v7, e:Ljava/lang/Exception;
    :try_start_6
    const-string v16, "DLNAMiddlelayer"

    const-string v17, "update thumbnail fail"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 297
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 258
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #c:Landroid/database/Cursor;
    .restart local v9       #filePath:Ljava/lang/String;
    .restart local v10       #id:I
    .restart local v12       #t1:J
    .restart local v14       #t2:J
    :catchall_1
    move-exception v16

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 297
    .end local v2           #c:Landroid/database/Cursor;
    .end local v9           #filePath:Ljava/lang/String;
    .end local v10           #id:I
    .end local v12           #t1:J
    .end local v14           #t2:J
    :catchall_2
    move-exception v16

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v16
.end method

.method private makeCacheFilename(Ljava/lang/String;JII)Ljava/lang/String;
    .locals 5
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"

    .prologue
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, hash:Ljava/lang/String;
    const-string v1, "%d-%08X-%d-%d.jpg"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mScreenLarge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .parameter "fileName"
    .parameter "cacheName"
    .parameter "type"

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 181
    .local v3, t1:J
    const/4 v1, 0x0

    .line 182
    .local v1, dbhelper:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;
    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 183
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mDBHelperExternal:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    .line 185
    :cond_0
    if-nez v1, :cond_1

    .line 186
    const-string v8, "DLNAMiddlelayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not support path. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 194
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v8, "thumbnails"

    const-string v9, "_data=? and type=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v0, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 207
    .end local v7           #values:Landroid/content/ContentValues;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 208
    .local v5, t2:J
    const-string v8, "DLNAMiddlelayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v5, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v5           #t2:J
    :catch_0
    move-exception v2

    .line 200
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "DLNAMiddlelayer"

    const-string v9, "update access time fail"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v8
.end method


# virtual methods
.method protected onMediaMounted()V
    .locals 5

    .prologue
    .line 138
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mDBHelperExternal:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 141
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mDBHelperExternal:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;->close()V

    .line 142
    invoke-static {}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, vid:I
    new-instance v1, Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mContext:Landroid/content/Context;

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

    invoke-direct {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mDBHelperExternal:Lcom/htc/dlnamiddlelayer/LocalThumbnailDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 148
    .end local v0           #vid:I
    :cond_0
    return-void

    .line 145
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pull(Ljava/lang/String;JII)Ljava/lang/String;
    .locals 6
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
    const/4 v3, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 103
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "Pull by empty filename"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return-object v3

    .line 107
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->makeCacheFilename(Ljava/lang/String;JII)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, cacheName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, rootFolder:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, p5}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public push(Ljava/lang/String;JIILandroid/graphics/Bitmap;)Z
    .locals 12
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
    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, bRet:Z
    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 58
    :cond_0
    const-string v8, "DLNAMiddlelayer"

    const-string v9, "Bmp null or recycled."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 90
    .end local v1           #bRet:Z
    .local v2, bRet:I
    :goto_0
    return v2

    .line 62
    .end local v2           #bRet:I
    .restart local v1       #bRet:Z
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->makeCacheFilename(Ljava/lang/String;JII)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, cacheName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, rootFolder:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 68
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v5, file:Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 70
    .local v6, fs:Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x55

    move-object/from16 v0, p6

    invoke-virtual {v0, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    .line 71
    .local v3, bmpRet:Z
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 73
    if-eqz v5, :cond_2

    .line 75
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_3

    .line 77
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, p5

    invoke-direct {p0, p1, v8, v0}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->insertThumbDB(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    const/4 v1, 0x1

    .line 87
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v1

    .line 90
    .restart local v2       #bRet:I
    goto :goto_0

    .line 82
    .end local v2           #bRet:I
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 83
    const-string v8, "DLNAMiddlelayer"

    const-string v9, "Local thumb cache is failed to save"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 87
    .end local v3           #bmpRet:Z
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fs:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v8
.end method

.method public remove(Ljava/lang/String;JII)V
    .locals 4
    .parameter "fileName"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->makeCacheFilename(Ljava/lang/String;JII)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, cacheName:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->chooseRootFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, rootFolder:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
