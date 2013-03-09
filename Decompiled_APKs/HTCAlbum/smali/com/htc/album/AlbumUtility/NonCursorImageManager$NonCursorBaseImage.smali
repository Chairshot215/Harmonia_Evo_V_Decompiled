.class public Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
.super Ljava/lang/Object;
.source "NonCursorImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImage;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGallery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumUtility/NonCursorImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NonCursorBaseImage"
.end annotation


# instance fields
.field public mDataPath:Ljava/lang/String;

.field public mDegreesRetated:I

.field public mDisplayName:Ljava/lang/String;

.field public mIsCorrupt:Z

.field public mIsDrm:Z

.field public mMimeType:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/htc/album/AlbumUtility/NonCursorImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    iput-object p1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->this$0:Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDataPath:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDisplayName:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mMimeType:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mUri:Landroid/net/Uri;

    .line 67
    iput-boolean v1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsDrm:Z

    .line 68
    iput-boolean v1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsCorrupt:Z

    .line 69
    iput v1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDegreesRetated:I

    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public fileCorrupted()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "targetWidthOrHeight"

    .prologue
    .line 188
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement fullSizeBitmap !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;
    .locals 1
    .parameter "targetWidthOrHeight"

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 201
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement fullSizeImageData !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 208
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getBucketName !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .prologue
    .line 231
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateModified()J
    .locals 3

    .prologue
    .line 242
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getDateModified !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 3

    .prologue
    .line 224
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getDateTaken !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDegreesRetated:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getDescription !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 258
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getHeight !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 277
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 3

    .prologue
    .line 345
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getSize !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSortBase()J
    .locals 2

    .prologue
    .line 417
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getTitle !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 305
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement getWidth !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .locals 2

    .prologue
    .line 318
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 1
    .parameter "activity"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 137
    if-nez p2, :cond_0

    .line 173
    :cond_0
    return v0
.end method

.method public init(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 10
    .parameter "image"

    .prologue
    const/4 v6, 0x0

    .line 72
    if-nez p1, :cond_0

    .line 74
    sget-object v7, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "image == null !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return v6

    .line 81
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, strDataPath:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, strDisplayName:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, strMimeType:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 85
    .local v5, uri:Landroid/net/Uri;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v1

    .line 89
    .local v1, isCorrupt:Z
    if-nez v2, :cond_1

    .line 91
    sget-object v7, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "strDataPath == null !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v1           #isCorrupt:Z
    .end local v2           #strDataPath:Ljava/lang/String;
    .end local v3           #strDisplayName:Ljava/lang/String;
    .end local v4           #strMimeType:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 130
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0

    .line 95
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #isCorrupt:Z
    .restart local v2       #strDataPath:Ljava/lang/String;
    .restart local v3       #strDisplayName:Ljava/lang/String;
    .restart local v4       #strMimeType:Ljava/lang/String;
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_1
    if-nez v3, :cond_2

    .line 97
    sget-object v7, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "strDisplayName == null !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    if-nez v4, :cond_3

    .line 103
    sget-object v7, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "strMimeType == null !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    if-nez v5, :cond_4

    .line 109
    sget-object v7, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "uri == null !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_4
    iput-object v2, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDataPath:Ljava/lang/String;

    .line 115
    iput-object v3, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mDisplayName:Ljava/lang/String;

    .line 116
    iput-object v4, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mMimeType:Ljava/lang/String;

    .line 117
    iput-object v5, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mUri:Landroid/net/Uri;

    .line 118
    iput-boolean v1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsCorrupt:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public is3D()Z
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsCorrupt:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;->mIsDrm:Z

    return v0
.end method

.method public isGif()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public isInked()Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public isSharable()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 357
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement miniThumbBitmap !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemove()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public resetFileCorrupted()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 377
    return-void
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 541
    return-void
.end method

.method public setInked(I)V
    .locals 0
    .parameter "nInked"

    .prologue
    .line 458
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 0
    .parameter "isPrivate"

    .prologue
    .line 383
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 389
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 395
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 399
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement thumbBitmap !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 405
    sget-object v0, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/htc/album/AlbumUtility/NonCursorImageManager;->DEBUG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not imaplement thumbUri !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x0

    return-object v0
.end method
