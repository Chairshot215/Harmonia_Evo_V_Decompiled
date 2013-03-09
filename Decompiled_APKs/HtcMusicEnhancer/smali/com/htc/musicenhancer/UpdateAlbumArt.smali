.class public Lcom/htc/musicenhancer/UpdateAlbumArt;
.super Ljava/lang/Object;
.source "UpdateAlbumArt.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[UpdateAlbumArt]"


# instance fields
.field private final filePath:Ljava/lang/String;

.field private isFolderExist:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/musicenhancer/UpdateAlbumArt;->mContext:Landroid/content/Context;

    .line 28
    const-string v0, "/.htcmusthumbs/com.htc.music.providers.albumarts/albumarts/"

    iput-object v0, p0, Lcom/htc/musicenhancer/UpdateAlbumArt;->filePath:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/musicenhancer/UpdateAlbumArt;->isFolderExist:Z

    .line 33
    iput-object p1, p0, Lcom/htc/musicenhancer/UpdateAlbumArt;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method insert(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V
    .locals 6
    .parameter "resolver"
    .parameter "values"
    .parameter "albumInfo"
    .parameter "failCount"

    .prologue
    .line 245
    const-string v3, "[UpdateAlbumArt]"

    const-string v4, "UpdateAlbumArt insert"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v3, "dl_is_failed"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v3, "dl_album_key"

    invoke-virtual {p3}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "dl_album_id"

    invoke-virtual {p3}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    :try_start_0
    invoke-virtual {p3}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getTrackCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 251
    .local v2, trackCursor:Landroid/database/Cursor;
    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, albumName:Ljava/lang/String;
    const-string v3, "dl_album"

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v3, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0           #albumName:Ljava/lang/String;
    .end local v2           #trackCursor:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "[UpdateAlbumArt]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught an exception in insert. Ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method queryAlbumCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "resolver"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 227
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "dl_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "dl_is_failed"

    aput-object v1, v2, v0

    .line 232
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public start(Lcom/htc/musicenhancer/DownloadAlbumInfo;)V
    .locals 12
    .parameter "downloadAlbumInfo"

    .prologue
    .line 37
    const-string v9, "[UpdateAlbumArt]"

    const-string v10, "start updateAlbumArt"

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    if-nez p1, :cond_1

    .line 39
    const-string v9, "[UpdateAlbumArt]"

    const-string v10, "downloadAlbumArtInfo == null in updateAlbumArt"

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-boolean v9, p0, Lcom/htc/musicenhancer/UpdateAlbumArt;->isFolderExist:Z

    if-nez v9, :cond_2

    .line 45
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "/.htcmusthumbs/com.htc.music.providers.albumarts/albumarts/"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 47
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 48
    const-string v9, "[UpdateAlbumArt]"

    const-string v10, "Make directory success"

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/musicenhancer/UpdateAlbumArt;->isFolderExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v4           #file:Ljava/io/File;
    :cond_2
    const-string v9, "[UpdateAlbumArt]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update albumart to database albumid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumKey()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, albumKey:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/musicenhancer/UpdateAlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 69
    .local v6, resolver:Landroid/content/ContentResolver;
    if-nez v6, :cond_4

    .line 70
    const-string v9, "[UpdateAlbumArt]"

    const-string v10, "resolver == null in updateAlbumArt"

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0           #albumKey:Ljava/lang/String;
    .end local v6           #resolver:Landroid/content/ContentResolver;
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local v4       #file:Ljava/io/File;
    :cond_3
    :try_start_1
    const-string v9, "[UpdateAlbumArt]"

    const-string v10, "Make directory fail"

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/musicenhancer/UpdateAlbumArt;->isFolderExist:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 58
    .end local v4           #file:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 59
    .local v2, ex:Ljava/lang/Exception;
    const-string v9, "[UpdateAlbumArt]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caught exception in Updatealbumart start. Ex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #albumKey:Ljava/lang/String;
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dl_album_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, where:Ljava/lang/String;
    const/4 v1, 0x0

    .line 76
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->currentStatus()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_9

    .line 77
    invoke-virtual {p1}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->getAlbumArt()[B

    move-result-object v9

    invoke-virtual {p0, v9, v7}, Lcom/htc/musicenhancer/UpdateAlbumArt;->writeFile([BLandroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, fineName:Ljava/lang/String;
    invoke-virtual {p1, v5}, Lcom/htc/musicenhancer/DownloadAlbumInfo;->setAlbumArtPath(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v6, v8}, Lcom/htc/musicenhancer/UpdateAlbumArt;->queryAlbumCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    const-string v9, "dl_is_failed"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 84
    .local v3, fail_count:I
    if-nez v5, :cond_5

    .line 85
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/htc/musicenhancer/UpdateAlbumArt;->update(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    .end local v3           #fail_count:I
    .end local v5           #fineName:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 87
    .restart local v3       #fail_count:I
    .restart local v5       #fineName:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/htc/musicenhancer/UpdateAlbumArt;->update(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 106
    .end local v3           #fail_count:I
    .end local v5           #fineName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 107
    .restart local v2       #ex:Ljava/lang/Exception;
    :try_start_4
    const-string v9, "[UpdateAlbumArt]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caught Exception in UpdateAlbumArt start. Ex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 90
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v5       #fineName:Ljava/lang/String;
    :cond_6
    if-nez v5, :cond_8

    .line 91
    const/4 v9, 0x1

    :try_start_5
    invoke-virtual {p0, v6, v7, p1, v9}, Lcom/htc/musicenhancer/UpdateAlbumArt;->insert(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 110
    .end local v5           #fineName:Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v1, :cond_7

    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    const/4 v1, 0x0

    .line 110
    :cond_7
    throw v9

    .line 93
    .restart local v5       #fineName:Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    :try_start_6
    invoke-virtual {p0, v6, v7, p1, v9}, Lcom/htc/musicenhancer/UpdateAlbumArt;->insert(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V

    goto :goto_1

    .line 96
    .end local v5           #fineName:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, v6, v8}, Lcom/htc/musicenhancer/UpdateAlbumArt;->queryAlbumCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_a

    .line 98
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    const-string v9, "dl_is_failed"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 101
    .restart local v3       #fail_count:I
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/htc/musicenhancer/UpdateAlbumArt;->update(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;I)V

    goto :goto_1

    .line 103
    .end local v3           #fail_count:I
    :cond_a
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v7, p1, v9}, Lcom/htc/musicenhancer/UpdateAlbumArt;->insert(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/htc/musicenhancer/DownloadAlbumInfo;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method

.method update(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;I)V
    .locals 2
    .parameter "resolver"
    .parameter "values"
    .parameter "where"
    .parameter "failCount"

    .prologue
    .line 238
    const-string v0, "[UpdateAlbumArt]"

    const-string v1, "UpdateAlbumArt update"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "dl_is_failed"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    sget-object v0, Lcom/htc/musicenhancer/provider/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method writeFile([BLandroid/content/ContentValues;)Ljava/lang/String;
    .locals 28
    .parameter "albumartData"
    .parameter "values"

    .prologue
    .line 118
    const/4 v4, 0x0

    .line 119
    .local v4, albumArtPath:Ljava/lang/String;
    if-eqz p1, :cond_8

    .line 120
    const-string v25, "[UpdateAlbumArt]"

    const-string v26, "write File"

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 122
    .local v10, currTime:J
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/.htcmusthumbs/com.htc.music.providers.albumarts/albumarts/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 126
    .local v15, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 127
    .local v19, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v25, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 128
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 129
    const/16 v25, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 132
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 133
    const-string v25, "[UpdateAlbumArt]"

    const-string v26, "decodeByteArray error in writeFile"

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v25, 0x0

    .line 223
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #currTime:J
    .end local v15           #fileName:Ljava/lang/String;
    .end local v19           #opts:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v25

    .line 137
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v10       #currTime:J
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v19       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const/high16 v20, 0x3f80

    .line 138
    .local v20, scaleRatio:F
    invoke-static {}, Lcom/htc/musicenhancer/util/EnhancerUtils;->getAlbumMaxSize()I

    move-result v18

    .line 139
    .local v18, maxAlbumSize:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    .line 140
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v20, v25, v26

    .line 145
    :goto_1
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v20

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v23, v0

    .line 146
    .local v23, scaledWidth:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v20

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v22, v0

    .line 149
    .local v22, scaledHeight:I
    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v25

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 151
    .local v21, scaledBitmp:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    move-object/from16 v6, v21

    .line 154
    if-nez v21, :cond_2

    .line 155
    const-string v25, "[UpdateAlbumArt]"

    const-string v26, "create scaledBitmap error in writeFile"

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/16 v25, 0x0

    goto :goto_0

    .line 142
    .end local v21           #scaledBitmp:Landroid/graphics/Bitmap;
    .end local v22           #scaledHeight:I
    .end local v23           #scaledWidth:I
    :cond_1
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v20, v25, v26

    goto :goto_1

    .line 161
    .restart local v21       #scaledBitmp:Landroid/graphics/Bitmap;
    .restart local v22       #scaledHeight:I
    .restart local v23       #scaledWidth:I
    :cond_2
    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 162
    :cond_3
    sget-object v25, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 165
    .local v5, baseBitmap:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 166
    .local v9, canvas:Landroid/graphics/Canvas;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 167
    sub-int v25, v18, v23

    div-int/lit8 v17, v25, 0x2

    .line 168
    .local v17, left:I
    sub-int v25, v18, v22

    div-int/lit8 v24, v25, 0x2

    .line 169
    .local v24, top:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v9, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 170
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 171
    move-object v6, v5

    .line 173
    .end local v5           #baseBitmap:Landroid/graphics/Bitmap;
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v17           #left:I
    .end local v24           #top:I
    :cond_4
    const/4 v7, 0x0

    .line 174
    .local v7, bitmapStream:Ljava/io/BufferedOutputStream;
    const/16 v16, 0x0

    .line 176
    .local v16, isCompressed:Z
    :try_start_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v25, Ljava/io/FileOutputStream;

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v15, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 178
    .end local v7           #bitmapStream:Ljava/io/BufferedOutputStream;
    .local v8, bitmapStream:Ljava/io/BufferedOutputStream;
    :try_start_2
    sget-object v25, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v26, 0x64

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v6, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v16

    .line 180
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 186
    if-eqz v8, :cond_5

    .line 187
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    :cond_5
    move-object v7, v8

    .line 189
    .end local v8           #bitmapStream:Ljava/io/BufferedOutputStream;
    .restart local v7       #bitmapStream:Ljava/io/BufferedOutputStream;
    :cond_6
    :goto_2
    if-eqz v16, :cond_a

    .line 190
    const-string v25, "[UpdateAlbumArt]"

    const-string v26, "compressed success"

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_7
    :goto_3
    move-object v4, v15

    .line 212
    const-string v25, "dl_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v25, "[UpdateAlbumArt]"

    const-string v26, "write File complete"

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #bitmapStream:Ljava/io/BufferedOutputStream;
    .end local v10           #currTime:J
    .end local v15           #fileName:Ljava/lang/String;
    .end local v16           #isCompressed:Z
    .end local v18           #maxAlbumSize:I
    .end local v19           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v20           #scaleRatio:F
    .end local v21           #scaledBitmp:Landroid/graphics/Bitmap;
    .end local v22           #scaledHeight:I
    .end local v23           #scaledWidth:I
    :cond_8
    :goto_4
    move-object/from16 v25, v4

    .line 223
    goto/16 :goto_0

    .line 181
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmapStream:Ljava/io/BufferedOutputStream;
    .restart local v10       #currTime:J
    .restart local v15       #fileName:Ljava/lang/String;
    .restart local v16       #isCompressed:Z
    .restart local v18       #maxAlbumSize:I
    .restart local v19       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v20       #scaleRatio:F
    .restart local v21       #scaledBitmp:Landroid/graphics/Bitmap;
    .restart local v22       #scaledHeight:I
    .restart local v23       #scaledWidth:I
    :catch_0
    move-exception v12

    .line 182
    .local v12, ex:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_4
    const-string v25, "[UpdateAlbumArt]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "FileNotFoundException in bitmapStream. Ex = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    if-eqz v7, :cond_6

    .line 187
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 214
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #bitmapStream:Ljava/io/BufferedOutputStream;
    .end local v12           #ex:Ljava/io/FileNotFoundException;
    .end local v16           #isCompressed:Z
    .end local v18           #maxAlbumSize:I
    .end local v19           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v20           #scaleRatio:F
    .end local v21           #scaledBitmp:Landroid/graphics/Bitmap;
    .end local v22           #scaledHeight:I
    .end local v23           #scaledWidth:I
    :catch_1
    move-exception v12

    .line 215
    .local v12, ex:Ljava/io/IOException;
    const-string v25, "[UpdateAlbumArt]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Caught IOException in writeFile. Ex = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 183
    .end local v12           #ex:Ljava/io/IOException;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmapStream:Ljava/io/BufferedOutputStream;
    .restart local v16       #isCompressed:Z
    .restart local v18       #maxAlbumSize:I
    .restart local v19       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v20       #scaleRatio:F
    .restart local v21       #scaledBitmp:Landroid/graphics/Bitmap;
    .restart local v22       #scaledHeight:I
    .restart local v23       #scaledWidth:I
    :catch_2
    move-exception v12

    .line 184
    .restart local v12       #ex:Ljava/io/IOException;
    :goto_6
    :try_start_6
    const-string v25, "[UpdateAlbumArt]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "IO exception in new bitmapStream. Ex = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    if-eqz v7, :cond_6

    .line 187
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 217
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #bitmapStream:Ljava/io/BufferedOutputStream;
    .end local v12           #ex:Ljava/io/IOException;
    .end local v16           #isCompressed:Z
    .end local v18           #maxAlbumSize:I
    .end local v19           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v20           #scaleRatio:F
    .end local v21           #scaledBitmp:Landroid/graphics/Bitmap;
    .end local v22           #scaledHeight:I
    .end local v23           #scaledWidth:I
    :catch_3
    move-exception v12

    .line 218
    .local v12, ex:Ljava/lang/Exception;
    const-string v25, "[UpdateAlbumArt]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Caught Other Exception in writeFile. Ex = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 186
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmapStream:Ljava/io/BufferedOutputStream;
    .restart local v16       #isCompressed:Z
    .restart local v18       #maxAlbumSize:I
    .restart local v19       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v20       #scaleRatio:F
    .restart local v21       #scaledBitmp:Landroid/graphics/Bitmap;
    .restart local v22       #scaledHeight:I
    .restart local v23       #scaledWidth:I
    :catchall_0
    move-exception v25

    :goto_7
    if-eqz v7, :cond_9

    .line 187
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    .line 186
    :cond_9
    throw v25

    .line 192
    :cond_a
    const-string v25, "[UpdateAlbumArt]"

    const-string v26, "compressed fail. write the data directly"

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 193
    const/4 v13, 0x0

    .line 195
    .local v13, file:Ljava/io/FileOutputStream;
    :try_start_9
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-direct {v14, v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 196
    .end local v13           #file:Ljava/io/FileOutputStream;
    .local v14, file:Ljava/io/FileOutputStream;
    :try_start_a
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 197
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 207
    if-eqz v14, :cond_7

    .line 208
    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_3

    .line 198
    .end local v14           #file:Ljava/io/FileOutputStream;
    .restart local v13       #file:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v12

    .line 199
    .local v12, ex:Ljava/io/FileNotFoundException;
    :goto_8
    :try_start_c
    const-string v25, "[UpdateAlbumArt]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "FileNotFoundException in new File. Ex = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 201
    const/4 v15, 0x0

    .line 207
    if-eqz v13, :cond_7

    .line 208
    :try_start_d
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_3

    .line 202
    .end local v12           #ex:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v12

    .line 203
    .local v12, ex:Ljava/io/IOException;
    :goto_9
    :try_start_e
    const-string v25, "[UpdateAlbumArt]"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "IO exception in new FileOutputStream. Ex = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/musicenhancer/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 205
    const/4 v15, 0x0

    .line 207
    if-eqz v13, :cond_7

    .line 208
    :try_start_f
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_3

    .line 207
    .end local v12           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v25

    :goto_a
    if-eqz v13, :cond_b

    .line 208
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 207
    :cond_b
    throw v25
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .end local v13           #file:Ljava/io/FileOutputStream;
    .restart local v14       #file:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v25

    move-object v13, v14

    .end local v14           #file:Ljava/io/FileOutputStream;
    .restart local v13       #file:Ljava/io/FileOutputStream;
    goto :goto_a

    .line 202
    .end local v13           #file:Ljava/io/FileOutputStream;
    .restart local v14       #file:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v12

    move-object v13, v14

    .end local v14           #file:Ljava/io/FileOutputStream;
    .restart local v13       #file:Ljava/io/FileOutputStream;
    goto :goto_9

    .line 198
    .end local v13           #file:Ljava/io/FileOutputStream;
    .restart local v14       #file:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v12

    move-object v13, v14

    .end local v14           #file:Ljava/io/FileOutputStream;
    .restart local v13       #file:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 186
    .end local v7           #bitmapStream:Ljava/io/BufferedOutputStream;
    .end local v13           #file:Ljava/io/FileOutputStream;
    .restart local v8       #bitmapStream:Ljava/io/BufferedOutputStream;
    :catchall_3
    move-exception v25

    move-object v7, v8

    .end local v8           #bitmapStream:Ljava/io/BufferedOutputStream;
    .restart local v7       #bitmapStream:Ljava/io/BufferedOutputStream;
    goto/16 :goto_7

    .line 183
    .end local v7           #bitmapStream:Ljava/io/BufferedOutputStream;
    .restart local v8       #bitmapStream:Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v12

    move-object v7, v8

    .end local v8           #bitmapStream:Ljava/io/BufferedOutputStream;
    .restart local v7       #bitmapStream:Ljava/io/BufferedOutputStream;
    goto/16 :goto_6

    .line 181
    .end local v7           #bitmapStream:Ljava/io/BufferedOutputStream;
    .restart local v8       #bitmapStream:Ljava/io/BufferedOutputStream;
    :catch_9
    move-exception v12

    move-object v7, v8

    .end local v8           #bitmapStream:Ljava/io/BufferedOutputStream;
    .restart local v7       #bitmapStream:Ljava/io/BufferedOutputStream;
    goto/16 :goto_5
.end method
