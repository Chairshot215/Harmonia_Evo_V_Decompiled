.class public Lcom/jme3/texture/plugins/AndroidImageLoader;
.super Ljava/lang/Object;
.source "AndroidImageLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 7
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v2, Lcom/jme3/asset/AndroidImageInfo;

    invoke-direct {v2, p1}, Lcom/jme3/asset/AndroidImageInfo;-><init>(Lcom/jme3/asset/AssetInfo;)V

    .line 14
    .local v2, imageInfo:Lcom/jme3/asset/AndroidImageInfo;
    invoke-virtual {v2}, Lcom/jme3/asset/AndroidImageInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/jme3/texture/Image;

    invoke-virtual {v2}, Lcom/jme3/asset/AndroidImageInfo;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;)V

    .line 17
    .local v1, image:Lcom/jme3/texture/Image;
    invoke-virtual {v1, v2}, Lcom/jme3/texture/Image;->setEfficentData(Ljava/lang/Object;)V

    .line 18
    return-object v1
.end method
