.class public Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;
.super Ljava/lang/Object;
.source "ImageFileCacheManager.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "FileCacheMgr"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ImageDBHelper;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mStorageFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ImageDBHelper;

    .line 29
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mContext:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mStorageFolder:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->initializeImageDB()V

    .line 38
    return-void
.end method

.method private deleteImageDB(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "cachePath"
    .parameter "uri"
    .parameter "isAlbumArt"

    .prologue
    .line 108
    const/4 v9, 0x0

    .line 109
    .local v9, dbhelper:Lcom/htc/dlnamiddlelayer/ImageDBHelper;
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mStorageFolder:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ImageDBHelper;

    .line 112
    :cond_0
    if-nez v9, :cond_2

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    :try_start_0
    invoke-virtual {v9}, Lcom/htc/dlnamiddlelayer/ImageDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 119
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 120
    .local v1, tableName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 122
    .local v11, recordCount:I
    if-eqz p3, :cond_4

    .line 123
    const-string v1, "image_music"

    .line 127
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" and _uri = \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, where:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 129
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 130
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 133
    if-eqz v11, :cond_3

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " WHERE _id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #tableName:Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v11           #recordCount:I
    :catch_0
    move-exception v10

    .line 143
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "FileCacheMgr"

    const-string v4, "delete iamges db fail"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #tableName:Ljava/lang/String;
    .restart local v11       #recordCount:I
    :cond_4
    :try_start_1
    const-string v1, "image_photo"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initializeImageDB()V
    .locals 4

    .prologue
    .line 97
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "initialize database"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mStorageFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, file1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 104
    :cond_0
    new-instance v1, Lcom/htc/dlnamiddlelayer/ImageDBHelper;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mContext:Landroid/content/Context;

    const-string v3, "DImageCache"

    invoke-direct {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/ImageDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ImageDBHelper;

    .line 105
    return-void
.end method

.method private insertImageDB(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 22
    .parameter "cachePath"
    .parameter "uri"
    .parameter "isAlbumArt"

    .prologue
    .line 195
    const/4 v12, 0x0

    .line 196
    .local v12, dbhelper:Lcom/htc/dlnamiddlelayer/ImageDBHelper;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mStorageFolder:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ImageDBHelper;

    .line 199
    :cond_0
    if-nez v12, :cond_1

    .line 200
    const-string v3, "FileCacheMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported path. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return-void

    .line 206
    :cond_1
    :try_start_0
    invoke-virtual {v12}, Lcom/htc/dlnamiddlelayer/ImageDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 207
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 208
    .local v2, tableName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 209
    .local v10, cacheSize:I
    const/16 v17, 0x0

    .line 210
    .local v17, recordCount:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 212
    .local v18, t1:J
    if-eqz p3, :cond_8

    .line 214
    const/4 v10, 0x7

    .line 215
    const-string v2, "image_music"

    .line 223
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(_id) FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 224
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 225
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 227
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 230
    .local v20, t2:J
    const-string v3, "FileCacheMgr"

    const-string v4, "Query time: %d, count: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-long v7, v20, v18

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move/from16 v0, v17

    if-lt v0, v10, :cond_7

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 235
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date_modified"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 236
    const/4 v15, -0x1

    .line 237
    .local v15, id:I
    const/16 v16, 0x0

    .line 238
    .local v16, path:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 240
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 242
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 243
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 245
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 248
    const-string v3, "FileCacheMgr"

    const-string v4, "Query id time: %d, id=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-long v7, v20, v18

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v3, -0x1

    if-eq v15, v3, :cond_7

    .line 251
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 254
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 256
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE _id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 259
    const-string v3, "FileCacheMgr"

    const-string v4, "Delete id time: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sub-long v7, v20, v18

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v14           #file:Ljava/io/File;
    .end local v15           #id:I
    .end local v16           #path:Ljava/lang/String;
    :cond_7
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v11, cv:Landroid/content/ContentValues;
    const-string v3, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v11, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v3, "_uri"

    move-object/from16 v0, p2

    invoke-virtual {v11, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 269
    const-string v3, "date_modified"

    invoke-virtual {v1, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 271
    const-string v3, "FileCacheMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v20, v18

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 274
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #tableName:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #cacheSize:I
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v17           #recordCount:I
    .end local v18           #t1:J
    .end local v20           #t2:J
    :catch_0
    move-exception v13

    .line 276
    .local v13, e:Ljava/lang/Exception;
    const-string v3, "FileCacheMgr"

    const-string v4, "update images fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 219
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #tableName:Ljava/lang/String;
    .restart local v10       #cacheSize:I
    .restart local v17       #recordCount:I
    .restart local v18       #t1:J
    :cond_8
    const/4 v10, 0x7

    .line 220
    :try_start_1
    const-string v2, "image_photo"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private updateImageDB(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .parameter "cachePath"
    .parameter "uri"
    .parameter "isAlbumArt"

    .prologue
    .line 148
    const/4 v10, 0x0

    .line 149
    .local v10, dbhelper:Lcom/htc/dlnamiddlelayer/ImageDBHelper;
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mStorageFolder:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ImageDBHelper;

    .line 152
    :cond_0
    if-nez v10, :cond_1

    .line 192
    :goto_0
    return-void

    .line 158
    :cond_1
    :try_start_0
    invoke-virtual {v10}, Lcom/htc/dlnamiddlelayer/ImageDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 159
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 160
    .local v1, tableName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 162
    .local v12, recordCount:I
    if-eqz p3, :cond_4

    .line 163
    const-string v1, "image_music"

    .line 167
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" and _uri = \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, where:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 169
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 170
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 173
    if-eqz v12, :cond_2

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " WHERE _id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v9, cv:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v9, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "_uri"

    invoke-virtual {v9, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    const-string v2, "date_modified"

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 188
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #tableName:Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v12           #recordCount:I
    :catch_0
    move-exception v11

    .line 190
    .local v11, e:Ljava/lang/Exception;
    const-string v2, "FileCacheMgr"

    const-string v4, "update iamges fail"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 165
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #tableName:Ljava/lang/String;
    .restart local v12       #recordCount:I
    :cond_4
    :try_start_1
    const-string v1, "image_photo"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public filePush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "serverID"
    .parameter "itemID"
    .parameter "uri"
    .parameter "filePath"
    .parameter "isAlbumArt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 62
    invoke-direct {p0, p4, p3, p5}, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->insertImageDB(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 66
    return-void

    .line 64
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getCacheFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "serverID"
    .parameter "itemID"
    .parameter "fileFormat"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mStorageFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/com.htc.dlnamiddlelayer/cache/images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s_%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFileExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 5
    .parameter "serverID"
    .parameter "itemID"
    .parameter "uri"
    .parameter "isForce"
    .parameter "fileFormat"
    .parameter "isAlbumArt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0, p1, p2, p5}, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->makeCacheFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, cacheName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->mStorageFolder:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    if-nez p4, :cond_1

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3, p6}, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->updateImageDB(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 79
    const/4 v2, 0x1

    .line 91
    :cond_0
    :goto_0
    return v2

    .line 83
    :cond_1
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "Force download image"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3, p6}, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->deleteImageDB(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public makeCacheFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "serverID"
    .parameter "itemID"
    .parameter "fileFormat"

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/com.htc.dlnamiddlelayer/cache/images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s_%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
