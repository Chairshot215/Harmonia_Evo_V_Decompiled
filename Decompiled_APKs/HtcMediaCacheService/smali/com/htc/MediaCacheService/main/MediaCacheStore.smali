.class public Lcom/htc/MediaCacheService/main/MediaCacheStore;
.super Ljava/lang/Object;
.source "MediaCacheStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MediaCacheService/main/MediaCacheStore$Images;,
        Lcom/htc/MediaCacheService/main/MediaCacheStore$Video;,
        Lcom/htc/MediaCacheService/main/MediaCacheStore$MediaColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "htcmediacache"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://htcmediacache/"

.field public static final IMAGE_CACHE_PROJECTION:[Ljava/lang/String; = null

.field public static final IMAGE_DATE_MODIFIED_CACHE_COLUMN_INDEX:I = 0x2

.field public static final IMAGE_ID_CACHE_COLUMN_INDEX:I = 0x0

.field public static final IMAGE_MIME_TYPE_CACHE_COLUMN_INDEX:I = 0x3

.field public static final IMAGE_PATH_CACHE_COLUMN_INDEX:I = 0x1

.field public static final IMAGE_SIZE_CACHE_COLUMN_INDEX:I = 0x4

.field public static final IMAGE_THUMBNAIL_CACHE_COLUMN_INDEX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaCacheStore"

.field public static final VIDEO_CACHE_PROJECTION:[Ljava/lang/String; = null

.field public static final VIDEO_DATE_MODIFIED_CACHE_COLUMN_INDEX:I = 0x2

.field public static final VIDEO_ID_CACHE_COLUMN_INDEX:I = 0x0

.field public static final VIDEO_MIME_TYPE_CACHE_COLUMN_INDEX:I = 0x3

.field public static final VIDEO_PATH_CACHE_COLUMN_INDEX:I = 0x1

.field public static final VIDEO_SIZE_CACHE_COLUMN_INDEX:I = 0x4

.field public static final VIDEO_SIZE_CACHE_COLUMN_THUMBNAIL:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "date_modified"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_thumbnail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/MediaCacheService/main/MediaCacheStore;->IMAGE_CACHE_PROJECTION:[Ljava/lang/String;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "date_modified"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_thumbnail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/MediaCacheService/main/MediaCacheStore;->VIDEO_CACHE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 264
    return-void
.end method

.method public static isContinueSyncMediaProvider(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 60
    invoke-static {}, Lcom/htc/MediaCacheService/main/MediaCacheStore;->isExternalMounted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    invoke-static {p0}, Lcom/htc/MediaCacheService/main/MediaCacheStore;->isMediaProviderScanning(Landroid/content/Context;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public static isExternalMounted()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, state:Ljava/lang/String;
    const-string v2, "MediaCacheStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MediaCacheStore][isExternalMounted]+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMediaProviderScanning(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 105
    if-nez p0, :cond_1

    move v8, v10

    .line 134
    :cond_0
    :goto_0
    return v8

    .line 109
    :cond_1
    const/4 v8, 0x0

    .line 110
    .local v8, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v9

    .line 111
    .local v9, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 115
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 124
    if-eqz v6, :cond_0

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 127
    const-string v0, "external"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 129
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 130
    const/4 v6, 0x0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v7

    .line 120
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MediaCacheStore"

    const-string v1, "[MediaCacheStore][isMediaScannerScanning]"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    if-eqz v6, :cond_0

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 127
    const-string v0, "external"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 129
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 130
    const/4 v6, 0x0

    goto :goto_0

    .line 124
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_4

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 127
    const-string v1, "external"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 129
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 130
    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method public static isSdcardMounted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 98
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
