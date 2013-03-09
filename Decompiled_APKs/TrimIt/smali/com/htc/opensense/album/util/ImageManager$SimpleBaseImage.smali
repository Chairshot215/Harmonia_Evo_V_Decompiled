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

    .prologue
    .line 5381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    .line 5519
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    return-void
.end method


# virtual methods
.method public commitChanges()V
    .locals 1

    .prologue
    .line 5401
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I
    .locals 5
    .parameter "another"

    .prologue
    .line 5511
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->getSortBase()J

    move-result-wide v2

    .line 5512
    .local v2, mySortBase:J
    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v0

    .line 5514
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
    .line 5381
    check-cast p1, Lcom/htc/opensense/album/util/ImageManager$IImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->compareTo(Lcom/htc/opensense/album/util/ImageManager$IImage;)I

    move-result v0

    return v0
.end method

.method public fileCorrupted()V
    .locals 1

    .prologue
    .line 5387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    .line 5388
    return-void
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 5405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 5409
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 5417
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 5421
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5429
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5449
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 5461
    const/4 v0, 0x0

    return v0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 5433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 5437
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 5441
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5425
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5453
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 5457
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSortBase()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    .line 5521
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 5522
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 5530
    :goto_0
    return-wide v0

    .line 5523
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 5526
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 5527
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->getDateModified()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 5528
    :cond_1
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 5529
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->getDateAdded()J

    move-result-wide v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    .line 5530
    :cond_2
    iget-wide v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->mSortBase:J

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5445
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 5465
    const/4 v0, 0x0

    return v0
.end method

.method public hasLatLong()Z
    .locals 1

    .prologue
    .line 5469
    const/4 v0, 0x0

    return v0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 5396
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 5477
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 5473
    const/4 v0, 0x1

    return v0
.end method

.method public onRemove()V
    .locals 1

    .prologue
    .line 5481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resetFileCorrupted()V
    .locals 1

    .prologue
    .line 5391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;->bCorrupt:Z

    .line 5392
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 5485
    const/4 v0, 0x0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 5489
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setIsPrivate(Z)V
    .locals 1
    .parameter "isPrivate"

    .prologue
    .line 5493
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 5497
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPicasaId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 5501
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 5504
    return-void
.end method

.method public thumbUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 5507
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
