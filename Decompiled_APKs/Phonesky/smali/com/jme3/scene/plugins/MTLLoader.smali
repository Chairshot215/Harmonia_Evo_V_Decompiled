.class public Lcom/jme3/scene/plugins/MTLLoader;
.super Ljava/lang/Object;
.source "MTLLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected alpha:F

.field protected alphaMap:Lcom/jme3/texture/Texture;

.field protected ambient:Lcom/jme3/math/ColorRGBA;

.field protected assetManager:Lcom/jme3/asset/AssetManager;

.field protected diffuse:Lcom/jme3/math/ColorRGBA;

.field protected diffuseMap:Lcom/jme3/texture/Texture;

.field protected disallowAmbient:Z

.field protected disallowSpecular:Z

.field protected disallowTransparency:Z

.field protected folderName:Ljava/lang/String;

.field protected key:Lcom/jme3/asset/AssetKey;

.field protected matList:Lcom/jme3/material/MaterialList;

.field protected matName:Ljava/lang/String;

.field protected normalMap:Lcom/jme3/texture/Texture;

.field protected scan:Ljava/util/Scanner;

.field protected shadeless:Z

.field protected shininess:F

.field protected specular:Lcom/jme3/math/ColorRGBA;

.field protected specularMap:Lcom/jme3/texture/Texture;

.field protected transparent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/jme3/scene/plugins/MTLLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/plugins/MTLLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    .line 66
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    .line 67
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    .line 68
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->shininess:F

    .line 71
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->alpha:F

    .line 72
    iput-boolean v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    .line 73
    iput-boolean v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowTransparency:Z

    .line 74
    iput-boolean v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowAmbient:Z

    .line 75
    iput-boolean v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowSpecular:Z

    return-void
.end method


# virtual methods
.method protected createMaterial()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 129
    iget v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->alpha:F

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowTransparency:Z

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    iget v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->alpha:F

    iput v2, v1, Lcom/jme3/math/ColorRGBA;->a:F

    .line 133
    :cond_0
    iget-boolean v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->shadeless:Z

    if-eqz v1, :cond_3

    .line 134
    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    .line 135
    .local v0, material:Lcom/jme3/material/Material;
    const-string v1, "Color"

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 136
    const-string v1, "ColorMap"

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuseMap:Lcom/jme3/texture/Texture;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 152
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowTransparency:Z

    if-nez v1, :cond_2

    .line 153
    invoke-virtual {v0, v3}, Lcom/jme3/material/Material;->setTransparent(Z)V

    .line 154
    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 155
    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/jme3/material/RenderState;->setAlphaTest(Z)V

    .line 156
    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    const v2, 0x3c23d70a

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setAlphaFallOff(F)V

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->matList:Lcom/jme3/material/MaterialList;

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/jme3/material/MaterialList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void

    .line 139
    .end local v0           #material:Lcom/jme3/material/Material;
    :cond_3
    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v2, "Common/MatDefs/Light/Lighting.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    .line 140
    .restart local v0       #material:Lcom/jme3/material/Material;
    const-string v1, "UseMaterialColors"

    invoke-virtual {v0, v1, v3}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v1, "Ambient"

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 142
    const-string v1, "Diffuse"

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 143
    const-string v1, "Specular"

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 144
    const-string v1, "Shininess"

    iget v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->shininess:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    .line 146
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuseMap:Lcom/jme3/texture/Texture;

    if-eqz v1, :cond_4

    const-string v1, "DiffuseMap"

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuseMap:Lcom/jme3/texture/Texture;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->specularMap:Lcom/jme3/texture/Texture;

    if-eqz v1, :cond_5

    const-string v1, "SpecularMap"

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->specularMap:Lcom/jme3/texture/Texture;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 148
    :cond_5
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->normalMap:Lcom/jme3/texture/Texture;

    if-eqz v1, :cond_6

    const-string v1, "NormalMap"

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->normalMap:Lcom/jme3/texture/Texture;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 149
    :cond_6
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->alphaMap:Lcom/jme3/texture/Texture;

    if-eqz v1, :cond_1

    const-string v1, "AlphaMap"

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->alphaMap:Lcom/jme3/texture/Texture;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    goto/16 :goto_0
.end method

