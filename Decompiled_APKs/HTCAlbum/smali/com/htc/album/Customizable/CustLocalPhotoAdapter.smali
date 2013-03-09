.class public Lcom/htc/album/Customizable/CustLocalPhotoAdapter;
.super Ljava/lang/Object;
.source "CustLocalPhotoAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalIImageList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 2
    .parameter "context"
    .parameter "nMediaType"
    .parameter "szCategory"
    .parameter "folderType"
    .parameter "szTypeFilder"
    .parameter "objExtra"

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez p5, :cond_1

    .line 22
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 29
    .end local p5
    :cond_0
    :goto_0
    return-object v0

    .line 26
    .restart local p5
    :cond_1
    instance-of v1, p5, [I

    if-eqz v1, :cond_0

    .line 27
    check-cast p5, [I

    .end local p5
    check-cast p5, [I

    invoke-static {p0, p5}, Lcom/htc/opensense2/album/util/ImageManager;->makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_0
.end method
