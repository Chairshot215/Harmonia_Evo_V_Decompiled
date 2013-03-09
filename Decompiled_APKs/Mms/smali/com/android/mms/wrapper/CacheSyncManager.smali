.class public final Lcom/android/mms/wrapper/CacheSyncManager;
.super Lcom/android/mms/wrapper/WebSyncManager;
.source "CacheSyncManager.java"


# static fields
.field private static final BROWSER_CACHE_DIR:Ljava/lang/String; = "browserCache"

.field private static final COLUMN_CHARSET:I = 0x7

.field private static final COLUMN_ENCODING:I = 0x8

.field private static final COLUMN_ETAG:I = 0x4

.field private static final COLUMN_EXPIRES:I = 0x5

.field private static final COLUMN_FILE_PATH:I = 0x2

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_LAST_MODIFY:I = 0x3

.field private static final COLUMN_MIMETYPE:I = 0x6

.field private static final COLUMN_URL:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "expires DESC"

.field public static final FIELD_CHARSET:Ljava/lang/String; = "charset"

.field public static final FIELD_ENCODING:Ljava/lang/String; = "encoding"

.field public static final FIELD_ETAG:Ljava/lang/String; = "etag"

.field public static final FIELD_EXPIRES:Ljava/lang/String; = "expires"

.field public static final FIELD_FILE_PATH:Ljava/lang/String; = "filepath"

.field public static final FIELD_ID:Ljava/lang/String; = "_id"

.field public static final FIELD_LAST_MODIFY:Ljava/lang/String; = "lastmodify"

.field public static final FIELD_MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final FIELD_URL:Ljava/lang/String; = "url"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sRef:Lcom/android/mms/wrapper/CacheSyncManager;


# instance fields
.field private mFlashBaseDir:Ljava/lang/String;