.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 4
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->reset()V

    .line 295
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->key:Lcom/jme3/asset/AssetKey;

    .line 296
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 297
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/asset/AssetKey;->getFolder()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->folderName:Ljava/lang/String;

    .line 298
    new-instance v2, Lcom/jme3/material/MaterialList;

    invoke-direct {v2}, Lcom/jme3/material/MaterialList;-><init>()V

    iput-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->matList:Lcom/jme3/material/MaterialList;

    .line 300
    const/4 v0, 0x0

    .line 302
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 303
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    .line 304
    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->readLine()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 308
    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->createMaterial()V

    .line 316
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->resetMaterial()V

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->matList:Lcom/jme3/material/MaterialList;

    .line 323
    .local v1, list:Lcom/jme3/material/MaterialList;
    return-object v1

    .line 308
    .end local v1           #list:Lcom/jme3/material/MaterialList;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v2
.end method

.method protected loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;
    .locals 11
    .parameter "path"

    .prologue
    const/4 v10, 0x1

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\p{javaWhitespace}+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, split:[Ljava/lang/String;
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object p1, v2, v5

    .line 179
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, name:Ljava/lang/String;
    new-instance v3, Lcom/jme3/asset/TextureKey;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->folderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;)V

    .line 181
    .local v3, texKey:Lcom/jme3/asset/TextureKey;
    invoke-virtual {v3, v10}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    .line 184
    :try_start_0
    iget-object v5, p0, Lcom/jme3/scene/plugins/MTLLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v5, v3}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object v4

    .line 185
    .local v4, texture:Lcom/jme3/texture/Texture;
    sget-object v5, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-object v4

    .line 186
    .end local v4           #texture:Lcom/jme3/texture/Texture;
    :catch_0
    move-exception v0

    .line 187
    .local v0, ex:Lcom/jme3/asset/AssetNotFoundException;
    sget-object v5, Lcom/jme3/scene/plugins/MTLLoader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Cannot locate {0} for material {1}"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    iget-object v9, p0, Lcom/jme3/scene/plugins/MTLLoader;->key:Lcom/jme3/asset/AssetKey;

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    new-instance v4, Lcom/jme3/texture/Texture2D;

    invoke-static {}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderImage()Lcom/jme3/texture/Image;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jme3/texture/Texture2D;-><init>(Lcom/jme3/texture/Image;)V

    .restart local v4       #texture:Lcom/jme3/texture/Texture;
    goto :goto_0
.end method

.method protected nextStatement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 93
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    const-string v2, "\\p{javaWhitespace}+"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 95
    return-object v0
.end method

.method protected readColor()Lcom/jme3/math/ColorRGBA;
    .locals 5

    .prologue
    .line 86
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    .line 87
    .local v0, v:Lcom/jme3/math/ColorRGBA;
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->nextFloat()F

    move-result v2

    iget-object v3, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v3}, Ljava/util/Scanner;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f80

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    .line 88
    return-object v0
.end method

