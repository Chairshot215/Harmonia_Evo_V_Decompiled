.class public abstract Lcom/htc/album/processor/FlattenBaseProcessor;
.super Lcom/htc/album/processor/BaseProcessor;
.source "FlattenBaseProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/processor/BaseProcessor",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLEAR_CACHE_BESIDES_IN_ONE_DAY:J = 0x15180L

.field public static final FOLDER_PATH:Ljava/lang/String; = "/mnt/sdcard/.3DFlatten"

.field private static final KILL_CACHE_BESIDES_ONE_DAY:J = 0x0L

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MIN_STORAGE_LIMITE:I = 0x500000

.field static final MIN_STORAGE_SPACE:J = 0x500000L

.field public static final ROOT_FOLDERS:[Ljava/lang/String; = null

.field private static final TAG_FIND_CACHE:Ljava/lang/String; = null

.field private static final TAG_PROCESS_FILE:Ljava/lang/String; = null

.field static final TIME_CACHE_LIFE:J = 0x15180L

.field static final TIME_CLEAN_CACHE:J = 0x5dcL

.field static final TIME_CLEAN_CACHE_ALL:J = -0x1L

.field private static final TIME_OUT_IN_1_5_SEC:J = 0x5dcL


# instance fields
.field protected mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/processor/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mSourceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcom/htc/album/processor/FlattenBaseProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[processSingleFile]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/FlattenBaseProcessor;->TAG_PROCESS_FILE:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[findFileFromCache]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/processor/FlattenBaseProcessor;->TAG_FIND_CACHE:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/mnt/sdcard/.3DFlatten"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/processor/FlattenBaseProcessor;->ROOT_FOLDERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/Intent;)V
    .locals 1
    .parameter "activity"
    .parameter "handler"
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/htc/album/processor/BaseProcessor;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 55
    iput-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    .line 56
    iput-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    .line 65
    iput-object p3, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    .line 66
    return-void
.end method


# virtual methods
.method protected clearCacheFiles()V
    .locals 19

    .prologue
    .line 232
    sget-object v3, Lcom/htc/album/processor/FlattenBaseProcessor;->ROOT_FOLDERS:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/album/processor/FlattenBaseProcessor;->scanDirectories([Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mStop:Z

    if-eqz v3, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v2

    .line 237
    .local v2, baseUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 238
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/32 v5, 0x15180

    sub-long v11, v3, v5

    .line 239
    .local v11, invaildDate:J
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "_data like ? AND date_modified < ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v18, "/mnt/sdcard/.3DFlatten%"

    aput-object v18, v5, v6

    const/4 v6, 0x1

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v6

    const-string v6, "date_modified ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 247
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 249
    const-wide/16 v13, 0x5dc

    .line 250
    .local v13, limit:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 251
    .local v16, start:J
    move-wide/from16 v7, v16

    .line 252
    .local v7, current:J
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mStop:Z

    if-nez v3, :cond_3

    .line 254
    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-lez v3, :cond_2

    sub-long v3, v7, v16

    cmp-long v3, v3, v13

    if-lez v3, :cond_2

    .line 257
    const-wide/32 v3, 0x500000

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    const-wide/16 v13, -0x1

    .line 266
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 267
    .local v10, id:I
    int-to-long v3, v10

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 268
    .local v15, row:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v15, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 270
    goto :goto_1

    .line 271
    .end local v10           #id:I
    .end local v15           #row:Landroid/net/Uri;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected findFileFromCache(Landroid/app/Activity;Lcom/htc/album/processor/FileInfo;)Z
    .locals 13
    .parameter "activity"
    .parameter "fileInfo"

    .prologue
    .line 292
    const/4 v6, 0x0

    .line 294
    .local v6, bResult:Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 295
    :cond_0
    const/4 v2, 0x0

    .line 328
    :goto_0
    return v2

    .line 297
    :cond_1
    iget-object v11, p2, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    .line 298
    .local v11, path:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v9, file:Ljava/io/File;
    sget-object v2, Lcom/htc/album/processor/FlattenBaseProcessor;->TAG_FIND_CACHE:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    const/4 v2, 0x0

    goto :goto_0

    .line 302
    :cond_2
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v1

    .line 303
    .local v1, baseUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 304
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 309
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 311
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 313
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 314
    .local v10, id:I
    int-to-long v2, v10

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p2, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    .line 316
    .end local v10           #id:I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_4
    iget-object v7, p2, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    .line 320
    .local v7, cacheUri:Landroid/net/Uri;
    if-eqz v7, :cond_5

    .line 322
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v7, v12, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    const/4 v6, 0x1

    .end local v12           #values:Landroid/content/ContentValues;
    :cond_5
    move v2, v6

    .line 328
    goto :goto_0
.end method

.method protected generateFilePath(Lcom/htc/album/processor/FileInfo;)Ljava/lang/String;
    .locals 8
    .parameter "fileInfo"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    iget-boolean v3, p1, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    if-eqz v3, :cond_1

    .line 213
    :cond_0
    const/4 v3, 0x0

    .line 227
    :goto_0
    return-object v3

    .line 215
    :cond_1
    const-string v2, ""

    .line 218
    .local v2, key:Ljava/lang/String;
    :try_start_0
    iget-object v3, p1, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v2, p1, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/htc/album/processor/FileInfo;->mSourceDateModified:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, hash:Ljava/lang/String;
    const-string v3, "%s/%08X-%d.jpg"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "/mnt/sdcard/.3DFlatten"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p1, Lcom/htc/album/processor/FileInfo;->mSourceSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    .line 227
    iget-object v3, p1, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    goto :goto_0

    .line 218
    .end local v1           #hash:Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v3, p1, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_1
.end method

.method protected getFileInfo(Landroid/net/Uri;)Lcom/htc/album/processor/FileInfo;
    .locals 1
    .parameter "sourceUri"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/album/processor/FlattenBaseProcessor;->getFileInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/album/processor/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getFileInfo(Landroid/net/Uri;Ljava/lang/String;)Lcom/htc/album/processor/FileInfo;
    .locals 20
    .parameter "sourceUri"
    .parameter "mimeType"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    const/16 v17, 0x0

    .line 190
    :goto_0
    return-object v17

    .line 127
    :cond_0
    const/4 v14, 0x0

    .line 128
    .local v14, imagePath:Ljava/lang/String;
    const/4 v13, 0x0

    .line 129
    .local v13, imageMime:Ljava/lang/String;
    const/4 v12, 0x0

    .line 130
    .local v12, fileDescriptor:Landroid/os/ParcelFileDescriptor;
    const-wide/16 v10, -0x1

    .line 131
    .local v10, dateModified:J
    const-wide/16 v15, -0x1

    .line 133
    .local v15, imageSize:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, authority:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 135
    .local v18, scheme:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v19

    .line 136
    .local v19, table:Ljava/lang/String;
    const-string v2, "media"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_5

    const/4 v9, 0x0

    .line 145
    .local v9, cursor:Landroid/database/Cursor;
    :goto_1
    if-eqz v9, :cond_2

    .line 147
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 150
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 151
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 152
    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 154
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 177
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_2
    if-nez v14, :cond_3

    if-eqz v12, :cond_4

    :cond_3
    if-nez v13, :cond_a

    .line 178
    :cond_4
    const/16 v17, 0x0

    goto :goto_0

    .line 138
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/processor/FlattenBaseProcessor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "mime_type"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "date_modified"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "_size"

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_1

    .line 157
    :cond_6
    const-string v2, "file"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 160
    if-eqz v14, :cond_2

    .line 162
    const-string v2, ".mpo"

    invoke-virtual {v14, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 163
    const-string v13, "image/mpo"

    goto :goto_2

    .line 164
    :cond_7
    const-string v2, ".jps"

    invoke-virtual {v14, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 165
    const-string v13, "image/jps"

    goto :goto_2

    .line 167
    :cond_8
    const/4 v13, 0x0

    goto :goto_2

    .line 172
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/htc/album/processor/FlattenBaseProcessor;->getParcelFileDescriptor(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 173
    move-object/from16 v13, p2

    goto :goto_2

    .line 180
    :cond_a
    new-instance v17, Lcom/htc/album/processor/FileInfo;

    invoke-direct/range {v17 .. v17}, Lcom/htc/album/processor/FileInfo;-><init>()V

    .line 181
    .local v17, info:Lcom/htc/album/processor/FileInfo;
    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    .line 182
    move-object/from16 v0, v17

    iput-object v13, v0, Lcom/htc/album/processor/FileInfo;->mSourceType:Ljava/lang/String;

    .line 183
    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/htc/album/processor/FileInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 184
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/album/processor/FileInfo;->mSourceUri:Landroid/net/Uri;

    .line 185
    move-object/from16 v0, v17

    iput-wide v10, v0, Lcom/htc/album/processor/FileInfo;->mSourceDateModified:J

    .line 186
    move-object/from16 v0, v17

    iput-wide v15, v0, Lcom/htc/album/processor/FileInfo;->mSourceSize:J

    .line 187
    if-nez v14, :cond_b

    if-eqz v12, :cond_c

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/album/processor/FlattenBaseProcessor;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->generateFilePath(Lcom/htc/album/processor/FileInfo;)Ljava/lang/String;

    goto/16 :goto_0

    .line 187
    :cond_d
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected getFileInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/processor/FileInfo;
    .locals 13
    .parameter "imagePath"
    .parameter "mimeType"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-object v7

    .line 73
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v3, file:Ljava/io/File;
    move-object v4, p2

    .line 75
    .local v4, imageMime:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 76
    .local v0, dateModified:J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 78
    .local v5, imageSize:J
    if-nez v4, :cond_1

    .line 80
    const-string v11, ".jps"

    invoke-virtual {p1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 81
    const-string v4, "image/jps"

    .line 86
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 90
    :try_start_0
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x1000

    invoke-static {v11, v12}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 92
    .local v9, pfd:Landroid/os/ParcelFileDescriptor;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 93
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    iget-object v4, v8, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v8           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_2
    new-instance v7, Lcom/htc/album/processor/FileInfo;

    invoke-direct {v7}, Lcom/htc/album/processor/FileInfo;-><init>()V

    .line 106
    .local v7, info:Lcom/htc/album/processor/FileInfo;
    iput-object p1, v7, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    .line 107
    iput-object v4, v7, Lcom/htc/album/processor/FileInfo;->mSourceType:Ljava/lang/String;

    .line 108
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    iput-object v11, v7, Lcom/htc/album/processor/FileInfo;->mSourceUri:Landroid/net/Uri;

    .line 109
    iput-wide v0, v7, Lcom/htc/album/processor/FileInfo;->mSourceDateModified:J

    .line 110
    iput-wide v5, v7, Lcom/htc/album/processor/FileInfo;->mSourceSize:J

    .line 111
    invoke-virtual {p0, v4}, Lcom/htc/album/processor/FlattenBaseProcessor;->isSupported(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    :goto_2
    iput-boolean v10, v7, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    .line 112
    invoke-virtual {p0, v7}, Lcom/htc/album/processor/FlattenBaseProcessor;->generateFilePath(Lcom/htc/album/processor/FileInfo;)Ljava/lang/String;

    goto :goto_0

    .line 82
    .end local v7           #info:Lcom/htc/album/processor/FileInfo;
    :cond_3
    const-string v11, ".mpo"

    invoke-virtual {p1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 83
    const-string v4, "image/mpo"

    goto :goto_1

    .line 97
    :catch_0
    move-exception v2

    .line 100
    .local v2, ex:Ljava/lang/Exception;
    sget-object v10, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[getFileInfo] Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v7       #info:Lcom/htc/album/processor/FileInfo;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public getFileList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/processor/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getParcelFileDescriptor(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .parameter "uri"

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getParcelFileDescriptor] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isSupported(Ljava/lang/String;)Z
    .locals 6
    .parameter "imageMime"

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, hit:Z
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->MIME_3D_IMAGE_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 280
    .local v4, mime:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    const/4 v1, 0x1

    .line 287
    .end local v4           #mime:Ljava/lang/String;
    :cond_0
    return v1

    .line 278
    .restart local v4       #mime:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected obtainResult()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic obtainResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/htc/album/processor/FlattenBaseProcessor;->obtainResult()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPreProcess()I
    .locals 2

    .prologue
    .line 434
    invoke-super {p0}, Lcom/htc/album/processor/BaseProcessor;->onPreProcess()I

    .line 435
    invoke-virtual {p0}, Lcom/htc/album/processor/FlattenBaseProcessor;->clearCacheFiles()V

    .line 437
    const-wide/32 v0, 0x500000

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x2

    .line 442
    :goto_0
    return v0

    .line 440
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    .line 442
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onProcessing()I
    .locals 5

    .prologue
    .line 452
    const/4 v3, 0x0

    .line 453
    .local v3, resultCode:I
    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mActivity:Landroid/app/Activity;

    .line 454
    .local v0, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/processor/FileInfo;

    .line 456
    .local v1, file:Lcom/htc/album/processor/FileInfo;
    invoke-virtual {p0, v0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->findFileFromCache(Landroid/app/Activity;Lcom/htc/album/processor/FileInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 457
    invoke-virtual {p0, v1}, Lcom/htc/album/processor/FlattenBaseProcessor;->processSingleFile(Lcom/htc/album/processor/FileInfo;)I

    move-result v3

    .line 459
    :cond_1
    if-eqz v3, :cond_0

    .line 463
    .end local v1           #file:Lcom/htc/album/processor/FileInfo;
    :cond_2
    return v3
.end method

.method protected processSingleFile(Lcom/htc/album/processor/FileInfo;)I
    .locals 14
    .parameter "fileInfo"

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v13, -0x1

    .line 333
    const/4 v7, 0x6

    .line 334
    .local v7, result:I
    if-eqz p1, :cond_0

    iget-boolean v11, p1, Lcom/htc/album/processor/FileInfo;->mNotSupported:Z

    if-eqz v11, :cond_2

    :cond_0
    move v9, v7

    .line 409
    :cond_1
    :goto_0
    return v9

    .line 337
    :cond_2
    iget-object v8, p1, Lcom/htc/album/processor/FileInfo;->mSourceType:Ljava/lang/String;

    .line 338
    .local v8, sourceType:Ljava/lang/String;
    const-string v11, "image/jps"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v1, 0x1

    .line 344
    .local v1, decodeType:I
    :goto_1
    if-nez v1, :cond_5

    move v9, v7

    .line 345
    goto :goto_0

    .line 338
    .end local v1           #decodeType:I
    :cond_3
    const-string v11, "image/mpo"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v1, v9

    goto :goto_1

    :cond_4
    move v1, v10

    goto :goto_1

    .line 347
    .restart local v1       #decodeType:I
    :cond_5
    const-wide/32 v11, 0x500000

    invoke-static {v11, v12}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v11

    if-nez v11, :cond_1

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v9, p1, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 353
    iget-object v9, p1, Lcom/htc/album/processor/FileInfo;->mSourcePath:Ljava/lang/String;

    invoke-static {v9, v13, v13, v10, v1}, Lcom/htc/album/processor/ImageUtils;->decodeByScalado(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 363
    :cond_6
    :goto_2
    if-nez v0, :cond_8

    .line 364
    const/4 v9, 0x6

    goto :goto_0

    .line 358
    :cond_7
    iget-object v9, p1, Lcom/htc/album/processor/FileInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v9, :cond_6

    .line 360
    iget-object v9, p1, Lcom/htc/album/processor/FileInfo;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v9, v1}, Lcom/htc/album/processor/ImageUtils;->decodeFileDescriptor(Landroid/os/ParcelFileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 366
    :cond_8
    iget-boolean v9, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mStop:Z

    if-eqz v9, :cond_9

    .line 367
    const/4 v9, 0x4

    goto :goto_0

    .line 369
    :cond_9
    const/4 v5, 0x0

    .line 372
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v9, "/mnt/sdcard/.3DFlatten"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v4, folder:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 374
    new-instance v3, Ljava/io/File;

    iget-object v9, p1, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v3, file:Ljava/io/File;
    sget-object v9, Lcom/htc/album/processor/FlattenBaseProcessor;->TAG_PROCESS_FILE:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 376
    sget-object v9, Lcom/htc/album/processor/FlattenBaseProcessor;->TAG_PROCESS_FILE:Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 378
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 379
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x55

    invoke-virtual {v0, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 380
    const/4 v7, 0x0

    .line 391
    if-eqz v6, :cond_b

    .line 393
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 394
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    move-object v5, v6

    .line 404
    .end local v3           #file:Ljava/io/File;
    .end local v4           #folder:Ljava/io/File;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_c
    :goto_3
    if-nez v7, :cond_d

    .line 406
    iget-object v9, p1, Lcom/htc/album/processor/FileInfo;->mProcessedPath:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/htc/album/processor/FlattenBaseProcessor;->scanSingleFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p1, Lcom/htc/album/processor/FileInfo;->mProcessedUri:Landroid/net/Uri;

    :cond_d
    move v9, v7

    .line 409
    goto/16 :goto_0

    .line 397
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #folder:Ljava/io/File;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 400
    .local v2, ex:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onProcessing] Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 402
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 382
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #folder:Ljava/io/File;
    :catch_1
    move-exception v2

    .line 385
    .restart local v2       #ex:Ljava/lang/Exception;
    :goto_4
    :try_start_3
    sget-object v9, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onProcessing] Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    if-eqz v5, :cond_c

    .line 393
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 394
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 397
    :catch_2
    move-exception v2

    .line 400
    sget-object v9, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[onProcessing] Exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 389
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 391
    :goto_5
    if-eqz v5, :cond_e

    .line 393
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 394
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 401
    :cond_e
    :goto_6
    throw v9

    .line 397
    :catch_3
    move-exception v2

    .line 400
    .restart local v2       #ex:Ljava/lang/Exception;
    sget-object v10, Lcom/htc/album/processor/FlattenBaseProcessor;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[onProcessing] Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 389
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #folder:Ljava/io/File;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 382
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 475
    :cond_0
    iput-object v1, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mFileList:Ljava/util/ArrayList;

    .line 476
    iput-object v1, p0, Lcom/htc/album/processor/FlattenBaseProcessor;->mSourceIntent:Landroid/content/Intent;

    .line 477
    invoke-super {p0}, Lcom/htc/album/processor/BaseProcessor;->release()V

    .line 478
    return-void
.end method
