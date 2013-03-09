.class abstract Lcom/android/camera/ImageManager$BaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseImage"
.end annotation


# instance fields
.field protected mContainer:Lcom/android/camera/ImageManager$BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursorRow:I

.field protected mExifData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:J

.field protected mMiniThumbMagic:J

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImage;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iput-wide p2, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    iput-wide p4, p0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    iput-object p7, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iput p8, p0, Lcom/android/camera/ImageManager$BaseImage;->mCursorRow:I

    return-void
.end method

.method private makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "r"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/android/camera/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    throw v2

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public commitChanges()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImageManager"

    const-string v2, "HoneyComb Porting check point"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ImageManager"

    const-string v2, "commitChanges error due to HoneyComb porting"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;Lcom/android/camera/ImageManager$StoreImageCallback;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;
    .locals 6

    new-instance v0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;-><init>(Lcom/android/camera/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[BLcom/android/camera/ImageManager$StoreImageCallback;)V

    return-object v0
.end method

.method abstract compressionType()Landroid/graphics/Bitmap$CompressFormat;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/android/camera/ImageManager$Image;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/android/camera/ImageManager$Image;

    invoke-virtual {p1}, Lcom/android/camera/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-wide v3, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCreateBitmap for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;-><init>(Lcom/android/camera/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-wide v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Lcom/android/camera/ImageManager$IImageList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    return-object v0
.end method

.method getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDateTaken()J
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getDegreesRotated()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDescription()I

    move-result v0

    if-gez v0, :cond_3

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    :try_start_1
    const-string v9, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    throw v0

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    monitor-enter v6

    :try_start_3
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDescription()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_4
    monitor-exit v6

    move-object v9, v7

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v0

    if-gez v0, :cond_4

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v0

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move-object v8, v7

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getHeight()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    throw v4

    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public getIsPrivate()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$BaseImageList;->indexPrivate()I

    move-result v3

    if-gez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v3}, Lcom/android/camera/ImageManager$BaseImageList;->indexPrivate()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_1
    :goto_1
    monitor-exit v0

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getLatitude()D
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLongitude()D
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    if-gez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMimeType()I

    move-result v0

    if-gez v0, :cond_3

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    :try_start_1
    const-string v9, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    throw v0

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    monitor-enter v6

    :try_start_3
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMimeType()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    monitor-exit v6

    move-object v9, v8

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mCursorRow:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    iget-wide v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_1
    throw v4

    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public hasLatLong()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public imageId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 12

    const/4 v9, 0x0

    :try_start_0
    iget-wide v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    iget-wide v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-eqz v0, :cond_0

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v10

    invoke-virtual {v0, p0, v3, v10}, Lcom/android/camera/ImageManager$BaseImageList;->checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after computing thumbnail dbMagic is "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/ImageManager;->access$000()[B

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-wide v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$000()[B

    move-result-object v3

    #calls: Lcom/android/camera/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->access$100(Lcom/android/camera/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v11

    invoke-virtual {v0, p0, v3, v11}, Lcom/android/camera/ImageManager$BaseImageList;->checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$000()[B

    move-result-object v3

    #calls: Lcom/android/camera/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B
    invoke-static/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->access$100(Lcom/android/camera/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v7

    :cond_2
    if-nez v7, :cond_3

    const-string v0, "ImageManager"

    const-string v3, "unable to get miniThumbBitmap, data is null"

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v7, :cond_5

    const/4 v0, 0x0

    array-length v3, v7

    invoke-static {v7, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v0, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "couldn\'t decode byte array for mini thumb, length was "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v11, v7

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    monitor-exit v10

    :goto_0
    return-object v6

    :cond_5
    monitor-exit v10

    move-object v6, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v8

    const-string v0, "ImageManager"

    const-string v3, "miniThumbBitmap got exception"

    invoke-static {v0, v3, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v9

    goto :goto_0
.end method

.method public onRemove()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "picasa_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storing picasaid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageManager"

    const-string v1, "HoneyComb porting check point"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageManager"

    const-string v1, "updateString and commitUpdates error due to HoneyComb porting"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated image with picasa id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "thumb"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
