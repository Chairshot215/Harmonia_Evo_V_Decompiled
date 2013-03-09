.class Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;
.super Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;
.source "ThreeDFlattenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ThreeDFlattenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PartialIImageImpl"
.end annotation


# instance fields
.field public dataPath:Ljava/lang/String;

.field public degreesRetated:I

.field public displayName:Ljava/lang/String;

.field public imageUri:Landroid/net/Uri;

.field public isDrm:Z

.field public mimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/album/helper/ThreeDFlattenManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 639
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-direct {p0, p1}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;-><init>(Lcom/htc/album/helper/ThreeDFlattenManager;)V

    .line 631
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 632
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->resultMimeType:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$500(Lcom/htc/album/helper/ThreeDFlattenManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 634
    iput-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 635
    iput-boolean v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->isDrm:Z

    .line 636
    iput v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->degreesRetated:I

    .line 641
    return-void
.end method


# virtual methods
.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->imageUri:Landroid/net/Uri;

    .line 658
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 681
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->getDataPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->degreesRetated:I

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 740
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 735
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->displayName:Ljava/lang/String;

    .line 649
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 765
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->dataPath:Ljava/lang/String;

    .line 700
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->getDataPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaSourceType()I
    .locals 1

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->mimeType:Ljava/lang/String;

    .line 667
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/htc/album/helper/ThreeDFlattenManager$EmptyIImageImpl;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public is3D()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$PartialIImageImpl;->isDrm:Z

    return v0
.end method

.method public setInked(I)V
    .locals 0
    .parameter "nInked"

    .prologue
    .line 706
    return-void
.end method
