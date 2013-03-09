.class public Lcom/htc/album/TabPluginDevice/FolderImage;
.super Lcom/htc/album/modules/collection/SimpleImage;
.source "FolderImage.java"

# interfaces
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGallery;


# direct methods
.method public constructor <init>(Lcom/htc/album/modules/collection/Collection;Z)V
    .locals 0
    .parameter "container"
    .parameter "DES"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/collection/SimpleImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mDateModified:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mDegreeRotated:I

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
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
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mFileSize:J

    return-wide v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mIsDrm:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/FolderImage;->mIsVideo:Z

    return v0
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 127
    return-void
.end method