.field private mLastUpdate:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const-string v0, "content://wapbrowser/cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/wrapper/CacheSyncManager;->CONTENT_URI:Landroid/net/Uri;

    .line 113
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "filepath"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lastmodify"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "etag"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "charset"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "encoding"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/wrapper/CacheSyncManager;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 144
    const-string v1, "CacheSyncManager"

    invoke-direct {p0, p1, v1}, Lcom/android/mms/wrapper/WebSyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mLastUpdate:J

    .line 145
    const-string v1, "browserCache"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, baseDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mFlashBaseDir:Ljava/lang/String;

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/wrapper/CacheSyncManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mFlashBaseDir:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/android/mms/wrapper/CacheSyncManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 167
    const-class v1, Lcom/android/mms/wrapper/CacheSyncManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/wrapper/CacheSyncManager;->sRef:Lcom/android/mms/wrapper/CacheSyncManager;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/android/mms/wrapper/CacheManager;->prepare()V

    .line 171
    new-instance v0, Lcom/android/mms/wrapper/CacheSyncManager;

    invoke-direct {v0, p0}, Lcom/android/mms/wrapper/CacheSyncManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/wrapper/CacheSyncManager;->sRef:Lcom/android/mms/wrapper/CacheSyncManager;

    .line 174
    :cond_0
    sget-object v0, Lcom/android/mms/wrapper/CacheSyncManager;->sRef:Lcom/android/mms/wrapper/CacheSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/mms/wrapper/CacheSyncManager;
    .locals 2

    .prologue
    .line 156
    const-class v0, Lcom/android/mms/wrapper/CacheSyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/wrapper/CacheSyncManager;->sRef:Lcom/android/mms/wrapper/CacheSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private readFromFile(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z
    .locals 6
    .parameter "stream"
    .parameter "file"

    .prologue
    const/4 v4, 0x0

    .line 479
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 480
    .local v3, fileStream:Ljava/io/FileInputStream;
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 482
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    if-ltz v1, :cond_0

    .line 483
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 487
    .end local v0           #buffer:[B
    .end local v1           #bytesRead:I
    .end local v3           #fileStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 488
    :goto_1
    return v4

    .line 485
    .restart local v0       #buffer:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #fileStream:Ljava/io/FileInputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private removeFilesFromFlash(Ljava/lang/String;I)V
    .locals 12
    .parameter "coUrl"
    .parameter "flag"

    .prologue
    .line 381
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "url"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "filepath"

    aput-object v1, v2, v0

    .line 383
    .local v2, PROJECTION:[Ljava/lang/String;
    const/4 v7, 0x1

    .line 384
    .local v7, COLUMN_URL:I
    const/4 v6, 0x2

    .line 385
    .local v6, COLUMN_FILE_PATH:I
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/mms/wrapper/CacheSyncManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 387
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 388
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 391
    .local v11, url:Ljava/lang/String;
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 392
    invoke-virtual {v11, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 393
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 395
    .local v9, pathStr:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mFlashBaseDir:Ljava/lang/String;

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/mms/wrapper/CacheSyncManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 421
    .end local v9           #pathStr:Ljava/lang/String;
    .end local v11           #url:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 423
    :cond_1
    return-void

    .line 398
    .restart local v9       #pathStr:Ljava/lang/String;
    .restart local v11       #url:Ljava/lang/String;
    :cond_2
    const-string v0, "websync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete failed, file name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 402
    .end local v9           #pathStr:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 404
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 405
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 408
    .local v10, serUrl:Ljava/lang/String;
    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {v11, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 410
    :cond_4
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 412
    .restart local v9       #pathStr:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mFlashBaseDir:Ljava/lang/String;

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 413
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/mms/wrapper/CacheSyncManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 389
    .end local v9           #pathStr:Ljava/lang/String;
    .end local v10           #serUrl:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 407
    :cond_6
    move-object v10, p1

    .restart local v10       #serUrl:Ljava/lang/String;
    goto :goto_2

    .line 415
    .restart local v9       #pathStr:Ljava/lang/String;
    :cond_7
    const-string v0, "websync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete failed, file name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private removeFilesFromFlash(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 282
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "url"

    aput-object v0, v2, v11

    const-string v0, "filepath"

    aput-object v0, v2, v12

    .line 284
    .local v2, PROJECTION:[Ljava/lang/String;
    const/4 v7, 0x1

    .line 285
    .local v7, COLUMN_URL:I
    const/4 v6, 0x2

    .line 286
    .local v6, COLUMN_FILE_PATH:I
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/mms/wrapper/CacheSyncManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 288
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 289
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, pathStr:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mFlashBaseDir:Ljava/lang/String;

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/mms/wrapper/CacheSyncManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    .end local v9           #pathStr:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 297
    .restart local v9       #pathStr:Ljava/lang/String;
    :cond_1
    const-string v0, "websync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete failed, file name : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 302
    .end local v9           #pathStr:Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_3
    return-void
.end method

.method private syncFilesToFlash(Ljava/util/ArrayList;J)V
    .locals 11
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/mms/wrapper/CacheManager;->getCacheMap()Ljava/util/Map;

    move-result-object v5

    .line 428
    .local v5, urls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 429
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 430
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 434
    .local v4, url:Ljava/lang/String;
    monitor-enter v5

    .line 435
    :try_start_0
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;

    .line 436
    .local v3, ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    if-eqz v3, :cond_0

    .line 440
    iget-object v6, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-nez v6, :cond_1

    iget-object v6, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez v6, :cond_1

    iget-wide v6, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    cmp-long v6, v6, p2

    if-ltz v6, :cond_0

    .line 444
    :cond_1
    iget-wide v6, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->updateTime:J

    iget-wide v8, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mLastUpdate:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 446
    iget-object v6, p0, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/mms/wrapper/CacheSyncManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "url = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 448
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mFlashBaseDir:Ljava/lang/String;

    iget-wide v7, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->localPath:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .local v1, dest:Ljava/io/File;
    iget-object v6, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v6, v1}, Lcom/android/mms/wrapper/CacheSyncManager;->writeToFile(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 451
    new-instance v0, Landroid/content/ContentValues;

    const/16 v6, 0x8

    invoke-direct {v0, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 452
    .local v0, cache:Landroid/content/ContentValues;
    const-string v6, "url"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v6, "filepath"

    iget-wide v7, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->localPath:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 454
    const-string v6, "lastmodify"

    iget-object v7, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v6, "etag"

    iget-object v7, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v6, "expires"

    iget-wide v7, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 457
    const-string v6, "mimetype"

    iget-object v7, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v6, "charset"

    iget-object v7, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->charSet:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v6, "encoding"

    iget-object v7, v3, Lcom/android/mms/wrapper/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v6, p0, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/mms/wrapper/CacheSyncManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 436
    .end local v0           #cache:Landroid/content/ContentValues;
    .end local v1           #dest:Ljava/io/File;
    .end local v3           #ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 464
    .end local v4           #url:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private writeToFile(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z
    .locals 3
    .parameter "stream"
    .parameter "file"

    .prologue
    .line 468
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 469
    .local v1, fileStream:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 470
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    const/4 v2, 0x1

    .line 473
    .end local v1           #fileStream:Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onSyncInit()V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    .line 208
    invoke-static {v13}, Lcom/android/mms/wrapper/CacheManager;->setCacheDisabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/mms/wrapper/CacheSyncManager;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/wrapper/CacheSyncManager;->PROJECTION:[Ljava/lang/String;

    const-string v5, "expires DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 211
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mLastUpdate:J

    .line 212
    if-eqz v6, :cond_3

    .line 213
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    :cond_0
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 216
    .local v7, path:J
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, pathStr:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    iget-object v0, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mFlashBaseDir:Ljava/lang/String;

    invoke-direct {v11, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v11, src:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 220
    .local v12, stream:Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v12, v11}, Lcom/android/mms/wrapper/CacheSyncManager;->readFromFile(Ljava/io/ByteArrayOutputStream;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    new-instance v10, Lcom/android/mms/wrapper/CacheManager$CacheResult;

    invoke-direct {v10}, Lcom/android/mms/wrapper/CacheManager$CacheResult;-><init>()V

    .line 222
    .local v10, ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    iput-object v12, v10, Lcom/android/mms/wrapper/CacheManager$CacheResult;->stream:Ljava/io/ByteArrayOutputStream;

    .line 223
    iput-wide v7, v10, Lcom/android/mms/wrapper/CacheManager$CacheResult;->localPath:J

    .line 224
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/mms/wrapper/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 226
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/mms/wrapper/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 227
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/mms/wrapper/CacheManager$CacheResult;->expires:J

    .line 228
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/mms/wrapper/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    .line 229
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/mms/wrapper/CacheManager$CacheResult;->charSet:Ljava/lang/String;

    .line 230
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/mms/wrapper/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    .line 231
    iget-wide v0, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mLastUpdate:J

    iput-wide v0, v10, Lcom/android/mms/wrapper/CacheManager$CacheResult;->updateTime:J

    .line 232
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v13}, Lcom/android/mms/wrapper/CacheManager;->saveCacheFile(Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;Z)V

    .line 236
    .end local v10           #ret:Lcom/android/mms/wrapper/CacheManager$CacheResult;
    .end local v12           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    .end local v7           #path:J
    .end local v9           #pathStr:Ljava/lang/String;
    .end local v11           #src:Ljava/io/File;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_3
    invoke-static {}, Lcom/android/mms/wrapper/CacheManager;->onDoneSync()V

    .line 241
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/wrapper/CacheManager;->setCacheDisabled(Z)V

    .line 244
    invoke-static {}, Lcom/android/mms/wrapper/CacheManager;->wakeUp()V

    .line 245
    return-void
.end method

.method removeAll()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/mms/wrapper/WebSyncManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/wrapper/CacheSyncManager$1;

    invoke-direct {v1, p0}, Lcom/android/mms/wrapper/CacheSyncManager$1;-><init>(Lcom/android/mms/wrapper/CacheSyncManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic resetSync()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/mms/wrapper/WebSyncManager;->resetSync()V

    return-void
.end method

.method public bridge synthetic run()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/mms/wrapper/WebSyncManager;->run()V

    return-void
.end method

.method public bridge synthetic startSync()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/mms/wrapper/WebSyncManager;->startSync()V

    return-void
.end method

.method public bridge synthetic stopSync()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/mms/wrapper/WebSyncManager;->stopSync()V

    return-void
.end method

.method public bridge synthetic sync()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/mms/wrapper/WebSyncManager;->sync()V

    return-void
.end method

.method protected syncFromRamToFlash()V
    .locals 5

    .prologue
    .line 253
    invoke-static {}, Lcom/android/mms/wrapper/CacheManager;->needsSync()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-static {}, Lcom/android/mms/wrapper/CacheManager;->getCacheMap()Ljava/util/Map;

    move-result-object v3

    .line 262
    .local v3, urls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    monitor-enter v3

    .line 263
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 265
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-static {}, Lcom/android/mms/wrapper/CacheManager;->onDoneSync()V

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 272
    .local v1, now:J
    invoke-direct {p0, v0}, Lcom/android/mms/wrapper/CacheSyncManager;->removeFilesFromFlash(Ljava/util/ArrayList;)V

    .line 274
    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/wrapper/CacheSyncManager;->syncFilesToFlash(Ljava/util/ArrayList;J)V

    .line 276
    iput-wide v1, p0, Lcom/android/mms/wrapper/CacheSyncManager;->mLastUpdate:J

    .line 278
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #now:J
    .end local v3           #urls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    :cond_0
    return-void

    .line 265
    .restart local v3       #urls:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/wrapper/CacheManager$CacheResult;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public syncPushCo(Landroid/content/ContentValues;)V
    .locals 8
    .parameter "values"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, objectURI:Ljava/lang/String;
    const/4 v2, 0x0

    .line 321
    .local v2, serviceURI:Ljava/lang/String;
    const-string v4, "Trusted"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 322
    const-string v4, "InvalidateObjectUri"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    const-string v4, "InvalidateServiceUri"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 360
    invoke-static {v1, v6}, Lcom/android/mms/wrapper/CacheManager;->removeFilesFromRam(Ljava/lang/String;I)Z

    .line 362
    invoke-direct {p0, v1, v6}, Lcom/android/mms/wrapper/CacheSyncManager;->removeFilesFromFlash(Ljava/lang/String;I)V

    .line 365
    :cond_1
    if-eqz v2, :cond_2

    .line 366
    invoke-static {v2, v7}, Lcom/android/mms/wrapper/CacheManager;->removeFilesFromRam(Ljava/lang/String;I)Z

    .line 368
    invoke-direct {p0, v2, v7}, Lcom/android/mms/wrapper/CacheSyncManager;->removeFilesFromFlash(Ljava/lang/String;I)V

    .line 371
    :cond_2
    return-void

    .line 324
    :cond_3
    const-string v4, "Authenticated"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    const-string v4, "InitiatorUri"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, xWapInitiatorURI:Ljava/lang/String;
    const-string v4, "InvalidateObjectUri"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_4

    .line 332
    const/4 v1, 0x0

    .line 339
    :cond_4
    :goto_1
    const-string v4, "InvalidateServiceUri"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 343
    const/4 v2, 0x0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/net/URISyntaxException;
    const/4 v1, 0x0

    .line 336
    const-string v4, "websync"

    const-string v5, "Resolve invalidate object URI"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 345
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v0

    .line 346
    .restart local v0       #e:Ljava/net/URISyntaxException;
    const/4 v2, 0x0

    .line 347
    const-string v4, "websync"

    const-string v5, "Resolve invalidate service URI"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
