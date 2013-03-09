.class public Lcom/htc/album/addons/SingleCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "SingleCollection.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mImageUri:Landroid/net/Uri;

.field mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "imageUri"
    .parameter "mime"

    .prologue
    const/4 v3, 0x0

    .line 34
    const-string v0, "com.htc.HTCAlbum.SINGLE"

    const-string v1, "com.htc.HTCAlbum.SINGLE"

    const-string v2, "com.htc.HTCAlbum.SINGLE"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object v3, p0, Lcom/htc/album/addons/SingleCollection;->mImageUri:Landroid/net/Uri;

    .line 30
    iput-object v3, p0, Lcom/htc/album/addons/SingleCollection;->mMimeType:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/htc/album/addons/SingleCollection;->mImageUri:Landroid/net/Uri;

    .line 37
    iput-object p3, p0, Lcom/htc/album/addons/SingleCollection;->mMimeType:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 8
    .parameter "context"
    .parameter "extras"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 58
    iget-object v0, p0, Lcom/htc/album/addons/SingleCollection;->mImageUri:Landroid/net/Uri;

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 59
    .local v7, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v7, :cond_0

    .line 61
    invoke-interface {v7, v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    .line 62
    .local v6, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v6, :cond_0

    instance-of v0, v6, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    if-eqz v0, :cond_0

    .line 64
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    .end local v6           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v0, p0, Lcom/htc/album/addons/SingleCollection;->mMimeType:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->setMimeType(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-object v7
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "givenName"

    .prologue
    .line 47
    iput-object p2, p0, Lcom/htc/album/addons/SingleCollection;->mDisplayName:Ljava/lang/String;

    .line 48
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/album/addons/SingleCollection;->mSupportedMediaTypes:I

    .line 49
    return-void
.end method
