.class public Lcom/jme3/asset/TextureKey;
.super Lcom/jme3/asset/AssetKey;
.source "TextureKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey",
        "<",
        "Lcom/jme3/texture/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field private anisotropy:I

.field private asCube:Z

.field private asTexture3D:Z

.field private flipY:Z

.field private generateMips:Z

.field private textureTypeHint:Lcom/jme3/texture/Texture$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/jme3/asset/AssetKey;-><init>()V

    .line 50
    sget-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    iput-object v0, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    iput-object v0, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "flipY"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    iput-object v0, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    .line 54
    iput-boolean p2, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    .line 55
    return-void
.end method


# virtual methods
.method public createClonedInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "asset"

    .prologue
    .line 81
    move-object v0, p1

    check-cast v0, Lcom/jme3/texture/Texture;

    .line 82
    .local v0, tex:Lcom/jme3/texture/Texture;
    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->createSimpleClone()Lcom/jme3/texture/Texture;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 157
    instance-of v1, p1, Lcom/jme3/asset/TextureKey;

    if-nez v1, :cond_1

    .line 160
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    invoke-super {p0, p1}, Lcom/jme3/asset/AssetKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v1

    check-cast p1, Lcom/jme3/asset/TextureKey;

    .end local p1
    invoke-virtual {p1}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAnisotropy()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/jme3/asset/TextureKey;->anisotropy:I

    return v0
.end method

.method public isAsCube()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->asCube:Z

    return v0
.end method

.method public isAsTexture3D()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->asTexture3D:Z

    return v0
.end method

.method public isFlipY()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    return v0
.end method

.method public isGenerateMips()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    return v0
.end method

.method public postProcess(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "asset"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/jme3/texture/Image;

    .line 88
    .local v0, img:Lcom/jme3/texture/Image;
    if-nez v0, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 116
    :goto_0
    return-object v2

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/asset/TextureKey;->isAsCube()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    invoke-virtual {p0}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v0, v4}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 97
    .local v1, pos_y:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v5}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/jme3/texture/Image;->setData(ILjava/nio/ByteBuffer;)V

    .line 98
    invoke-virtual {v0, v5, v1}, Lcom/jme3/texture/Image;->setData(ILjava/nio/ByteBuffer;)V

    .line 100
    .end local v1           #pos_y:Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v2, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {v2}, Lcom/jme3/texture/TextureCubeMap;-><init>()V

    .line 109
    .local v2, tex:Lcom/jme3/texture/Texture;
    :goto_1
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/jme3/asset/TextureKey;->isGenerateMips()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    :cond_2
    sget-object v3, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v2, v3}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/jme3/asset/TextureKey;->getAnisotropy()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/jme3/texture/Texture;->setAnisotropicFilter(I)V

    .line 114
    invoke-virtual {p0}, Lcom/jme3/asset/TextureKey;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/texture/Texture;->setName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v2, v0}, Lcom/jme3/texture/Texture;->setImage(Lcom/jme3/texture/Image;)V

    goto :goto_0

    .line 101
    .end local v2           #tex:Lcom/jme3/texture/Texture;
    :cond_4
    invoke-virtual {p0}, Lcom/jme3/asset/TextureKey;->isAsTexture3D()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    new-instance v2, Lcom/jme3/texture/Texture3D;

    invoke-direct {v2}, Lcom/jme3/texture/Texture3D;-><init>()V

    .restart local v2       #tex:Lcom/jme3/texture/Texture;
    goto :goto_1

    .line 104
    .end local v2           #tex:Lcom/jme3/texture/Texture;
    :cond_5
    new-instance v2, Lcom/jme3/texture/Texture2D;

    invoke-direct {v2}, Lcom/jme3/texture/Texture2D;-><init>()V

    .restart local v2       #tex:Lcom/jme3/texture/Texture;
    goto :goto_1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-super {p0, p1}, Lcom/jme3/asset/AssetKey;->read(Lcom/jme3/export/JmeImporter;)V

    .line 184
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 185
    .local v0, ic:Lcom/jme3/export/InputCapsule;
    const-string v1, "flip_y"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    .line 186
    const-string v1, "generate_mips"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    .line 187
    const-string v1, "as_cubemap"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jme3/asset/TextureKey;->asCube:Z

    .line 188
    const-string v1, "anisotropy"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/asset/TextureKey;->anisotropy:I

    .line 189
    return-void
.end method

.method public setAsCube(Z)V
    .locals 0
    .parameter "asCube"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/jme3/asset/TextureKey;->asCube:Z

    .line 137
    return-void
.end method

.method public setGenerateMips(Z)V
    .locals 0
    .parameter "generateMips"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    .line 145
    return-void
.end method

.method public setTextureTypeHint(Lcom/jme3/texture/Texture$Type;)V
    .locals 0
    .parameter "textureTypeHint"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/asset/TextureKey;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    if-eqz v0, :cond_0

    const-string v0, " (Flipped)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->asCube:Z

    if-eqz v0, :cond_1

    const-string v0, " (Cube)"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    if-eqz v0, :cond_2

    const-string v0, " (Mipmaped)"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method public useSmartCache()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method
