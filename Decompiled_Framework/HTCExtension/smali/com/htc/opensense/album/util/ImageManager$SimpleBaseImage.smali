.class public abstract Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleBaseImage"
.end annotation


# instance fields
.field protected bCorrupt:Z

.field private mSortBase:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    return-void
.end method


# virtual methods
.method public commitChanges()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I
    .locals 5

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->getSortBase()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v0

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

    check-cast p1, Lcom/htc/opensense/album/util/ImageManager$IImage;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public fileCorrupted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    return-void
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fullSizeImageId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLatitude()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSortBase()J
    .locals 8

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->getDateModified()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    :cond_1
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->getDateAdded()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    :cond_2
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRemove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resetFileCorrupted()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setIsPrivate(Z)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPicasaId(J)V
    .locals 0

    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
