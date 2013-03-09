.class public Lcom/htc/ml/PhotoLockScreen/AlbumPathParser;
.super Ljava/lang/Object;
.source "AlbumPathParser.java"


# static fields
.field static LOG_FLAG:Z = false

.field private static final LOG_PREFIX:Ljava/lang/String; = "[AlbumPathParser]: "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/ml/PhotoLockScreen/AlbumPathParser;->LOG_FLAG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parserImageSrc(Landroid/content/Context;Landroid/content/Intent;)[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 21
    const/16 v20, 0x0

    .line 25
    .local v20, tsc:[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    const-string v1, "image_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 26
    .local v17, strImageURI:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 28
    .local v2, mImageURI:Landroid/net/Uri;
    const-string v1, "image_where"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, mImageWhere:Ljava/lang/String;
    const-string v1, "image_args_number"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 33
    .local v15, mNumberImageArgs:I
    const/4 v5, 0x0

    .line 34
    .local v5, mImageArgs:[Ljava/lang/String;
    if-lez v15, :cond_1

    .line 36
    new-array v5, v15, [Ljava/lang/String;

    .line 37
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    .line 38
    .local v14, key:Ljava/lang/String;
    const/4 v13, 0x0

    .line 39
    .local v13, i:I
    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_1

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image_args_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 42
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    .line 43
    sget-boolean v1, Lcom/htc/ml/PhotoLockScreen/AlbumPathParser;->LOG_FLAG:Z

    if-eqz v1, :cond_0

    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AlbumPathParser]: parserFolderSrc(): mImageArgs["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "] = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v5, v13

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 47
    .end local v13           #i:I
    .end local v14           #key:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 48
    .local v7, cur:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 51
    .local v19, total:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v21, "_data"

    aput-object v21, v3, v6

    const/4 v6, 0x1

    const-string v21, "date_modified"

    aput-object v21, v3, v6

    const/4 v6, 0x2

    const-string v21, "date_added"

    aput-object v21, v3, v6

    const/4 v6, 0x3

    const-string v21, "datetaken"

    aput-object v21, v3, v6

    const/4 v6, 0x4

    const-string v21, "mime_type"

    aput-object v21, v3, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 55
    .local v8, dataCol:I
    const-string v1, "date_modified"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 56
    .local v10, dateCol:I
    const-string v1, "date_added"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 57
    .local v9, dateAddCol:I
    const-string v1, "datetaken"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 58
    .local v11, dateTakeCol:I
    const-string v1, "mime_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 59
    .local v16, mimeCol:I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v0, v1, [Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    move-object/from16 v20, v0

    .line 60
    const/4 v13, 0x0

    .line 64
    .restart local v13       #i:I
    :cond_2
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "image/jps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "image/mpo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 65
    :cond_3
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    const-string v3, ""

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v1, v3, v6, v0}, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v20, v13

    .line 82
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 83
    add-int/lit8 v19, v19, 0x1

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 94
    .end local v8           #dataCol:I
    .end local v9           #dateAddCol:I
    .end local v10           #dateCol:I
    .end local v11           #dateTakeCol:I
    .end local v13           #i:I
    .end local v16           #mimeCol:I
    :cond_4
    if-eqz v7, :cond_5

    .line 96
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 97
    const/4 v7, 0x0

    .line 101
    :cond_5
    :goto_2
    sget-boolean v1, Lcom/htc/ml/PhotoLockScreen/AlbumPathParser;->LOG_FLAG:Z

    if-eqz v1, :cond_6

    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AlbumPathParser]: AlbumPathParser() - total = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_6
    return-object v20

    .line 68
    .restart local v8       #dataCol:I
    .restart local v9       #dateAddCol:I
    .restart local v10       #dateCol:I
    .restart local v11       #dateTakeCol:I
    .restart local v13       #i:I
    .restart local v16       #mimeCol:I
    :cond_7
    :try_start_1
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 69
    .local v18, t1:Ljava/lang/String;
    if-eqz v18, :cond_8

    .line 70
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-direct {v1, v3, v0, v6}, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v20, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 87
    .end local v8           #dataCol:I
    .end local v9           #dateAddCol:I
    .end local v10           #dateCol:I
    .end local v11           #dateTakeCol:I
    .end local v13           #i:I
    .end local v16           #mimeCol:I
    .end local v18           #t1:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 90
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AlbumPathParser]: parserImageSrc() - Exception = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    if-eqz v7, :cond_5

    .line 96
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 97
    const/4 v7, 0x0

    goto :goto_2

    .line 73
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v8       #dataCol:I
    .restart local v9       #dateAddCol:I
    .restart local v10       #dateCol:I
    .restart local v11       #dateTakeCol:I
    .restart local v13       #i:I
    .restart local v16       #mimeCol:I
    .restart local v18       #t1:Ljava/lang/String;
    :cond_8
    :try_start_3
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 74
    if-eqz v18, :cond_a

    .line 75
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-direct {v1, v3, v0, v6}, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v20, v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 94
    .end local v8           #dataCol:I
    .end local v9           #dateAddCol:I
    .end local v10           #dateCol:I
    .end local v11           #dateTakeCol:I
    .end local v13           #i:I
    .end local v16           #mimeCol:I
    .end local v18           #t1:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_9

    .line 96
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 97
    const/4 v7, 0x0

    :cond_9
    throw v1

    .line 78
    .restart local v8       #dataCol:I
    .restart local v9       #dateAddCol:I
    .restart local v10       #dateCol:I
    .restart local v11       #dateTakeCol:I
    .restart local v13       #i:I
    .restart local v16       #mimeCol:I
    .restart local v18       #t1:Ljava/lang/String;
    :cond_a
    :try_start_4
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v1, v3, v6, v0}, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v20, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1
.end method

