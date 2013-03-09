.class public Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;
.super Ljava/lang/Object;
.source "ScaladoLib2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ScaladoLib2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumImage"
.end annotation


# instance fields
.field public b:Landroid/graphics/Bitmap;

.field public bCorrupt:Z

.field public bDrm:Z

.field public bGif:Z

.field public bOnline:Z

.field public bOtherDecoder:Z

.field public bVideo:Z

.field public degree:I

.field public drmType:I

.field public gifFrame:I

.field public height:I

.field public index:I

.field public mNative:I

.field public mime:Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "ScaladoLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->mNative:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/util/ScaladoLib2;->sInstance()Lcom/htc/opensense/album/util/ScaladoLib2;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->mNative:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/ScaladoLib2;->Release(I)V

    :cond_1
    iput-object v3, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->mime:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->uri:Landroid/net/Uri;

    return-void
.end method

.method public setInfo(ILjava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    iput p1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->index:I

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bVideo:Z

    iput-object p2, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->mime:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->uri:Landroid/net/Uri;

    iput p3, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->degree:I

    iput-boolean v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bDrm:Z

    iput v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->drmType:I

    iput v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->gifFrame:I

    return-void
.end method

.method public setInfo(Lcom/htc/opensense/album/util/ImageManager$IImage;I)V
    .locals 2

    iput p2, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->index:I

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->isVideo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bVideo:Z

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->mime:Ljava/lang/String;

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->uri:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->degree:I

    invoke-interface {p1}, Lcom/htc/opensense/album/util/ImageManager$IImage;->isDrm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bDrm:Z

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bDrm:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->drmType:I

    iget-object v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->mime:Ljava/lang/String;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;

    invoke-virtual {p1}, Lcom/htc/opensense/album/util/ImageManager$DrmMedia;->getFrameCount()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->gifFrame:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->degree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bDrm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bDrm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bGif="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bGif:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gifFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->gifFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bOtherDecoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->bOtherDecoder:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/album/util/ScaladoLib2$AlbumImage;->mNative:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
