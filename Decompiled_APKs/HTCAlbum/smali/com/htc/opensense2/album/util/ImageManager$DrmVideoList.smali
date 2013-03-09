.class Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;
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
    name = "DrmVideoList"
.end annotation


# instance fields
.field final INDEX_BOUNDARY_OFFSET:I

.field final INDEX_BUCKET_NAME:I

.field final INDEX_CONTENT_ID:I

.field final INDEX_DATA:I

.field final INDEX_DATE_ADDED:I

.field final INDEX_DELIVERY_TYPE:I

.field final INDEX_DISPLAYNAME:I

.field final INDEX_EXISTENCE:I

.field final INDEX_ID:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_OFFSET:I

.field final INDEX_SIZE:I

.field final INDEX_TITLE:I

.field mIncludeTypes:I

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
    .parameter "mediaType"
    .parameter "where"
    .parameter "isFavorite"

    .prologue
    .line 4805
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    .line 4806
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

    .line 4784
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_ID:I

    .line 4785
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_DATA:I

    .line 4786
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_size"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_SIZE:I

    .line 4787
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_DISPLAYNAME:I

    .line 4788
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mime_type"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_MIME_TYPE:I

    .line 4789
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_TITLE:I

    .line 4790
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_added"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_DATE_ADDED:I

    .line 4791
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucket_display_name"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_BUCKET_NAME:I

    .line 4792
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "existence"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_EXISTENCE:I

    .line 4793
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "delivery_type"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_DELIVERY_TYPE:I

    .line 4794
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_offset"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_OFFSET:I

    .line 4795
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_id"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_CONTENT_ID:I

    .line 4796
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_boundary_offset"

    #calls: Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager;->access$900([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_BOUNDARY_OFFSET:I

    .line 4801
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mSharableCount:I

    .line 4802
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mIncludeTypes:I

    .line 4807
    move/from16 v0, p7

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mIncludeTypes:I

    .line 4808
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getDrmShareCount()V

    .line 4809
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getDrmSetAsCount()V

    .line 4810
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->createDrmOwnCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mCursor:Landroid/database/Cursor;

    .line 4811
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->registerObservers()V

    .line 4812
    return-void
.end method

.method private removeSingleImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 8
    .parameter "image"

    .prologue
    const/4 v4, 0x0

    .line 4998
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4999
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 5015
    :goto_0
    return v4

    .line 5001
    :cond_0
    monitor-enter v0

    .line 5004
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getRow()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 5009
    .local v2, moved:Z
    if-eqz v2, :cond_1

    .line 5010
    :try_start_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 5011
    .local v3, u:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v3}, Lcom/htc/opensense2/album/util/DrmManager;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 5012
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->onRemove()V

    .line 5014
    .end local v3           #u:Landroid/net/Uri;
    :cond_1
    monitor-exit v0

    .line 5015
    const/4 v4, 0x1

    goto :goto_0

    .line 5005
    .end local v2           #moved:Z
    :catch_0
    move-exception v1

    .line 5006
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

    .line 5007
    monitor-exit v0

    goto :goto_0

    .line 5014
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
    .line 5078
    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    .line 5079
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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5078
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
    .line 4926
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 4922
    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 4912
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createDrmOwnCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 4916
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->access$1300()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDrmSetAsCount()V
    .locals 0

    .prologue
    .line 4854
    return-void
.end method

