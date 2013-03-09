.class public abstract Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImage;
.implements Lcom/htc/opensense2/album/sunny/IMediaDataGallery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleBaseImage"
.end annotation


# instance fields
.field protected bCorrupt:Z

.field protected mGifFrameCount:I

.field private mSortBase:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 5691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    .line 5832
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 5899
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    return-void
.end method


# virtual methods
.method public alreadyHasDisplayImageDimension()Z
    .locals 1

    .prologue
    .line 5772
    const/4 v0, 0x0

    return v0
.end method

.method public commitChanges()V
    .locals 1

    .prologue
    .line 5712
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 5
    .parameter "another"

    .prologue
    .line 5824
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getSortBase()J

    move-result-wide v2

    .line 5825
    .local v2, mySortBase:J
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v0

    .line 5827
    .local v0, anotherSortBase:J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 5691
    check-cast p1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->compareTo(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public fileCorrupted()V
    .locals 1

    .prologue
    .line 5698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    .line 5699
    return-void
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 5716
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 5720
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5724
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 5728
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 5937
    const/4 v0, 0x0

    return v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 5732
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 5922
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5740
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5850
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 5868
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5854
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 5930
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 5861
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 5945
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 5875
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5889
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 5896
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public getDisplayMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5882
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5760
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 5778
    const/4 v0, 0x0

    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 5744
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 5748
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 5752
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5953
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5941
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5736
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5764
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 5768
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSortBase()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    .line 5834
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 5835
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 5843
    :goto_0
    return-wide v0

    .line 5836
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 5839
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 5840
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDateModified()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 5841
    :cond_1
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 5842
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDateAdded()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 5843
    :cond_2
    iget-wide v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5756
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 5782
    const/4 v0, 0x0

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 5786
    const/4 v0, 0x0

    return v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 5949
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 5707
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 5904
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->isGif()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5905
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 5906
    new-instance v0, Landroid/webkit/GIFImageParser;

    invoke-direct {v0}, Landroid/webkit/GIFImageParser;-><init>()V

    .line 5907
    .local v0, parser:Landroid/webkit/GIFImageParser;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    .line 5908
    invoke-virtual {v0}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    .line 5910
    .end local v0           #parser:Landroid/webkit/GIFImageParser;
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->mGifFrameCount:I

    if-le v2, v1, :cond_1

    .line 5914
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 5790
    const/4 v0, 0x1

    return v0
.end method

.method public onRemove()V
    .locals 1

    .prologue
    .line 5794
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resetFileCorrupted()V
    .locals 1

    .prologue
    .line 5702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    .line 5703
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 5798
    const/4 v0, 0x0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 5802
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setDisplayImageDimension(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 5775
    return-void
.end method

.method public setIsPrivate(Z)V
    .locals 1
    .parameter "isPrivate"

    .prologue
    .line 5806
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 5810
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPicasaId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 5814
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 5817
    return-void
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5820
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
