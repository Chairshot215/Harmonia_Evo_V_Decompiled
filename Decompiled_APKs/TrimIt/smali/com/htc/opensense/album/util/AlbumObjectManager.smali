.class public Lcom/htc/opensense/album/util/AlbumObjectManager;
.super Ljava/lang/Object;
.source "AlbumObjectManager.java"


# static fields
.field public static final SORT:I = 0x1

.field public static final SORT_ORDER:Ljava/lang/String; = "datetaken"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findFirstFolderBucketId(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 13
    .parameter "ctx"
    .parameter "folderType"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 378
    const/4 v3, 0x0

    .line 380
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 381
    .local v8, dispName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 384
    .local v6, bucketId:Ljava/lang/String;
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/htc/opensense/album/util/AlbumObjectManager;->getLocalFolderWhereClause(I)Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "distinct"

    const-string v4, "true"

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/album/AlbumCommon/Constants;->COLLECTIONS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "bucket_display_name ASC"

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 393
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 395
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 396
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 404
    .restart local v7       #cur:Landroid/database/Cursor;
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    .line 405
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "distinct"

    const-string v4, "true"

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/album/AlbumCommon/Constants;->COLLECTIONS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "bucket_display_name ASC"

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 412
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 414
    .local v10, temp:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 415
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 416
    move-object v8, v10

    .line 427
    .end local v10           #temp:Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 428
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_2
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v6, v0, v11

    aput-object v8, v0, v12

    return-object v0

    .line 399
    .end local v7           #cur:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 400
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 417
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v7       #cur:Landroid/database/Cursor;
    .restart local v10       #temp:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v10, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 418
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 419
    move-object v8, v10

    goto :goto_1

    .line 423
    .end local v10           #temp:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 424
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 427
    if-eqz v7, :cond_2

    .line 428
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 427
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 428
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getLocalFolderWhereClause(I)Ljava/lang/String;
    .locals 4
    .parameter "mediaType"

    .prologue
    .line 364
    invoke-static {p0}, Lcom/htc/opensense/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, SupportedMediaFormatWhereClause:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(NOT (_data LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' + OR _data LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' + OR _data LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageDownloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\' + OR _data LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, where:Ljava/lang/String;
    return-object v1
.end method

.method public static getQueryArgs(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .parameter "type"
    .parameter "mediaType"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, args:[Ljava/lang/String;
    const-string v1, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    new-array v0, v2, [Ljava/lang/String;

    .end local v0           #args:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 296
    .restart local v0       #args:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    const-string v1, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    new-array v0, v2, [Ljava/lang/String;

    .end local v0           #args:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageDownloadPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .restart local v0       #args:[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getQuerySortOrder(I)Ljava/lang/String;
    .locals 1
    .parameter "mediaType"

    .prologue
    .line 435
    const-string v0, "datetaken"

    return-object v0
.end method

.method public static getQueryUri(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "mediaType"
    .parameter "folderType"

    .prologue
    .line 202
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 204
    const-string v0, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_1
    const/16 v0, 0x10

    if-ne p0, v0, :cond_3

    .line 209
    const-string v0, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneVideosUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getQueryWhere(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "type"
    .parameter "bucketId"
    .parameter "mediaType"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x1

    .line 225
    invoke-static {p2}, Lcom/htc/opensense/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, where:Ljava/lang/String;
    const-string v1, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like ? OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like ? )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    const-string v0, "( _data like ? OR _data like ? )"

    goto :goto_0

    .line 233
    :cond_2
    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 234
    if-ne p2, v2, :cond_4

    .line 235
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_3
    const-string v0, "favorite = 1"

    goto :goto_0

    .line 240
    :cond_4
    if-ne p2, v3, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_5
    const-string v0, "favorite = 1"

    goto :goto_0

    .line 247
    :cond_6
    const-string v1, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    const-string v1, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const-string v1, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like ? OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " like ? )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 255
    :cond_7
    const-string v0, "( _data like ? OR _data like ? )"

    goto/16 :goto_0

    .line 259
    :cond_8
    const-string v1, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    :cond_9
    if-ne p2, v2, :cond_b

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 264
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bucket_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 266
    :cond_b
    if-ne p2, v3, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 270
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bucket_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getSupportedMediaFormatWhereClause(I)Ljava/lang/String;
    .locals 1
    .parameter "mediaType"

    .prologue
    .line 300
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/opensense/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedMediaFormatWhereClause(IZ)Ljava/lang/String;
    .locals 6
    .parameter "mediaType"
    .parameter "filterAlbumArt"

    .prologue
    const/4 v3, 0x1

    .line 312
    if-eq p0, v3, :cond_0

    const/16 v2, 0xe

    if-ne p0, v2, :cond_2

    .line 313
    :cond_0
    if-nez p1, :cond_1

    .line 314
    const-string v1, ""

    .line 353
    :goto_0
    return-object v1

    .line 316
    :cond_1
    const-string v0, "(((mime_type like \'image/jpeg\') OR ( mime_type like \'image/png\') OR (mime_type like \'image/bmp\') OR (mime_type like \'image/gif\') OR (mime_type like \'image/vnd.wap.wbmp\') OR (mime_type like \'image/x-ms-bmp\')) AND  (NOT _display_name LIKE \'cover%\') AND (_size> 0)  AND (NOT _display_name LIKE \'front.jpg\') AND (NOT _display_name LIKE \'back.jpg\') AND (NOT _display_name LIKE \'CD.jpg\') AND (NOT _display_name LIKE \'Cover.jpg\') AND (NOT _display_name LIKE \'~htc%\') AND (NOT _data LIKE \'%/My Music/%\') AND (NOT _data LIKE \'%/Music/%\') AND (NOT _display_name LIKE \'folder%\') AND (NOT _display_name LIKE \'AlbumArt%\'))"

    .local v0, albumArtFilter:Ljava/lang/String;
    move-object v1, v0

    .line 333
    goto :goto_0

    .line 339
    .end local v0           #albumArtFilter:Ljava/lang/String;
    :cond_2
    const-string v2, "(%s > 0)"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "_size"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, supportTypes:Ljava/lang/String;
    goto :goto_0
.end method

.method public static makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 8
    .parameter "ctx"
    .parameter "mediaType"
    .parameter "catagory"
    .parameter "folderType"

    .prologue
    const/4 v5, 0x1

    .line 27
    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    and-int/lit16 v4, p1, -0xef

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data like \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageCameraPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%\' OR "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "_data"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " like \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageCameraPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IIZLjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v0, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object v1, p0

    move v4, p1

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IIZZ)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    and-int/lit8 v0, p1, 0xe

    if-eqz v0, :cond_2

    .line 56
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    and-int/lit8 v4, p1, 0xf

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;II)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object v2, p0

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;II)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_3
    const-string v0, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    and-int/lit16 v0, p1, 0xe0

    if-eqz v0, :cond_4

    .line 82
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    and-int/lit16 v4, p1, 0x1f0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;II)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    and-int/lit16 v1, p1, 0x100

    or-int/lit8 v4, v1, 0x10

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;II)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_5
    const-string v0, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data like \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%\' OR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_data"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " like \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%\' OR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_data"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " like \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageDownloadsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%\' OR "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_data"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " like \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneStorageDownloadsPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move v4, p1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IIZLjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 114
    :cond_6
    if-eqz p3, :cond_7

    const-string v0, "com.htc.HTCAlbum.PHONE_STORAGE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->PHONE:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object v1, p0

    move v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0

    .line 125
    :cond_7
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object v1, p0

    move v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1
    .parameter "ctx"
    .parameter "catagory"
    .parameter "folderType"

    .prologue
    .line 22
    const/16 v0, 0xff

    invoke-static {p0, v0, p1, p2}, Lcom/htc/opensense/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 7
    .parameter "intent"
    .parameter "folderType"
    .parameter "bucketId"
    .parameter "dispName"
    .parameter "mediaType"
    .parameter "proj"

    .prologue
    .line 165
    invoke-static {p4}, Lcom/htc/opensense/album/util/AlbumObjectManager;->getQuerySortOrder(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, order:Ljava/lang/String;
    invoke-static {p1, p2, p4}, Lcom/htc/opensense/album/util/AlbumObjectManager;->getQueryWhere(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, where:Ljava/lang/String;
    invoke-static {p1, p4}, Lcom/htc/opensense/album/util/AlbumObjectManager;->getQueryArgs(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, args:[Ljava/lang/String;
    invoke-static {p4, p1}, Lcom/htc/opensense/album/util/AlbumObjectManager;->getQueryUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 171
    .local v2, uri:Landroid/net/Uri;
    const-string v4, "folder_type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/4 v4, 0x1

    if-ne p4, v4, :cond_2

    const-string v4, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    const-string v4, "image_uri"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    const-string v4, "image_projection"

    invoke-virtual {p0, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v4, "image_where"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v4, "image_args"

    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v4, "image_sort_order"

    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isSupportPhoneStorage()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    :cond_0
    const-string v4, "image_uri_phone"

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    const/16 v4, 0x10

    if-ne p4, v4, :cond_1

    const-string v4, "com.htc.HTCAlbum.ALL_PHOTOS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 189
    const-string v4, "video_uri"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    const-string v4, "video_projection"

    invoke-virtual {p0, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v4, "video_where"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v4, "video_args"

    invoke-virtual {p0, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v4, "video_sort_order"

    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
