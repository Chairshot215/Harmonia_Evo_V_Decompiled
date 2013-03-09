.class public Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;
.super Ljava/lang/Object;
.source "ItemPropertyInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDateToString(J)Ljava/lang/String;
    .locals 9
    .parameter "dateLong"

    .prologue
    const/16 v8, 0xa

    .line 472
    const-string v5, "yyyy-MM-dd"

    .line 473
    .local v5, sDateFormat:Ljava/lang/CharSequence;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 475
    .local v1, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 476
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 478
    invoke-static {v5, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, dateString:Ljava/lang/String;
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 482
    .local v3, hour:I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 486
    .local v4, min:I
    if-ge v3, v8, :cond_0

    .line 487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    :goto_0
    if-ge v4, v8, :cond_1

    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    :goto_1
    return-object v2

    .line 489
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 494
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getAudioDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;ILcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 16
    .parameter "cacheItem"
    .parameter "filePath"
    .parameter "audioID"
    .parameter "serviceObj"

    .prologue
    .line 122
    if-nez p0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 128
    .local v12, startTick:J
    invoke-static/range {p1 .. p1}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setContainerPath(Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setFileName(Ljava/lang/String;)V

    .line 132
    if-eqz p3, :cond_0

    .line 135
    invoke-virtual/range {p3 .. p3}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 136
    .local v10, aContext:Landroid/content/Context;
    if-eqz v10, :cond_0

    .line 139
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "composer"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "track"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "year"

    aput-object v2, v3, v1

    .line 146
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 151
    .local v11, cur:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 153
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 154
    const-string v1, "composer"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setComposer(Ljava/lang/String;)V

    .line 155
    const-string v1, "mime_type"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setType(Ljava/lang/String;)V

    .line 156
    const-wide/16 v14, 0x0

    .line 157
    .local v14, trackNum:J
    const-string v1, "track"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 158
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-eqz v1, :cond_2

    .line 160
    const-wide/16 v1, 0x3e8

    cmp-long v1, v14, v1

    if-ltz v1, :cond_6

    .line 162
    const-wide/16 v1, 0x3e8

    div-long v1, v14, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setDiscNumber(Ljava/lang/String;)V

    .line 163
    const-wide/16 v1, 0x64

    rem-long v1, v14, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setTrackNumber(Ljava/lang/String;)V

    .line 171
    :cond_2
    :goto_1
    const-string v1, "year"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setDate(Ljava/lang/String;)V

    .line 179
    .end local v14           #trackNum:J
    :goto_2
    if-eqz v11, :cond_3

    .line 181
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 182
    const/4 v11, 0x0

    .line 185
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in (select genre_id from audio_genres_map where audio_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, where:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 193
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 195
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 196
    const-string v1, "name"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setGenre(Ljava/lang/String;)V

    .line 199
    :cond_4
    if-eqz v11, :cond_5

    .line 201
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 202
    const/4 v11, 0x0

    .line 205
    :cond_5
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Details : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 167
    .end local v7           #where:Ljava/lang/String;
    .restart local v14       #trackNum:J
    :cond_6
    const-string v1, "1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setDiscNumber(Ljava/lang/String;)V

    .line 168
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setTrackNumber(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 176
    .end local v14           #trackNum:J
    :cond_7
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "LocalPlaylist : Audio MetaData"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static getAudioInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;ILcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 18
    .parameter "cacheItem"
    .parameter "audioID"
    .parameter "serviceObj"

    .prologue
    .line 19
    if-nez p0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 24
    .local v14, startTick:J
    if-eqz p2, :cond_0

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 28
    .local v10, aContext:Landroid/content/Context;
    if-eqz v10, :cond_0

    .line 31
    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "duration"

    aput-object v2, v3, v1

    .line 40
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 45
    .local v12, cur:Landroid/database/Cursor;
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 47
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 48
    const-string v1, "_data"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setFilePath(Ljava/lang/String;)V

    .line 49
    const-string v1, "album_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setAlbumID(J)V

    .line 50
    const-string v1, "title"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setTitle(Ljava/lang/String;)V

    .line 51
    const-string v1, "artist"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setArtist(Ljava/lang/String;)V

    .line 52
    const-string v1, "album"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setAlbum(Ljava/lang/String;)V

    .line 53
    const-string v1, "duration"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setDuration(J)V

    .line 56
    :cond_2
    if-eqz v12, :cond_3

    .line 58
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 59
    const/4 v12, 0x0

    .line 63
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getAlbumID()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    if-nez v1, :cond_4

    .line 65
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "No album id"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 69
    :cond_4
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "album_art"

    aput-object v2, v6, v1

    const/4 v1, 0x1

    const-string v2, "album_key"

    aput-object v2, v6, v1

    const-string v7, "_id=?"

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getAlbumID()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 75
    const/4 v11, 0x0

    .line 77
    .local v11, albumKey:Ljava/lang/String;
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 79
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    const-string v1, "album_art"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setThumbFilePath(Ljava/lang/String;)V

    .line 81
    const-string v1, "album_key"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 84
    :cond_5
    if-eqz v12, :cond_6

    .line 86
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 87
    const/4 v12, 0x0

    .line 93
    :cond_6
    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dl_data"

    aput-object v2, v6, v1

    const-string v7, "dl_album_id=? and dl_album_key=?"

    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getAlbumID()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x1

    aput-object v11, v8, v1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 99
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 101
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    const-string v1, "dl_data"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setDownloadAlbumArtPath(Ljava/lang/String;)V

    .line 103
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Info: Download:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getDownloadAlbumArtPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_7
    :goto_1
    if-eqz v12, :cond_8

    .line 113
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 114
    const/4 v12, 0x0

    .line 117
    :cond_8
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio Info : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 106
    :catch_0
    move-exception v13

    .line 108
    .local v13, e:Ljava/lang/Exception;
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Audio Info: DownloadStore query has error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "filePath"
    .parameter "bExtension"

    .prologue
    const/4 v3, -0x1

    .line 518
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 520
    .local v1, slashIndex:I
    if-eq v1, v3, :cond_0

    .line 522
    if-nez p1, :cond_2

    .line 524
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 526
    .local v0, dotIndex:I
    if-eq v0, v3, :cond_1

    .line 527
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 537
    .end local v0           #dotIndex:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 529
    .restart local v0       #dotIndex:I
    .restart local p0
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 533
    .end local v0           #dotIndex:I
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getImageDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;ILcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 3
    .parameter "cacheItem"
    .parameter "filePath"
    .parameter "imageID"
    .parameter "serviceObj"

    .prologue
    .line 265
    if-nez p0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {p1}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setContainerPath(Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setFileName(Ljava/lang/String;)V

    .line 273
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 274
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 275
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 278
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setType(Ljava/lang/String;)V

    .line 280
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setResolution(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 280
    :cond_2
    const-string v1, "Unknown"

    goto :goto_2
.end method

.method public static getImageInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;ILcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 13
    .parameter "cacheItem"
    .parameter "imageID"
    .parameter "serviceObj"

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 210
    if-nez p0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 217
    .local v6, aContext:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 220
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v12

    const-string v0, "title"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v1, "bucket_display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "_size"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "datetaken"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "date_added"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "date_modified"

    aput-object v1, v2, v0

    .line 230
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 235
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 237
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setFilePath(Ljava/lang/String;)V

    .line 239
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setTitle(Ljava/lang/String;)V

    .line 240
    const-string v0, "bucket_display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setAlbum(Ljava/lang/String;)V

    .line 241
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setSize(J)V

    .line 242
    const-string v0, "datetaken"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 243
    .local v8, date:J
    cmp-long v0, v8, v10

    if-nez v0, :cond_2

    .line 245
    const-string v0, "date_added"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 246
    cmp-long v0, v8, v10

    if-nez v0, :cond_2

    .line 247
    const-string v0, "date_modified"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 250
    :cond_2
    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    .line 251
    invoke-static {v8, v9}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->convertDateToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setDate(Ljava/lang/String;)V

    .line 253
    :cond_3
    const-string v0, "date_modified"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setModifiedTime(J)V

    .line 256
    .end local v8           #date:J
    :cond_4
    if-eqz v7, :cond_0

    .line 258
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 259
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public static getParentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 503
    if-eqz p0, :cond_0

    const-string v1, ""

    if-ne p0, v1, :cond_1

    .line 504
    :cond_0
    const-string v1, ""

    .line 513
    :goto_0
    return-object v1

    .line 507
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 508
    .local v0, slashIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 510
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 513
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public static getVideoDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 16
    .parameter "cacheItem"
    .parameter "filePath"
    .parameter "serviceObj"

    .prologue
    .line 373
    if-nez p0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    if-eqz p2, :cond_0

    .line 379
    invoke-virtual/range {p2 .. p2}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 380
    .local v7, aContext:Landroid/content/Context;
    if-eqz v7, :cond_0

    .line 383
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "datetaken"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "date_added"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v3, v1

    .line 389
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 395
    .local v8, cur:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 397
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 398
    const-string v1, "datetaken"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 399
    .local v9, date:J
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_2

    .line 401
    const-string v1, "date_added"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 402
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-nez v1, :cond_2

    .line 403
    const-string v1, "date_modified"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 406
    :cond_2
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-eqz v1, :cond_3

    .line 407
    invoke-static {v9, v10}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->convertDateToString(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setDate(Ljava/lang/String;)V

    .line 409
    :cond_3
    const-string v1, "mime_type"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 410
    .local v14, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setType(Ljava/lang/String;)V

    .line 412
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLocalMetaData : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v9           #date:J
    .end local v14           #mimeType:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_5

    .line 417
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 418
    const/4 v8, 0x0

    .line 422
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setContainerPath(Ljava/lang/String;)V

    .line 424
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setFileName(Ljava/lang/String;)V

    .line 426
    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 430
    .local v15, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 434
    const/4 v12, 0x0

    .line 435
    .local v12, dimensionWidth:I
    const/4 v11, 0x0

    .line 437
    .local v11, dimensionHeight:I
    const/16 v1, 0x12

    :try_start_1
    invoke-virtual {v15, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 441
    const/16 v1, 0x13

    invoke-virtual {v15, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setResolution(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 460
    :goto_1
    :try_start_2
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 462
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 447
    :catch_1
    move-exception v13

    .line 448
    .local v13, e:Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v1, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setResolution(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 452
    .end local v11           #dimensionHeight:I
    .end local v12           #dimensionWidth:I
    .end local v13           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 460
    :try_start_4
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 462
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 458
    :catchall_0
    move-exception v1

    .line 460
    :try_start_5
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 465
    :goto_2
    throw v1

    .line 462
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static getVideoInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 12
    .parameter "cacheItem"
    .parameter "filePath"
    .parameter "serviceObj"

    .prologue
    .line 285
    if-nez p0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 292
    .local v6, aContext:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setFilePath(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_size"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "date_modified"

    aput-object v1, v2, v0

    .line 304
    .local v2, projection:[Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 306
    .local v8, durationMs:J
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 312
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 314
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 315
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setTitle(Ljava/lang/String;)V

    .line 316
    const-string v0, "duration"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 317
    const-string v0, "_size"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setSize(J)V

    .line 318
    const-string v0, "date_modified"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setModifiedTime(J)V

    .line 321
    :cond_2
    if-eqz v7, :cond_3

    .line 323
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 324
    const/4 v7, 0x0

    .line 327
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_4

    .line 329
    const-wide/16 v0, 0x3e8

    div-long v0, v8, v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setDuration(J)V

    goto/16 :goto_0

    .line 333
    :cond_4
    new-instance v11, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v11}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 337
    .local v11, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v11, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 341
    const/16 v0, 0x9

    :try_start_1
    invoke-virtual {v11, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    .line 345
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoOtherDetails: Duration:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-wide/16 v0, 0x3e8

    div-long v0, v8, v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setDuration(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 361
    :goto_1
    :try_start_2
    invoke-virtual {v11}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 363
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 349
    :catch_1
    move-exception v10

    .line 350
    .local v10, e:Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 353
    .end local v10           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 361
    :try_start_4
    invoke-virtual {v11}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 363
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 359
    :catchall_0
    move-exception v0

    .line 361
    :try_start_5
    invoke-virtual {v11}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 366
    :goto_2
    throw v0

    .line 363
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static setDownloadStoreAlbumArt(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;JLjava/lang/String;)Z
    .locals 19
    .parameter "cacheItem"
    .parameter "serviceObj"
    .parameter "downloadAlbumID"
    .parameter "downloadAlbumArtPath"

    .prologue
    .line 542
    const/4 v10, 0x0

    .line 544
    .local v10, bResult:Z
    if-nez p0, :cond_0

    move v11, v10

    .line 638
    .end local v10           #bResult:Z
    .local v11, bResult:I
    :goto_0
    return v11

    .line 547
    .end local v11           #bResult:I
    .restart local v10       #bResult:Z
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getAlbumID()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    move v11, v10

    .line 548
    .restart local v11       #bResult:I
    goto :goto_0

    .line 550
    .end local v11           #bResult:I
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 552
    :cond_2
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "setDownloadStoreAlbumArt: download albumart path is empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 553
    .restart local v11       #bResult:I
    goto :goto_0

    .line 556
    .end local v11           #bResult:I
    :cond_3
    if-nez p1, :cond_4

    move v11, v10

    .line 557
    .restart local v11       #bResult:I
    goto :goto_0

    .line 559
    .end local v11           #bResult:I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 560
    .local v8, aContext:Landroid/content/Context;
    if-nez v8, :cond_5

    move v11, v10

    .line 561
    .restart local v11       #bResult:I
    goto :goto_0

    .line 563
    .end local v11           #bResult:I
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 565
    .local v15, startTick:J
    const/4 v12, 0x0

    .line 567
    .local v12, cur:Landroid/database/Cursor;
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "album_key"

    aput-object v6, v4, v5

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getAlbumID()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 573
    const/4 v9, 0x0

    .line 575
    .local v9, albumKey:Ljava/lang/String;
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 577
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 578
    const-string v2, "album_key"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 581
    :cond_6
    if-eqz v12, :cond_7

    .line 583
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 584
    const/4 v12, 0x0

    .line 587
    :cond_7
    if-nez v9, :cond_8

    .line 589
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "setDownloadStoreAlbumArt: album key is empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 590
    .restart local v11       #bResult:I
    goto :goto_0

    .line 593
    .end local v11           #bResult:I
    :cond_8
    const/4 v13, 0x0

    .line 596
    .local v13, downloadAlbumKey:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "dl_album_key"

    aput-object v6, v4, v5

    const-string v5, "dl_album_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 602
    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 604
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 605
    const-string v2, "dl_album_key"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 613
    :cond_9
    :goto_1
    if-eqz v12, :cond_a

    .line 615
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 616
    const/4 v12, 0x0

    .line 619
    :cond_a
    if-nez v13, :cond_b

    .line 621
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "setDownloadStoreAlbumArt: download album key is empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 622
    .restart local v11       #bResult:I
    goto/16 :goto_0

    .line 608
    .end local v11           #bResult:I
    :catch_0
    move-exception v14

    .line 610
    .local v14, e:Ljava/lang/Exception;
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "setDownloadStoreAlbumArt: DownloadStore query has error"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 625
    .end local v14           #e:Ljava/lang/Exception;
    :cond_b
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 627
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "setDownloadStoreAlbumArt: album key not match!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 628
    .restart local v11       #bResult:I
    goto/16 :goto_0

    .line 631
    .end local v11           #bResult:I
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setDownloadAlbumArtPath(Ljava/lang/String;)V

    .line 632
    const/4 v10, 0x1

    .line 634
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDownloadStoreAlbumArt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDownloadStoreAlbumArt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v15

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v10

    .line 638
    .restart local v11       #bResult:I
    goto/16 :goto_0
.end method
