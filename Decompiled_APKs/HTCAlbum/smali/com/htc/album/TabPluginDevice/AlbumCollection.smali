.class public Lcom/htc/album/TabPluginDevice/AlbumCollection;
.super Lcom/htc/album/modules/collection/Collection;
.source "AlbumCollection.java"

# interfaces
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGalleryFolder;


# static fields
.field public static final FOLDER_DATE_TIME:Ljava/lang/String; = "FOLDER_DATE_TIME"

.field public static final FOLDER_NAME:Ljava/lang/String; = "FOLDER_NAME"

.field private static final LOG_TAG:Ljava/lang/String; = "AlbumCollection"

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected mSubList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/FolderImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/htc/album/modules/collection/Collection;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "bucketId"
    .parameter "displayName"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/modules/collection/Collection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public getDateModified()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    return-wide v0
.end method

.method public getDateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 158
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 4

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, nSourceId:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mBucketId:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->isCustomerSmartFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mBucketId:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->getCustomerFolderResourceId(Ljava/lang/String;)I

    move-result v0

    .line 61
    :cond_0
    const-string v1, "AlbumCollection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumCollection][getMediaResourceId]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, nSourceType:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mBucketId:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->isCustomerSmartFolder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mBucketId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/Customizable/CustAlbumCollection;->getCustomerSourceType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 84
    :cond_0
    const-string v1, "AlbumCollection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumCollection][getMediaSourceType]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/FolderImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    check-cast v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mSubList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    return-wide v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    return v0
.end method

.method protected onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJ)Lcom/htc/album/modules/collection/SimpleImage;
    .locals 9
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "dateModified"
    .parameter "degree"
    .parameter "mediaType"
    .parameter "fileSize"

    .prologue
    .line 48
    new-instance v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/AlbumCollection;->mShowLatest:Z

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .local v0, image:Lcom/htc/album/TabPluginDevice/FolderImage;
    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-wide/from16 v7, p7

    .line 49
    invoke-virtual/range {v0 .. v8}, Lcom/htc/album/TabPluginDevice/FolderImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJ)V

    .line 50
    return-object v0
.end method
