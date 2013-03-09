.class Lcom/android/camera/ImageManager$SingleImageList;
.super Lcom/android/camera/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$SingleImageList$UriImage;
    }
.end annotation


# instance fields
.field final INDEX_ID:I

.field private final SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mSingleImage:Lcom/android/camera/ImageManager$IImage;

.field private mUri:Landroid/net/Uri;

.field private mbShareAndDelete:Z

.field private mbViewSingleImage:Z

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/android/camera/ImageManager$SingleImageList;->this$0:Lcom/android/camera/ImageManager;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->INDEX_ID:I

    iput-object p2, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    new-instance v0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;-><init>(Lcom/android/camera/ImageManager$SingleImageList;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILandroid/net/Uri;Z)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/android/camera/ImageManager$SingleImageList;->this$0:Lcom/android/camera/ImageManager;

    if-eqz p8, :cond_1

    move-object v1, p2

    :goto_0
    if-eqz p8, :cond_2

    move-object v3, p4

    :goto_1
    if-eqz p8, :cond_3

    move v4, p6

    :goto_2
    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->INDEX_ID:I

    iput-object p3, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p8, :cond_4

    :goto_3
    iput-object p7, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    new-instance v0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;-><init>(Lcom/android/camera/ImageManager$SingleImageList;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    if-nez p8, :cond_5

    :cond_0
    return-void

    :cond_1
    move-object v1, v5

    goto :goto_0

    :cond_2
    move-object v3, p7

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move-object p7, p4

    goto :goto_3

    :cond_5
    iput-boolean v6, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbViewSingleImage:Z

    iput-boolean p8, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbShareAndDelete:Z

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create image cursor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ImageManager$SingleImageList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbViewSingleImage:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ImageManager$SingleImageList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbShareAndDelete:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private makeInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList;->SINGLE_IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingleImageList createCursor c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public deactivate()V
    .locals 0

    return-void
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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .locals 2

    iget-boolean v1, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbViewSingleImage:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/ImageManager$SingleImageList;->mbShareAndDelete:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$SingleImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageWithId(J)Lcom/android/camera/ImageManager$IImage;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected indexData()I
    .locals 1

    const/4 v0, -0x1

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

    const/4 v0, -0x1

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

    const/4 v0, -0x1

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

    const/4 v0, -0x1

    return v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p4, v2

    :cond_0
    const/4 v4, 0x1

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #calls: Lcom/android/camera/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    invoke-static {p4, p1}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v4

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v4, v6, :cond_1

    const/4 v4, 0x1

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :cond_2
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "C: got bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with sampleSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got io exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SingleImageList.removeImageAt before c.getCount(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ImageManager$SingleImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/ImageManager$SingleImageList;->mSingleImage:Lcom/android/camera/ImageManager$IImage;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList;->requery()V

    :cond_0
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SingleImageList.removeImageAt after c.getCount(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 1

    const-string v0, "(_data=?)"

    return-object v0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    return-object v2
.end method
