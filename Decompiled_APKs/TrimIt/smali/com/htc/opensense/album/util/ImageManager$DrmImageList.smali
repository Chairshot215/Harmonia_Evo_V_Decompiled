.class Lcom/htc/opensense/album/util/ImageManager$DrmImageList;
.super Lcom/htc/opensense/album/util/ImageManager$ImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmImageList"
.end annotation


# instance fields
.field mIncludeTypes:I

.field mSetAsCount:I

.field mSharableCount:I

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;

.field tmpCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 12
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "includeType"
    .parameter "where"
    .parameter "isFavorite"

    .prologue
    .line 3972
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    .line 3973
    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/htc/opensense/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;Z)V

    .line 3967
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mSharableCount:I

    .line 3968
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mSetAsCount:I

    .line 3969
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    .line 3974
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    .line 3975
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->getDrmShareCount()V

    .line 3976
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->getDrmSetAsCount()V

    .line 3977
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->createDrmOwnCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mCursor:Landroid/database/Cursor;

    .line 3978
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->registerObservers()V

    .line 3979
    return-void
.end method

.method private removeSingleImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 8
    .parameter "image"

    .prologue
    const/4 v4, 0x0

    .line 4228
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4229
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 4246
    :cond_0
    :goto_0
    return v4

    .line 4231
    :cond_1
    monitor-enter v0

    .line 4234
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getRow()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4239
    .local v2, moved:Z
    if-eqz v2, :cond_2

    .line 4240
    :try_start_1
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 4241
    .local v3, u:Landroid/net/Uri;
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete drm image, uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4242
    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Lcom/htc/opensense/album/util/DrmManager;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 4243
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->onRemove()V

    .line 4245
    .end local v3           #u:Landroid/net/Uri;
    :cond_2
    monitor-exit v0

    .line 4246
    const/4 v4, 0x1

    goto :goto_0

    .line 4235
    .end local v2           #moved:Z
    :catch_0
    move-exception v1

    .line 4236
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeImage got exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4237
    monitor-exit v0

    goto :goto_0

    .line 4245
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4306
    iget v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    .line 4307
    .local v0, ascending:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 4306
    .end local v0           #ascending:Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method


# virtual methods
.method public checkThumbnail(Lcom/htc/opensense/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 2
    .parameter "existingImage"
    .parameter "c"
    .parameter "i"

    .prologue
    .line 4154
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checkThumbnails(Lcom/htc/opensense/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 4150
    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 4139
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createDrmOwnCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 4144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4081
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrmSetAsCount()V
    .locals 0

    .prologue
    .line 4056
    return-void
.end method

.method public getDrmShareCount()V
    .locals 0

    .prologue
    .line 4022
    return-void
.end method

.method public getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 14
    .parameter "i"

    .prologue
    .line 4159
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 4160
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_0

    const/4 v12, 0x0

    .line 4183
    :goto_0
    return-object v12

    .line 4161
    :cond_0
    monitor-enter v10

    .line 4164
    :try_start_0
    invoke-interface {v10, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 4168
    .local v13, moved:Z
    if-eqz v13, :cond_2

    .line 4170
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 4171
    .local v1, id:J
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense/album/util/ImageManager$IImage;

    .line 4172
    .local v12, img:Lcom/htc/opensense/album/util/ImageManager$IImage;
    if-nez v12, :cond_1

    .line 4173
    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v6, p0

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->make(JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$IImageList;JI)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v12

    .line 4174
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4176
    :cond_1
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .line 4185
    .end local v1           #id:J
    .end local v12           #img:Lcom/htc/opensense/album/util/ImageManager$IImage;
    .end local v13           #moved:Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4165
    :catch_0
    move-exception v11

    .line 4166
    .local v11, ex:Ljava/lang/Exception;
    const/4 v12, 0x0

    :try_start_3
    monitor-exit v10

    goto :goto_0

    .line 4177
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v13       #moved:Z
    :catch_1
    move-exception v11

    .line 4178
    .restart local v11       #ex:Ljava/lang/Exception;
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got this exception trying to create image object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4179
    const/4 v12, 0x0

    monitor-exit v10

    goto :goto_0

    .line 4182
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_2
    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to moveTo to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    const/4 v12, 0x0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getSetAsCount()I
    .locals 1

    .prologue
    .line 3986
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mSetAsCount:I

    return v0
.end method

.method public getSharableCount()I
    .locals 1

    .prologue
    .line 3982
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mSharableCount:I

    return v0
.end method

.method protected indexBucketName()I
    .locals 1

    .prologue
    .line 4301
    const/4 v0, -0x1

    return v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 4288
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateAdded()I
    .locals 1

    .prologue
    .line 4299
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->INDEX_DATE_ADDED:I

    return v0
.end method

.method protected indexDateModified()I
    .locals 1

    .prologue
    .line 4300
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 4284
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDeliveryType()I
    .locals 1

    .prologue
    .line 4302
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 4285
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 4295
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 4287
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 4289
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 4290
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 4286
    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 4291
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 4283
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 4292
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 4293
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 4296
    const/4 v0, -0x1

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 4294
    const/4 v0, -0x1

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$IImageList;JI)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 8
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"

    .prologue
    .line 4279
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$DrmImage;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    iget-object v4, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-object v6, p0

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense/album/util/ImageManager$DrmImage;-><init>(Lcom/htc/opensense/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;I)V

    return-object v0
.end method

.method public removeImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 3
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    .line 4190
    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mIsFavorite:Z

    if-eqz v1, :cond_1

    .line 4191
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->removeFavoriteImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z

    move-result v0

    .line 4219
    :cond_0
    :goto_0
    return v0

    .line 4193
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4216
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->removeSingleImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z

    .line 4218
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->requery()V

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 4251
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v0

    .line 4252
    .local v0, image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 4259
    :goto_0
    return-void

    .line 4254
    :cond_0
    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mIsFavorite:Z

    if-eqz v1, :cond_1

    .line 4255
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->removeFavoriteImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z

    goto :goto_0

    .line 4258
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->removeImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z

    goto :goto_0
.end method

.method public removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V
    .locals 5
    .parameter "images"

    .prologue
    .line 4263
    if-nez p1, :cond_1

    .line 4276
    :cond_0
    :goto_0
    return-void

    .line 4265
    :cond_1
    iget-boolean v4, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mIsFavorite:Z

    if-eqz v4, :cond_2

    .line 4266
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->removeFavoriteImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V

    goto :goto_0

    .line 4269
    :cond_2
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/opensense/album/util/ImageManager$IImage;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 4274
    .local v2, image:Lcom/htc/opensense/album/util/ImageManager$IImage;
    invoke-direct {p0, v2}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->removeSingleImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z

    .line 4269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected requery()V
    .locals 4

    .prologue
    .line 4314
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 4315
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4316
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 4317
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v0

    .line 4318
    .local v0, result:Z
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmImageList cursor requery result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4322
    .end local v0           #result:Z
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mCursorDeactivated:Z

    .line 4323
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->getDrmShareCount()V

    .line 4324
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->getDrmSetAsCount()V

    .line 4325
    return-void

    .line 4320
    :cond_1
    const-string v1, "ImageManager"

    const-string v2, "DrmImageList cursor is NULL"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4122
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 4126
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4127
    .local v1, queryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "exist"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4128
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4129
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4132
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 4133
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4134
    return-object v0
.end method
