.class public Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;
.super Ljava/lang/Object;
.source "ThumbFileCacheManager.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "FileCacheMgr"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;

    .line 35
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mContext:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->initializeThumbDB()V

    .line 44
    return-void
.end method

.method private initializeThumbDB()V
    .locals 4

    .prologue
    .line 146
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "initialize database"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, file1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_0
    new-instance v1, Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mContext:Landroid/content/Context;

    const-string v3, "DThumbCache"

    invoke-direct {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;

    .line 154
    return-void
.end method

.method private insertThumbDB(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 22
    .parameter "cachePath"
    .parameter "uri"
    .parameter "isServer"

    .prologue
    .line 207
    const/4 v12, 0x0

    .line 208
    .local v12, dbhelper:Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STORAGE_FOLDER:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;

    .line 211
    :cond_0
    if-nez v12, :cond_1

    .line 212
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

    .line 290
    :goto_0
    return-void

    .line 218
    :cond_1
    :try_start_0
    invoke-virtual {v12}, Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 219
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 220
    .local v10, cacheSize:I
    const/4 v2, 0x0

    .line 221
    .local v2, tableName:Ljava/lang/String;
    const/16 v17, 0x0

    .line 222
    .local v17, recordCount:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 224
    .local v18, t1:J
    if-eqz p3, :cond_8

    .line 226
    const/16 v10, 0x14

    .line 227
    const-string v2, "thumb_server"

    .line 235
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

    .line 236
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 237
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 239
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 242
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

    .line 244
    move/from16 v0, v17

    if-lt v0, v10, :cond_7

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 247
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date_modified"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 248
    const/4 v15, -0x1

    .line 249
    .local v15, id:I
    const/16 v16, 0x0

    .line 250
    .local v16, path:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 252
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 255
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 257
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 260
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

    .line 262
    const/4 v3, -0x1

    if-eq v15, v3, :cond_7

    .line 263
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 266
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 268
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 269
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

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 271
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

    .line 276
    .end local v14           #file:Ljava/io/File;
    .end local v15           #id:I
    .end local v16           #path:Ljava/lang/String;
    :cond_7
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v11, cv:Landroid/content/ContentValues;
    const-string v3, "_data"

    move-object/from16 v0, p1

    invoke-virtual {v11, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v3, "_uri"

    move-object/from16 v0, p2

    invoke-virtual {v11, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 281
    const-string v3, "date_modified"

    invoke-virtual {v1, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 283
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

    .line 284
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 286
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

    .line 288
    .local v13, e:Ljava/lang/Exception;
    const-string v3, "FileCacheMgr"

    const-string v4, "update thumbnail fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #tableName:Ljava/lang/String;
    .restart local v10       #cacheSize:I
    .restart local v17       #recordCount:I
    .restart local v18       #t1:J
    :cond_8
    const/16 v10, 0x32

    .line 232
    :try_start_1
    const-string v2, "thumb_content"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private updateThumbDB(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .parameter "cachePath"
    .parameter "uri"
    .parameter "isServer"

    .prologue
    .line 157
    const/4 v10, 0x0

    .line 158
    .local v10, dbhelper:Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;
    const/4 v1, 0x0

    .line 159
    .local v1, tableName:Ljava/lang/String;
    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mDBHelperPhone:Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;

    .line 162
    :cond_0
    if-nez v10, :cond_1

    .line 204
    :goto_0
    return-void

    .line 168
    :cond_1
    :try_start_0
    invoke-virtual {v10}, Lcom/htc/dlnamiddlelayer/ThumbnailDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 171
    .local v12, recordCount:I
    if-eqz p3, :cond_4

    .line 173
    const-string v1, "thumb_server"

    .line 179
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

    .line 180
    .local v3, where:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 181
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 182
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 185
    if-eqz v12, :cond_2

    .line 187
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

    .line 190
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_3
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .local v9, cv:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v9, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "_uri"

    invoke-virtual {v9, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v2, "date_modified"

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 198
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 200
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v12           #recordCount:I
    :catch_0
    move-exception v11

    .line 202
    .local v11, e:Ljava/lang/Exception;
    const-string v2, "FileCacheMgr"

    const-string v4, "update thumbnail fail"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 177
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12       #recordCount:I
    :cond_4
    :try_start_1
    const-string v1, "thumb_content"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public getCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "serverID"
    .parameter "itemID"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/com.htc.dlnamiddlelayer/cache/thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s_%s.jpg"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFileExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "serverID"
    .parameter "itemID"
    .parameter "uri"
    .parameter "isServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->makeCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, cacheName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p3, p4}, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->updateThumbDB(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    const/4 v2, 0x1

    .line 140
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public makeCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "serverID"
    .parameter "itemID"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/com.htc.dlnamiddlelayer/cache/thumbnails/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s_%s.jpg"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/lang/String;
    .locals 19
    .parameter "serverID"
    .parameter "itemID"
    .parameter "uri"
    .parameter "bmp"
    .parameter "isServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual/range {p0 .. p2}, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->makeCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, cacheName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 69
    .local v8, filePath:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 71
    new-instance v7, Ljava/io/File;

    sget-object v15, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-direct {v7, v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    .line 73
    .local v9, folder:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    .line 75
    const-string v15, "DLNAMiddlelayer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Fail to create folder: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v15, 0x0

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    :goto_0
    return-object v15

    .line 78
    :cond_0
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v10, fs:Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 81
    .local v12, in:Ljava/io/InputStream;
    const/16 v15, 0x400

    new-array v3, v15, [B

    .line 84
    .local v3, buffer:[B
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 85
    .local v11, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .local v13, request:Lorg/apache/http/client/methods/HttpGet;
    :try_start_2
    invoke-virtual {v11, v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    .line 88
    .local v14, theEntity:Lorg/apache/http/HttpEntity;
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v12

    .line 93
    .end local v14           #theEntity:Lorg/apache/http/HttpEntity;
    :goto_1
    if-nez v12, :cond_1

    .line 95
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    const/4 v15, 0x0

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 89
    :catch_0
    move-exception v6

    .line 90
    .local v6, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 122
    .end local v3           #buffer:[B
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #file:Ljava/io/File;
    .end local v9           #folder:Ljava/io/File;
    .end local v10           #fs:Ljava/io/FileOutputStream;
    .end local v11           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12           #in:Ljava/io/InputStream;
    .end local v13           #request:Lorg/apache/http/client/methods/HttpGet;
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v15

    .line 99
    .restart local v3       #buffer:[B
    .restart local v7       #file:Ljava/io/File;
    .restart local v9       #folder:Ljava/io/File;
    .restart local v10       #fs:Ljava/io/FileOutputStream;
    .restart local v11       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #in:Ljava/io/InputStream;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpGet;
    :cond_1
    const/4 v4, 0x0

    .line 101
    .local v4, bytesRead:I
    :cond_2
    const/4 v15, 0x0

    :try_start_5
    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v12, v3, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 102
    const/4 v15, -0x1

    if-ne v4, v15, :cond_3

    .line 110
    :goto_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 112
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_5

    .line 114
    const-string v15, "DLNAMiddlelayer"

    const-string v16, "thumbnail length = 0"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    const/4 v15, 0x0

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 105
    :cond_3
    if-lez v4, :cond_4

    .line 106
    const/4 v15, 0x0

    :try_start_6
    invoke-virtual {v10, v3, v15, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 108
    :cond_4
    if-gez v4, :cond_2

    goto :goto_2

    .line 119
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-direct {v0, v15, v1, v2}, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->insertThumbDB(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v8

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v15, v8

    .line 125
    goto/16 :goto_0
.end method
