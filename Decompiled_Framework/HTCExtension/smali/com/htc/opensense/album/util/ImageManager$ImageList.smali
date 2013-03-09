.class Lcom/htc/opensense/album/util/ImageManager$ImageList;
.super Lcom/htc/opensense/album/util/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageList"
.end annotation


# instance fields
.field final INDEX_BUCKET_DISPLAY_NAME:I

.field final INDEX_DATA:I

.field final INDEX_DATE_ADDED:I

.field final INDEX_DATE_MODIFIED:I

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

.field private mFilterAlbumArt:Z

.field mInputStreamBuffer:[B

.field mIsRegistered:Z

.field mTempStorage:[B

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;Z)V
    .locals 10

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v1 .. v9}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_ID:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_DATA:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mime_type"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "datetaken"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "mini_thumb_magic"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_MINI_THUMB_MAGIC:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "orientation"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_ORIENTATION:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_added"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_DATE_ADDED:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucket_display_name"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_BUCKET_DISPLAY_NAME:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_modified"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_DATE_MODIFIED:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_THUMB_ID:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_id"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_THUMB_IMAGE_ID:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_THUMB_WIDTH:I

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "height"

    #calls: Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$800([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_THUMB_HEIGHT:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mIsRegistered:Z

    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mInputStreamBuffer:[B

    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mTempStorage:[B

    iput-object p4, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    move/from16 v0, p6

    iput v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mSort:I

    iput-object p3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mFilterAlbumArt:Z

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create image cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->initUpdateRunnable()V

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->initContentObserver()V

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->initDataSetObserver()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->registerObservers()V

    goto :goto_0
.end method

.method static synthetic access$900(Lcom/htc/opensense/album/util/ImageManager$ImageList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private initContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$ImageList$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/album/util/ImageManager$ImageList$3;-><init>(Lcom/htc/opensense/album/util/ImageManager$ImageList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method private initDataSetObserver()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$ImageList$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList$2;-><init>(Lcom/htc/opensense/album/util/ImageManager$ImageList;)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_0
.end method

.method private initUpdateRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mUpdateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$ImageList$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList$1;-><init>(Lcom/htc/opensense/album/util/ImageManager$ImageList;)V

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mUpdateRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[makeInputStream] Fail to openFileDescriptor, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[makeInputStream] Null exception to openFileDescriptor, uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sortOrder()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mSort:I

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
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mIsRegistered:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mIsRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->activate()V

    return-void
.end method

.method protected activateCursor()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->activateCursor()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->registerObservers()V

    return-void
.end method

.method public closeCursor()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->closeCursor()V

    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .locals 7

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$700()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public deactivate()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->deactivate()V

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->unregisterObservers()V

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

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

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

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

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

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageList"

    return-object v0
.end method

.method protected indexBucketName()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_BUCKET_DISPLAY_NAME:I

    return v0
.end method

.method protected indexData()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateAdded()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_DATE_ADDED:I

    return v0
.end method

.method protected indexDateModified()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_DATE_MODIFIED:I

    return v0
.end method

.method protected indexDateTaken()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

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

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_ID:I

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

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_MINI_THUMB_MAGIC:I

    return v0
.end method

.method protected indexOrientation()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_ORIENTATION:I

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

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->INDEX_THUMB_ID:I

    return v0
.end method

.method protected indexTitle()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$IImageList;JII)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 10

    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$Image;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    iget-object v6, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p0

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense/album/util/ImageManager$Image;-><init>(Lcom/htc/opensense/album/util/ImageManager;JJLandroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$BaseImageList;II)V

    return-object v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 18

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-nez p3, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object p3

    :cond_0
    if-nez p3, :cond_1

    const/4 v15, 0x0

    :goto_0
    return-object v15

    :cond_1
    if-nez p4, :cond_2

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 p4, v10

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v15, 0x1

    move-object/from16 v0, p4

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v15, -0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_5

    const/4 v15, 0x1

    move-object/from16 v0, p4

    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v15, 0x0

    move-object/from16 v0, p4

    invoke-static {v5, v15, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p4

    iget-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v15, :cond_3

    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/ImageManager;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v15

    move-object/from16 v0, p4

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v15, 0x0

    move-object/from16 v0, p4

    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p4

    iput-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    move-object/from16 v0, p4

    iput-object v15, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v11

    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-static {v5, v15, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    if-nez v2, :cond_6

    const-string v15, "ImageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "not support format"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-eqz v2, :cond_7

    :cond_7
    move-object v15, v2

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string v15, "ImageManager"

    const-string v16, "out of memory"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v15, "ImageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "got io exception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method protected final registerObservers()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mIsRegistered:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mUpdateRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->initUpdateRunnable()V

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->initContentObserver()V

    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->initDataSetObserver()V

    :cond_4
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mIsRegistered:Z

    goto :goto_0
.end method

.method public startRequery()Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageList;->requery()V

    const/4 v0, 0x0

    return v0
.end method

.method protected whereClause()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageList;->mFilterAlbumArt:Z

    #calls: Lcom/htc/opensense/album/util/ImageManager;->getWhereClause(ZZ)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageManager;->access$1000(ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mWhereStatement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and (bucket_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
