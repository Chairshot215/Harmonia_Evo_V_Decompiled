.class public Lcom/htc/album/AlbumUtility/PhotoParallaxManager;
.super Ljava/lang/Object;
.source "PhotoParallaxManager.java"


# instance fields
.field public final DB_FAIL:F

.field private final DEBUG:Ljava/lang/String;

.field public final DEFAULT_VALUE:F

.field private final LOG_TAG:Ljava/lang/String;

.field public final MAX_PARALLAX:F

.field public final MIN_PARALLAX:F

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    .line 19
    const-string v0, "KA>>> [PhotoParallaxManager]"

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->DEBUG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->DEFAULT_VALUE:F

    .line 22
    const v0, -0x3b864000

    iput v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->DB_FAIL:F

    .line 23
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->MAX_PARALLAX:F

    .line 24
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->MIN_PARALLAX:F

    .line 26
    iput-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    .line 27
    iput-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    iput-object p1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->initializeThumbDB()V

    .line 40
    return-void
.end method

.method private DelDBAlignment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "strFilePath"
    .parameter "strCreateTime"

    .prologue
    .line 275
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-nez v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> [PhotoParallaxManager][insertDBAlignment]: mDBHelper not rdy !"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v2}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 283
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insertThumbDB] database closed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM parallax WHERE datapath=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND createtime=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [PhotoParallaxManager][DelDBAlignment]: delete record from DB NG ! strFilePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
.end method

.method private initializeThumbDB()V
    .locals 5

    .prologue
    .line 43
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, vid:I
    new-instance v1, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBPhotoParallax-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    .line 45
    return-void
.end method

.method private insertDBAlignment(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 7
    .parameter "strFilePath"
    .parameter "strCreateTime"
    .parameter "fAlignmentValue"

    .prologue
    .line 160
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-nez v4, :cond_0

    .line 162
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "KA>>> [PhotoParallaxManager][insertDBAlignment]: mDBHelper not rdy !"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v4}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 168
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[insertThumbDB] database closed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, strValue:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM parallax WHERE datapath=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND createtime=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-nez v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "KA>>> [PhotoParallaxManager][insertThumbDB]: Push value is Default. skip insert record."

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, ex:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[insertThumbDB] Delete record before insert, cachePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 193
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "datapath"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "createtime"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v4, "alignment"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v4, "parallax"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 198
    .end local v0           #cv:Landroid/content/ContentValues;
    :catch_1
    move-exception v2

    .line 199
    .restart local v2       #ex:Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[insertThumbDB] Exception during updating new record, Ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method

.method private queryDBAlignment(Ljava/lang/String;Ljava/lang/String;)F
    .locals 7
    .parameter "strFilePath"
    .parameter "strCreateTime"

    .prologue
    const v3, -0x3b864000

    .line 235
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-nez v4, :cond_0

    .line 237
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[queryDBAlignment] Not support path. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return v3

    .line 241
    :cond_0
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v4}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 243
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 245
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "database closed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_1
    const v3, -0x3b864000

    .line 251
    .local v3, fAligementValur:F
    const/4 v0, 0x0

    .line 254
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT alignment FROM parallax WHERE datapath=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND createtime=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_2

    .line 257
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 260
    new-instance v4, Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 266
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    .line 264
    .local v2, ex:Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA>>> [PhotoParallaxManager][queryDBAlignment]: rawQuery DB NG ! strFilePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 266
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method

.method private updateDBAlignment(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 8
    .parameter "strFilePath"
    .parameter "strModifyTime"
    .parameter "fAlignmentValue"

    .prologue
    .line 207
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-nez v4, :cond_0

    .line 209
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateDBAlignment] Not support path. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v4}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->getDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 215
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "database closed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v3, values:Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, strValue:Ljava/lang/String;
    const-string v4, "alignment"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v4, "parallax"

    const-string v5, "datapath=? and createtime=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 226
    .end local v2           #strValue:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 227
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v5, "update access time fail"

    invoke-static {v4, v5, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "strFilePath"
    .parameter "strCreateTime"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v3, "KA>>> [PhotoParallaxManager][delete]: strFilePath == null || strCreateTime == null !"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x0

    .line 155
    :goto_0
    return v2

    .line 145
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 148
    .local v0, lTimeStart:J
    invoke-direct {p0, p1, p2}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->DelDBAlignment(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [PhotoParallaxManager][delete]: delete record - File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 155
    const/4 v2, 0x1

    goto :goto_0

    .line 152
    .end local v0           #lTimeStart:J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method protected onMediaMounted()V
    .locals 5

    .prologue
    .line 70
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 73
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v1}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->close()V

    .line 74
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, vid:I
    new-instance v1, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBPhotoParallax-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v1, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 80
    .end local v0           #vid:I
    :cond_0
    return-void

    .line 77
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pull(Ljava/lang/String;Ljava/lang/String;)F
    .locals 7
    .parameter "strFilePath"
    .parameter "strCreateTime"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "KA>>> [PhotoParallaxManager][pull]: strFilePath == null || strCreateTime == null !"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const v2, -0x3b864000

    .line 104
    :goto_0
    return v2

    .line 90
    :cond_1
    const v2, -0x3b864000

    .line 93
    .local v2, value:F
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    .local v0, lTimeStart:J
    invoke-direct {p0, p1, p2}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->queryDBAlignment(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    .line 97
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoParallaxManager][pull]: query File = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), use: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #lTimeStart:J
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public push(Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 6
    .parameter "strFilePath"
    .parameter "strCreateTime"
    .parameter "fAlignmentValue"

    .prologue
    const/4 v2, 0x0

    .line 109
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v4, "KA>>> [PhotoParallaxManager][push]: strFilePath==null || strCreateTime==null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return v2

    .line 115
    :cond_1
    const/high16 v3, 0x3f80

    cmpl-float v3, p3, v3

    if-gtz v3, :cond_2

    const/high16 v3, -0x4080

    cmpg-float v3, p3, v3

    if-gez v3, :cond_3

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [PhotoParallaxManager][push]: fAlignmentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NG!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    .local v0, lTimeStart:J
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->insertDBAlignment(Ljava/lang/String;Ljava/lang/String;F)V

    .line 126
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [PhotoParallaxManager][push]: insert File = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 133
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 130
    .end local v0           #lTimeStart:J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> [PhotoParallaxManager][release]: +"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    invoke-virtual {v0}, Lcom/htc/album/AlbumUtility/ParallaxDBHelper;->close()V

    .line 61
    iput-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mDBHelper:Lcom/htc/album/AlbumUtility/ParallaxDBHelper;

    .line 64
    :cond_0
    iput-object v2, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/PhotoParallaxManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KA>>> [PhotoParallaxManager][release]: -"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