.method public getDrmShareCount()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x3

    .line 4821
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4823
    .local v6, queryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "(existence=?"

    .line 4824
    .local v3, wheweClause:Ljava/lang/String;
    const-string v0, "exist"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4825
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and bucket_id=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4827
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4830
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mIsFavorite:Z

    if-eqz v0, :cond_1

    .line 4831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and favorite=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4832
    const-string v0, "1"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4835
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

    .line 4836
    const-string v0, "3"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4838
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

    .line 4839
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 4840
    .local v4, whereClauseArgs:[Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4841
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    .line 4842
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mBaseUri:Landroid/net/Uri;

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

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->tmpCursor:Landroid/database/Cursor;

    .line 4845
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->tmpCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 4846
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->tmpCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mSharableCount:I

    .line 4847
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->tmpCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4848
    iput-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->tmpCursor:Landroid/database/Cursor;

    .line 4850
    :cond_3
    return-void
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 14
    .parameter "i"

    .prologue
    .line 4931
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 4932
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_0

    const/4 v12, 0x0

    .line 4955
    :goto_0
    return-object v12

    .line 4933
    :cond_0
    monitor-enter v10

    .line 4936
    :try_start_0
    invoke-interface {v10, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 4940
    .local v13, moved:Z
    if-eqz v13, :cond_2

    .line 4942
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 4943
    .local v1, id:J
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4944
    .local v12, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v12, :cond_1

    .line 4945
    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mContentResolver:Landroid/content/ContentResolver;

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v6, p0

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->make(JJLandroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$IImageList;JI)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v12

    .line 4946
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4948
    :cond_1
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .line 4957
    .end local v1           #id:J
    .end local v12           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v13           #moved:Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4937
    :catch_0
    move-exception v11

    .line 4938
    .local v11, ex:Ljava/lang/Exception;
    const/4 v12, 0x0

    :try_start_3
    monitor-exit v10

    goto :goto_0

    .line 4949
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v13       #moved:Z
    :catch_1
    move-exception v11

    .line 4950
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

    .line 4951
    const/4 v12, 0x0

    monitor-exit v10

    goto :goto_0

    .line 4954
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

    .line 4955
    const/4 v12, 0x0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getSetAsCount()I
    .locals 1

    .prologue
    .line 5100
    const/4 v0, 0x0

    return v0
.end method

.method public getSharableCount()I
    .locals 1

    .prologue
    .line 4815
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mSharableCount:I

    return v0
.end method

.method protected indexBoundary()I
    .locals 1

    .prologue
    .line 5075
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_BOUNDARY_OFFSET:I

    return v0
.end method

.method protected indexBucketName()I
    .locals 1

    .prologue
    .line 5071
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_BUCKET_NAME:I

    return v0
.end method

.method protected indexContentId()I
    .locals 1

    .prologue
    .line 5074
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_CONTENT_ID:I

    return v0
.end method

.method protected indexContentOffset()I
    .locals 1

    .prologue
    .line 5073
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_OFFSET:I

    return v0
.end method

.method protected indexData()I
    .locals 1

    .prologue
    .line 5058
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateAdded()I
    .locals 1

    .prologue
    .line 5069
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_DATE_ADDED:I

    return v0
.end method

.method protected indexDateModified()I
    .locals 1

    .prologue
    .line 5070
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    .prologue
    .line 5054
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDeliveryType()I
    .locals 1

    .prologue
    .line 5072
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_DELIVERY_TYPE:I

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    .prologue
    .line 5055
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    .prologue
    .line 5065
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .locals 1

    .prologue
    .line 5057
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    .prologue
    .line 5059
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    .prologue
    .line 5060
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    .prologue
    .line 5056
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    .prologue
    .line 5061
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    .prologue
    .line 5053
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    .prologue
    .line 5062
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    .prologue
    .line 5063
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    .prologue
    .line 5066
    const/4 v0, -0x1

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    .prologue
    .line 5064
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->INDEX_TITLE:I

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
    .line 5049
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;

    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    iget-object v4, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-object v6, p0

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;-><init>(Lcom/htc/opensense2/album/util/ImageManager;JLandroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;I)V

    return-object v0
.end method

.method public removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 3
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    .line 4962
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mIsFavorite:Z

    if-eqz v1, :cond_1

    .line 4963
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->removeFavoriteImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v0

    .line 4989
    :cond_0
    :goto_0
    return v0

    .line 4965
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4986
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->removeSingleImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 4988
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->requery()V

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 5020
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 5021
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 5029
    :goto_0
    return-void

    .line 5024
    :cond_0
    iget-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mIsFavorite:Z

    if-eqz v1, :cond_1

    .line 5025
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->removeFavoriteImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    goto :goto_0

    .line 5028
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    goto :goto_0
.end method

.method public removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 5
    .parameter "images"

    .prologue
    .line 5033
    if-nez p1, :cond_1

    .line 5046
    :cond_0
    :goto_0
    return-void

    .line 5035
    :cond_1
    iget-boolean v4, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mIsFavorite:Z

    if-eqz v4, :cond_2

    .line 5036
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->removeFavoriteImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    goto :goto_0

    .line 5039
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

    .line 5044
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-direct {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->removeSingleImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 5039
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected requery()V
    .locals 4

    .prologue
    .line 5086
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 5087
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 5088
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 5089
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v0

    .line 5090
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

    .line 5094
    .end local v0           #result:Z
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mCursorDeactivated:Z

    .line 5095
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getDrmShareCount()V

    .line 5096
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getDrmSetAsCount()V

    .line 5097
    return-void

    .line 5092
    :cond_1
    const-string v1, "ImageManager"

    const-string v2, "DrmVideoList cursor is null"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4859
    const-string v0, "(existence=?"

    .line 4860
    .local v0, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and bucket_id=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4864
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mIncludeTypes:I

    and-int/lit16 v2, v2, 0xe0

    const/16 v3, 0xe0

    if-eq v2, v3, :cond_4

    .line 4865
    const/4 v1, 0x0

    .line 4866
    .local v1, temp:Ljava/lang/String;
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mIncludeTypes:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    .line 4867
    const-string v1, "delivery_type= \'1\'"

    .line 4869
    :cond_1
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mIncludeTypes:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2

    .line 4870
    if-nez v1, :cond_6

    .line 4871
    const-string v1, "delivery_type= \'2\'"

    .line 4876
    :cond_2
    :goto_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mIncludeTypes:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    .line 4877
    if-nez v1, :cond_7

    .line 4878
    const-string v1, "delivery_type= \'3\'"

    .line 4883
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

    .line 4887
    .end local v1           #temp:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mWhereStatement:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 4888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mWhereStatement:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4891
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

    .line 4892
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

    .line 4894
    return-object v0

    .line 4873
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

    .line 4880
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
    .line 4898
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4899
    .local v1, queryArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "exist"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4900
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mBucketId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4901
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4904
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 4905
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4906
    return-object v0
.end method
