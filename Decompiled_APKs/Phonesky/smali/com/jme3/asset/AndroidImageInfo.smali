.class public Lcom/jme3/asset/AndroidImageInfo;
.super Ljava/lang/Object;
.source "AndroidImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/asset/AndroidImageInfo$1;
    }
.end annotation


# instance fields
.field protected assetInfo:Lcom/jme3/asset/AssetInfo;

.field protected bitmap:Landroid/graphics/Bitmap;

.field protected format:Lcom/jme3/texture/Image$Format;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetInfo;)V
    .locals 0
    .parameter "assetInfo"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/jme3/asset/AndroidImageInfo;->assetInfo:Lcom/jme3/asset/AssetInfo;

    .line 27
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jme3/asset/AndroidImageInfo;->loadBitmap()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 37
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lcom/jme3/asset/AssetLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/asset/AndroidImageInfo;->assetInfo:Lcom/jme3/asset/AssetInfo;

    invoke-virtual {v3}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFormat()Lcom/jme3/texture/Image$Format;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->format:Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method protected loadBitmap()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v7, 0x0

    .line 56
    .local v7, in:Ljava/io/InputStream;
    :try_start_0
    iget-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->assetInfo:Lcom/jme3/asset/AssetInfo;

    invoke-virtual {v0}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v7

    .line 57
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 58
    iget-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/asset/AndroidImageInfo;->assetInfo:Lcom/jme3/asset/AssetInfo;

    invoke-virtual {v2}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 63
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0

    .line 62
    :cond_1
    if-eqz v7, :cond_2

    .line 63
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 67
    :cond_2
    sget-object v0, Lcom/jme3/asset/AndroidImageInfo$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    iget-object v2, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->format:Lcom/jme3/texture/Image$Format;

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->assetInfo:Lcom/jme3/asset/AssetInfo;

    invoke-virtual {v0}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v9

    check-cast v9, Lcom/jme3/asset/TextureKey;

    .line 88
    .local v9, texKey:Lcom/jme3/asset/TextureKey;
    invoke-virtual {v9}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    .local v5, flipMat:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 92
    iget-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 93
    .local v8, newBitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    iput-object v8, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 96
    iget-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 97
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to flip image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    .end local v5           #flipMat:Landroid/graphics/Matrix;
    .end local v8           #newBitmap:Landroid/graphics/Bitmap;
    .end local v9           #texKey:Lcom/jme3/asset/TextureKey;
    :pswitch_0
    sget-object v0, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->format:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    .line 72
    :pswitch_1
    sget-object v0, Lcom/jme3/texture/Image$Format;->ARGB4444:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->format:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    .line 75
    :pswitch_2
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->format:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    .line 78
    :pswitch_3
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    iput-object v0, p0, Lcom/jme3/asset/AndroidImageInfo;->format:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    .line 100
    .restart local v9       #texKey:Lcom/jme3/asset/TextureKey;
    :cond_3
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