.method public static parserMultiSrc(Landroid/content/Context;Landroid/content/Intent;)[Ljava/lang/String;
    .locals 20
    .parameter "context"
    .parameter "data"

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 196
    .local v18, startTime:J
    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 197
    .local v16, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v12, v2, [Ljava/lang/String;

    .line 198
    .local v12, filepaths:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 199
    .local v13, i:I
    const/4 v8, 0x0

    .line 200
    .local v8, cur:Landroid/database/Cursor;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Parcelable;

    .local v17, parcelable:Landroid/os/Parcelable;
    move-object/from16 v3, v17

    .line 202
    check-cast v3, Landroid/net/Uri;

    .line 205
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 206
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 207
    .local v15, idx:I
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 209
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 210
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    add-int/lit8 v13, v13, 0x1

    .line 221
    :cond_1
    if-eqz v8, :cond_0

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 224
    const/4 v8, 0x0

    goto :goto_0

    .line 214
    .end local v15           #idx:I
    :catch_0
    move-exception v9

    .line 217
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "brian_LiveGallery_IdleScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AlbumPathParser]: parserMultiSrc() - Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    if-eqz v8, :cond_0

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 224
    const/4 v8, 0x0

    goto :goto_0

    .line 221
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 223
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 224
    const/4 v8, 0x0

    :cond_2
    throw v2

    .line 228
    .end local v3           #uri:Landroid/net/Uri;
    .end local v17           #parcelable:Landroid/os/Parcelable;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 229
    .local v10, endTime:J
    sget-boolean v2, Lcom/htc/ml/PhotoLockScreen/AlbumPathParser;->LOG_FLAG:Z

    if-eqz v2, :cond_4

    const-string v2, "brian_LiveGallery_IdleScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parserMultiSrc() start:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v10, v18

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_4
    return-object v12
.end method

.method public static parserVideoSrc(Landroid/content/Context;Landroid/content/Intent;)[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 108
    const/16 v20, 0x0

    .line 111
    .local v20, tsc:[Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
    const-string v1, "video_uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 112
    .local v17, strVideoURI:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 114
    .local v2, mVideoURI:Landroid/net/Uri;
    const-string v1, "video_where"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, mVideoWhere:Ljava/lang/String;
    const-string v1, "video_args_number"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 121
    .local v15, mNumberVideoArgs:I
    const/4 v5, 0x0

    .line 122
    .local v5, mVideoArgs:[Ljava/lang/String;
    if-lez v15, :cond_0

    .line 124
    new-array v5, v15, [Ljava/lang/String;

    .line 125
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    .line 126
    .local v14, key:Ljava/lang/String;
    const/4 v13, 0x0

    .line 127
    .local v13, i:I
    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video_args_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 130
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    .line 127
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 135
    .end local v13           #i:I
    .end local v14           #key:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .line 136
    .local v7, cur:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 139
    .local v19, total:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v21, "_data"

    aput-object v21, v3, v6

    const/4 v6, 0x1

    const-string v21, "date_modified"

    aput-object v21, v3, v6

    const/4 v6, 0x2

    const-string v21, "date_added"

    aput-object v21, v3, v6

    const/4 v6, 0x3

    const-string v21, "datetaken"

    aput-object v21, v3, v6

    const/4 v6, 0x4

    const-string v21, "mime_type"

    aput-object v21, v3, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 143
    .local v8, dataCol:I
    const-string v1, "date_modified"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 144
    .local v10, dateCol:I
    const-string v1, "date_added"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 145
    .local v9, dateAddCol:I
    const-string v1, "datetaken"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 146
    .local v11, dateTakeCol:I
    const-string v1, "mime_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 147
    .local v16, mimeCol:I
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v0, v1, [Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    move-object/from16 v20, v0

    .line 148
    const/4 v13, 0x0

    .line 152
    .restart local v13       #i:I
    :cond_1
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "video/mp4-3d"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 153
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    const-string v3, ""

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v1, v3, v6, v0}, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v20, v13

    .line 172
    :goto_1
    add-int/lit8 v13, v13, 0x1

    .line 173
    add-int/lit8 v19, v19, 0x1

    .line 174
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 184
    .end local v8           #dataCol:I
    .end local v9           #dateAddCol:I
    .end local v10           #dateCol:I
    .end local v11           #dateTakeCol:I
    .end local v13           #i:I
    .end local v16           #mimeCol:I
    :cond_2
    if-eqz v7, :cond_3

    .line 186
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 187
    const/4 v7, 0x0

    .line 190
    :cond_3
    :goto_2
    return-object v20

    .line 156
    .restart local v8       #dataCol:I
    .restart local v9       #dateAddCol:I
    .restart local v10       #dateCol:I
    .restart local v11       #dateTakeCol:I
    .restart local v13       #i:I
    .restart local v16       #mimeCol:I
    :cond_4
    :try_start_1
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, t1:Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 158
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-direct {v1, v3, v0, v6}, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v20, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 177
    .end local v8           #dataCol:I
    .end local v9           #dateAddCol:I
    .end local v10           #dateCol:I
    .end local v11           #dateTakeCol:I
    .end local v13           #i:I
    .end local v16           #mimeCol:I
    .end local v18           #t1:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 180
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "brian_LiveGallery_IdleScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AlbumPathParser]: parserVideoSrc() - Exception = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    if-eqz v7, :cond_3

    .line 186
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 187
    const/4 v7, 0x0

    goto :goto_2

    .line 161
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v8       #dataCol:I
    .restart local v9       #dateAddCol:I
    .restart local v10       #dateCol:I
    .restart local v11       #dateTakeCol:I
    .restart local v13       #i:I
    .restart local v16       #mimeCol:I
    .restart local v18       #t1:Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 162
    if-eqz v18, :cond_7

    .line 163
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-direct {v1, v3, v0, v6}, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v20, v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 184
    .end local v8           #dataCol:I
    .end local v9           #dateAddCol:I
    .end local v10           #dateCol:I
    .end local v11           #dateTakeCol:I
    .end local v13           #i:I
    .end local v16           #mimeCol:I
    .end local v18           #t1:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 186
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 187
    const/4 v7, 0x0

    :cond_6
    throw v1

    .line 166
    .restart local v8       #dataCol:I
    .restart local v9       #dateAddCol:I
    .restart local v10       #dateCol:I
    .restart local v11       #dateTakeCol:I
    .restart local v13       #i:I
    .restart local v16       #mimeCol:I
    .restart local v18       #t1:Ljava/lang/String;
    :cond_7
    :try_start_4
    new-instance v1, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v1, v3, v6, v0}, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v20, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method
