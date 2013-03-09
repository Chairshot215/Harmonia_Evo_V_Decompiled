.class Lcom/android/camera/ImageManager$SingleImageList$UriImage;
.super Lcom/android/camera/ImageManager$SimpleBaseImage;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager$SingleImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UriImage"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageManager$SingleImageList;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$SingleImageList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-direct {p0}, Lcom/android/camera/ImageManager$SimpleBaseImage;-><init>()V

    return-void
.end method

.method private snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    throw v3

    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    #calls: Lcom/android/camera/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    invoke-static {v2, p1}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v5, v7, :cond_0

    const/4 v5, 0x1

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "B: got bitmap "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with sampleSize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got exception decoding bitmap "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inputStream is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;-><init>(Lcom/android/camera/ImageManager$SingleImageList$UriImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mbViewSingleImage:Z
    invoke-static {v4}, Lcom/android/camera/ImageManager$SingleImageList;->access$1000(Lcom/android/camera/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mbShareAndDelete:Z
    invoke-static {v4}, Lcom/android/camera/ImageManager$SingleImageList;->access$1100(Lcom/android/camera/ImageManager$SingleImageList;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$SingleImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    monitor-enter v0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    iget-object v3, v3, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    iget v4, v4, Lcom/android/camera/ImageManager$SingleImageList;->INDEX_ID:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    monitor-exit v0

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getInputStream()Ljava/io/InputStream;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$900(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method getPFD()Landroid/os/ParcelFileDescriptor;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/camera/ImageManager$SingleImageList;->access$900(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    #getter for: Lcom/android/camera/ImageManager$SingleImageList;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/camera/ImageManager$SingleImageList;->access$800(Lcom/android/camera/ImageManager$SingleImageList;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public imageId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    const/16 v2, 0x140

    invoke-virtual {p0, v2}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f80

    const/high16 v3, 0x43a0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method