.method protected readLine()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 194
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v6}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 195
    const/4 v5, 0x0

    .line 288
    :cond_0
    :goto_0
    return v5

    .line 198
    :cond_1
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, cmd:Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->skipLine()Z

    move-result v5

    goto :goto_0

    .line 202
    :cond_2
    const-string v6, "newmtl"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 203
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/jme3/scene/plugins/MTLLoader;->startMaterial(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    const-string v6, "ka"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->readColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    .line 207
    :cond_4
    const-string v6, "kd"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 208
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->readColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    .line 209
    :cond_5
    const-string v6, "ks"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 210
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->readColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    .line 211
    :cond_6
    const-string v6, "ns"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 212
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v6}, Ljava/util/Scanner;->nextFloat()F

    move-result v4

    .line 213
    .local v4, shiny:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_0

    .line 214
    iput v4, p0, Lcom/jme3/scene/plugins/MTLLoader;->shininess:F

    .line 215
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    sget-object v7, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v6, v7}, Lcom/jme3/math/ColorRGBA;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    sget-object v7, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v6, v7}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto/16 :goto_0

    .line 223
    .end local v4           #shiny:F
    :cond_7
    const-string v6, "d"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "tr"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 224
    :cond_8
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v6}, Ljava/util/Scanner;->nextFloat()F

    move-result v6

    iput v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->alpha:F

    .line 225
    iput-boolean v5, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    goto/16 :goto_0

    .line 226
    :cond_9
    const-string v6, "map_ka"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 228
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->skipLine()Z

    move-result v5

    goto/16 :goto_0

    .line 229
    :cond_a
    const-string v6, "map_kd"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 230
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->nextStatement()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, path:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/jme3/scene/plugins/MTLLoader;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuseMap:Lcom/jme3/texture/Texture;

    goto/16 :goto_0

    .line 232
    .end local v3           #path:Ljava/lang/String;
    :cond_b
    const-string v6, "map_bump"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "bump"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 233
    :cond_c
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->normalMap:Lcom/jme3/texture/Texture;

    if-nez v6, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->nextStatement()Ljava/lang/String;

    move-result-object v3

    .line 235
    .restart local v3       #path:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/jme3/scene/plugins/MTLLoader;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->normalMap:Lcom/jme3/texture/Texture;

    goto/16 :goto_0

    .line 237
    .end local v3           #path:Ljava/lang/String;
    :cond_d
    const-string v6, "map_ks"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 238
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->nextStatement()Ljava/lang/String;

    move-result-object v3

    .line 239
    .restart local v3       #path:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/jme3/scene/plugins/MTLLoader;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->specularMap:Lcom/jme3/texture/Texture;

    .line 240
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->specularMap:Lcom/jme3/texture/Texture;

    if-eqz v6, :cond_0

    .line 243
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    sget-object v7, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v6, v7}, Lcom/jme3/math/ColorRGBA;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 244
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    sget-object v7, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v6, v7}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    goto/16 :goto_0

    .line 247
    .end local v3           #path:Ljava/lang/String;
    :cond_e
    const-string v6, "map_d"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 248
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v6}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    .line 249
    .restart local v3       #path:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/jme3/scene/plugins/MTLLoader;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->alphaMap:Lcom/jme3/texture/Texture;

    .line 250
    iput-boolean v5, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    goto/16 :goto_0

    .line 251
    .end local v3           #path:Ljava/lang/String;
    :cond_f
    const-string v6, "illum"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 252
    iget-object v6, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    invoke-virtual {v6}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    .line 254
    .local v1, mode:I
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 257
    :pswitch_0
    iput-boolean v5, p0, Lcom/jme3/scene/plugins/MTLLoader;->shadeless:Z

    .line 258
    iput-boolean v5, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowTransparency:Z

    goto/16 :goto_0

    .line 261
    :pswitch_1
    iput-boolean v5, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowSpecular:Z

    .line 262
    iput-boolean v5, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowTransparency:Z

    goto/16 :goto_0

    .line 268
    :pswitch_2
    iput-boolean v5, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowTransparency:Z

    goto/16 :goto_0

    .line 276
    :pswitch_3
    iput-boolean v5, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    goto/16 :goto_0

    .line 279
    .end local v1           #mode:I
    :cond_10
    const-string v5, "ke"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "ni"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 282
    :cond_11
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->skipLine()Z

    move-result v5

    goto/16 :goto_0

    .line 284
    :cond_12
    sget-object v5, Lcom/jme3/scene/plugins/MTLLoader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Unknown statement in MTL! {0}"

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->skipLine()Z

    move-result v5

    goto/16 :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    .line 79
    iput-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->matList:Lcom/jme3/material/MaterialList;

    .line 82
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->resetMaterial()V

    .line 83
    return-void
.end method

.method protected resetMaterial()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->DarkGray:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    .line 110
    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->LightGray:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    .line 111
    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->specular:Lcom/jme3/math/ColorRGBA;

    sget-object v1, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    .line 112
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->shininess:F

    .line 113
    iput-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowTransparency:Z

    .line 114
    iput-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowAmbient:Z

    .line 115
    iput-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->disallowSpecular:Z

    .line 116
    iput-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->shadeless:Z

    .line 117
    iput-boolean v2, p0, Lcom/jme3/scene/plugins/MTLLoader;->transparent:Z

    .line 118
    iput-object v3, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    .line 119
    iput-object v3, p0, Lcom/jme3/scene/plugins/MTLLoader;->diffuseMap:Lcom/jme3/texture/Texture;

    .line 120
    iput-object v3, p0, Lcom/jme3/scene/plugins/MTLLoader;->specularMap:Lcom/jme3/texture/Texture;

    .line 121
    iput-object v3, p0, Lcom/jme3/scene/plugins/MTLLoader;->normalMap:Lcom/jme3/texture/Texture;

    .line 122
    iput-object v3, p0, Lcom/jme3/scene/plugins/MTLLoader;->alphaMap:Lcom/jme3/texture/Texture;

    .line 123
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->alpha:F

    .line 124
    return-void
.end method

.method protected skipLine()Z
    .locals 3

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/jme3/scene/plugins/MTLLoader;->scan:Ljava/util/Scanner;

    const-string v2, ".*\r{0,1}\n"

    invoke-virtual {v1, v2}, Ljava/util/Scanner;->skip(Ljava/lang/String;)Ljava/util/Scanner;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v1, 0x1

    .line 104
    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, ex:Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected startMaterial(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->createMaterial()V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/plugins/MTLLoader;->resetMaterial()V

    .line 170
    iput-object p1, p0, Lcom/jme3/scene/plugins/MTLLoader;->matName:Ljava/lang/String;

    .line 171
    return-void
.end method
