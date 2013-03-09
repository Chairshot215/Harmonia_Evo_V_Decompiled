.class Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;
.super Lcom/htc/opensense2/album/util/ImageManager$ImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmImageList"
.end annotation


# instance fields
.field final INDEX_BUCKET_NAME:I

.field final INDEX_DATA:I

.field final INDEX_DATE_ADDED:I

.field final INDEX_DELIVERY_TYPE:I

.field final INDEX_DISPLAYNAME:I

.field final INDEX_EXISTENCE:I

.field final INDEX_ID:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_SIZE:I

.field final INDEX_TITLE:I

.field mIncludeTypes:I

.field mSetAsCount:I

.field mSharableCount:I

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;

.field tmpCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 13
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
    .line 4259
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 4260
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 4240
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_ID:I

    .line 4241
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DATA:I

    .line 4242
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_size"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_SIZE:I

    .line 4243
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DISPLAYNAME:I

    .line 4244
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mime_type"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_MIME_TYPE:I

    .line 4245
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_TITLE:I

    .line 4246
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_added"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DATE_ADDED:I

    .line 4247
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucket_display_name"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_BUCKET_NAME:I

    .line 4248
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "existence"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_EXISTENCE:I

    .line 4249
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "delivery_type"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DELIVERY_TYPE:I

    .line 4254
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSharableCount:I

    .line 4255
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSetAsCount:I

    .line 4256
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    .line 4261
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    .line 4262
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getDrmShareCount()V

    .line 4263
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getDrmSetAsCount()V

    .line 4264
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->createDrmOwnCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mCursor:Landroid/database/Cursor;

    .line 4265
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->registerObservers()V

    .line 4266
    return-void
.end method

.method private removeSingleImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 8
    .parameter "image"

    .prologue
    const/4 v4, 0x0

    .line 4512
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4513
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 4530
    :cond_0
    :goto_0
    return v4

    .line 4515
    :cond_1
    monitor-enter v0

    .line 4518
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getRow()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4523
    .local v2, moved:Z
    if-eqz v2, :cond_2

    .line 4524
    :try_start_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 4525
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

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4526
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Lcom/htc/opensense2/album/util/DrmManager;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 4527
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->onRemove()V

    .line 4529
    .end local v3           #u:Landroid/net/Uri;
    :cond_2
    monitor-exit v0

    .line 4530
    const/4 v4, 0x1

    goto :goto_0

    .line 4519
    .end local v2           #moved:Z
    :catch_0
    move-exception v1

    .line 4520
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

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4521
    monitor-exit v0

    goto :goto_0

    .line 4529
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
    .line 4590
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    .line 4591
    .local v0, ascending:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date_added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4590
    .end local v0           #ascending:Ljava/lang/String;
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method


