.class Lcom/android/camera/ImageManager$ImageList;
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
    name = "ImageList"
.end annotation


# instance fields
.field final INDEX_DATA:I

.field final INDEX_DATE_TAKEN:I

.field final INDEX_ID:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_MINI_THUMB_MAGIC:I

.field final INDEX_ORIENTATION:I

.field final INDEX_THUMB_HEIGHT:I

.field final INDEX_THUMB_ID:I

.field final INDEX_THUMB_IMAGE_ID:I

.field final INDEX_THUMB_WIDTH:I

.field mContentObserver:Landroid/database/ContentObserver;

.field mDataSetObserver:Landroid/database/DataSetObserver;

.field mInputStreamBuffer:[B

.field mIsRegistered:Z

.field mTempStorage:[B

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 7

    const/16 v6, 0x4000

    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageList;->this$0:Lcom/android/camera/ImageManager;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ID:I

    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATA:I

    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime_type"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "datetaken"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "mini_thumb_magic"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MINI_THUMB_MAGIC:I

    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "orientation"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ORIENTATION:I

    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_ID:I

    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_id"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_IMAGE_ID:I

    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_WIDTH:I

    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    #calls: Lcom/android/camera/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_HEIGHT:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mInputStreamBuffer:[B

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mTempStorage:[B

    iput-object p4, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    iput p6, p0, Lcom/android/camera/ImageManager$BaseImageList;->mSort:I

    iput-object p7, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->createCursor()Landroid/database/Cursor;

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

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    const-string v1, "ImageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " got cursor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/ImageManager$ImageList$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera/ImageManager$ImageList$1;-><init>(Lcom/android/camera/ImageManager$ImageList;Landroid/os/Handler;Lcom/android/camera/ImageManager;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/camera/ImageManager$ImageList$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ImageManager$ImageList$2;-><init>(Lcom/android/camera/ImageManager$ImageList;Lcom/android/camera/ImageManager;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->registerObservers()V

    return-void

    :cond_1
    const-string v0, "-1"

    goto :goto_0
.end method

.method private getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/android/camera/ImageManager$DataLocation;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;II)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7, p1}, Lcom/android/camera/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v6

    invoke-interface {v7}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lcom/android/camera/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
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

.method private registerObservers()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

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

    const-string v2, "datetaken"

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

    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method

.method private unregisterObservers()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    iput-object v2, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/ImageManager$BaseImageList;->activate()V

    return-void
.end method

.method protected activateCursor()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/ImageManager$BaseImageList;->activateCursor()V

    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->registerObservers()V

    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-string v1, "ImageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCursor got cursor with count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v6, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public deactivate()V
    .locals 1

    invoke-super {p0}, Lcom/android/camera/ImageManager$BaseImageList;->deactivate()V

    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->unregisterObservers()V

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    :cond_0
    return-void
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

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

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

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    return-object v7
.end method

.method protected indexData()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

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

    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ID:I

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

    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MINI_THUMB_MAGIC:I

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ORIENTATION:I

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

    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_ID:I

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JII)Lcom/android/camera/ImageManager$IImage;
    .locals 10

    new-instance v0, Lcom/android/camera/ImageManager$Image;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->this$0:Lcom/android/camera/ImageManager;

    iget-object v6, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p0

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ImageManager$Image;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;II)V

    return-object v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/ImageManager$ImageList;->makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    :cond_0
    if-nez p3, :cond_2

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    if-nez p4, :cond_3

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p4, v3

    :cond_3
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v5, 0x1

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eq p1, v6, :cond_4

    const/4 v5, 0x1

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x0

    invoke-static {v2, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_1

    iget v5, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v6, :cond_1

    iget v5, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v5, v6, :cond_1

    #calls: Lcom/android/camera/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    invoke-static {p4, p1}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v5

    iput v5, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-static {v2, v5, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not support format"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeBitmap b W = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", H =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v4, v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got io exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method makeBitmapFromVendor(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeBitmapFromVendor uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->indexData()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->indexMiniThumbId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/android/camera/ImageManager$ImageList;->makeBitmapFromVendor(Ljava/lang/String;IJ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(mime_type=? or mime_type=?) and bucket_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(mime_type=? or mime_type=?)"

    goto :goto_0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/ImageManager;->access$400()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
