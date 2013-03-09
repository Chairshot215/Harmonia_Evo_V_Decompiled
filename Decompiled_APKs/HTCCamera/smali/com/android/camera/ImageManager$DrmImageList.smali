.class Lcom/android/camera/ImageManager$DrmImageList;
.super Lcom/android/camera/ImageManager$ImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$DrmImageList$DrmImage;
    }
.end annotation


# instance fields
.field private final DRM_IMAGE_PROJECTION:[Ljava/lang/String;

.field final INDEX_DATA:I

.field final INDEX_ID:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_TITLE:I

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 8

    iput-object p1, p0, Lcom/android/camera/ImageManager$DrmImageList;->this$0:Lcom/android/camera/ImageManager;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->INDEX_ID:I

    iget-object v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_data"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->INDEX_DATA:I

    iget-object v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "mime_type"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->INDEX_MIME_TYPE:I

    iget-object v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "title"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->INDEX_TITLE:I

    return-void
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, " ASC"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method


# virtual methods
.method public checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 0

    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/ImageManager$DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/ImageManager$DrmImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .locals 14

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$DrmImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    invoke-interface {v10, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_1

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ImageManager$IImage;

    if-nez v12, :cond_0

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v6, p0

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/ImageManager$DrmImageList;->make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JI)Lcom/android/camera/ImageManager$IImage;

    move-result-object v12

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :try_start_2
    monitor-exit v10

    :goto_0
    return-object v12

    :catch_0
    move-exception v11

    const/4 v12, 0x0

    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v11

    :try_start_3
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

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    monitor-exit v10

    goto :goto_0

    :cond_1
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

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected indexData()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected indexDescription()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->INDEX_TITLE:I

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JI)Lcom/android/camera/ImageManager$IImage;
    .locals 7

    new-instance v0, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p0

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;-><init>(Lcom/android/camera/ImageManager$DrmImageList;JLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V

    return-object v0
.end method