# virtual methods
.method public checkThumbnail(Lcom/htc/opensense2/album/util/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 2
    .parameter "existingImage"
    .parameter "c"
    .parameter "i"

    .prologue
    .line 4438
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 4434
    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 4424
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createDrmOwnCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 4428
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1200()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 10
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
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4348
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "distinct"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v8

    const-string v3, "bucket_id"

    aput-object v3, v2, v9

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4359
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4360
    .local v7, hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4362
    :cond_0
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4363
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4364
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4367
    :cond_1
    return-object v7
.end method

.method public getDrmSetAsCount()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x3

    .line 4313
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4315
    .local v6, queryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "(existence=?"

    .line 4316
    .local v3, wheweClause:Ljava/lang/String;
    const-string v0, "exist"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4317
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and bucket_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4319
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4322
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIsFavorite:Z

    if-eqz v0, :cond_1

    .line 4323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and favorite=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4324
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4327
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and delivery_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4328
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4331
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drm query statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4332
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 4333
    .local v4, whereClauseArgs:[Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4334
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 4335
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBaseUri:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "existence"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, "delivery_type"

    aput-object v8, v2, v7

    const/4 v7, 0x2

    const-string v8, "favorite"

    aput-object v8, v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    .line 4338
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 4339
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSetAsCount:I

    .line 4340
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4341
    iput-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    .line 4343
    :cond_3
    return-void
.end method

.method public getDrmShareCount()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x3

    .line 4279
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4281
    .local v6, queryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "(existence=?"

    .line 4282
    .local v3, wheweClause:Ljava/lang/String;
    const-string v0, "exist"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4283
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and bucket_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4285
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4288
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIsFavorite:Z

    if-eqz v0, :cond_1

    .line 4289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and favorite=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4290
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4293
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and delivery_type=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4294
    const-string v0, "3"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4297
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drm query statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4298
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 4299
    .local v4, whereClauseArgs:[Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4300
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 4301
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBaseUri:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "existence"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, "delivery_type"

    aput-object v8, v2, v7

    const/4 v7, 0x2

    const-string v8, "favorite"

    aput-object v8, v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    .line 4304
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 4305
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSharableCount:I

    .line 4306
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4307
    iput-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->tmpCursor:Landroid/database/Cursor;

    .line 4309
    :cond_3
    return-void
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 14
    .parameter "i"

    .prologue
    .line 4443
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 4444
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_0

    const/4 v12, 0x0

    .line 4467
    :goto_0
    return-object v12

    .line 4445
    :cond_0
    monitor-enter v10

    .line 4448
    :try_start_0
    invoke-interface {v10, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 4452
    .local v13, moved:Z
    if-eqz v13, :cond_2

    .line 4454
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 4455
    .local v1, id:J
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4456
    .local v12, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v12, :cond_1

    .line 4457
    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v6, p0

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JI)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v12

    .line 4458
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4460
    :cond_1
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .line 4469
    .end local v1           #id:J
    .end local v12           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v13           #moved:Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4449
    :catch_0
    move-exception v11

    .line 4450
    .local v11, ex:Ljava/lang/Exception;
    const/4 v12, 0x0

    :try_start_3
    monitor-exit v10

    goto :goto_0

    .line 4461
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v13       #moved:Z
    :catch_1
    move-exception v11

    .line 4462
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

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4463
    const/4 v12, 0x0

    monitor-exit v10

    goto :goto_0

    .line 4466
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

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4467
    const/4 v12, 0x0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getSetAsCount()I
    .locals 1

    .prologue
    .line 4273
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSetAsCount:I

    return v0
.end method

.method public getSharableCount()I
    .locals 1

    .prologue
    .line 4269
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mSharableCount:I

    return v0
.end method

.method protected indexBucketName()I
    .locals 1

    .prologue
    .line 4585
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_BUCKET_NAME:I

    return v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 4572
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateAdded()I
    .locals 1

    .prologue
    .line 4583
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DATE_ADDED:I

    return v0
.end method

.method protected indexDateModified()I
    .locals 1

    .prologue
    .line 4584
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 4568
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDeliveryType()I
    .locals 1

    .prologue
    .line 4586
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_DELIVERY_TYPE:I

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 4569
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 4579
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 4571
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 4573
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 4574
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 4570
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 4575
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 4567
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 4576
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 4577
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 4580
    const/4 v0, -0x1

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 4578
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->INDEX_TITLE:I

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JI)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 8
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"

    .prologue
    .line 4563
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-object v6, p0

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/util/ImageManager$DrmImage;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    return-object v0
.end method

.method public removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 3
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    .line 4474
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIsFavorite:Z

    if-eqz v1, :cond_1

    .line 4475
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->removeFavoriteImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v0

    .line 4503
    :cond_0
    :goto_0
    return v0

    .line 4477
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4500
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->removeSingleImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 4502
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->requery()V

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 4535
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 4536
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 4543
    :goto_0
    return-void

    .line 4538
    :cond_0
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIsFavorite:Z

    if-eqz v1, :cond_1

    .line 4539
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->removeFavoriteImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    goto :goto_0

    .line 4542
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    goto :goto_0
.end method

.method public removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 5
    .parameter "images"

    .prologue
    .line 4547
    if-nez p1, :cond_1

    .line 4560
    :cond_0
    :goto_0
    return-void

    .line 4549
    :cond_1
    iget-boolean v4, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIsFavorite:Z

    if-eqz v4, :cond_2

    .line 4550
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->removeFavoriteImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0

    .line 4553
    :cond_2
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImage;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 4558
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-direct {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->removeSingleImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 4553
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected requery()V
    .locals 4

    .prologue
    .line 4598
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 4599
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4600
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 4601
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v0

    .line 4602
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

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4606
    .end local v0           #result:Z
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mCursorDeactivated:Z

    .line 4607
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getDrmShareCount()V

    .line 4608
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getDrmSetAsCount()V

    .line 4609
    return-void

    .line 4604
    :cond_1
    const-string v1, "ImageManager"

    const-string v2, "DrmImageList cursor is NULL"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4373
    const-string v0, "(existence=?"

    .line 4374
    .local v0, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and bucket_id=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4378
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    and-int/lit8 v2, v2, 0xe

    const/16 v3, 0xe

    if-eq v2, v3, :cond_4

    .line 4379
    const/4 v1, 0x0

    .line 4380
    .local v1, temp:Ljava/lang/String;
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 4381
    const-string v1, "delivery_type= \'1\'"

    .line 4383
    :cond_1
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 4384
    if-nez v1, :cond_6

    .line 4385
    const-string v1, "delivery_type= \'2\'"

    .line 4390
    :cond_2
    :goto_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mIncludeTypes:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 4391
    if-nez v1, :cond_7

    .line 4392
    const-string v1, "delivery_type= \'3\'"

    .line 4397
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4401
    .end local v1           #temp:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mWhereStatement:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 4402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mWhereStatement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4404
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4405
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drm query statement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4407
    return-object v0

    .line 4387
    .restart local v1       #temp:Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "delivery_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \'2\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4394
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "delivery_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= \'3\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 4411
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4412
    .local v1, queryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "exist"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4413
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4414
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4417
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 4418
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4419
    return-object v0
.end method
