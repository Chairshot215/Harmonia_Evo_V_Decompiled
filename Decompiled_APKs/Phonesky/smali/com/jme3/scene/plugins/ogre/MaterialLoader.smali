.class public Lcom/jme3/scene/plugins/ogre/MaterialLoader;
.super Ljava/lang/Object;
.source "MaterialLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private ambient:Lcom/jme3/math/ColorRGBA;

.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private blend:Z

.field private diffuse:Lcom/jme3/math/ColorRGBA;

.field private emissive:Lcom/jme3/math/ColorRGBA;

.field private folderName:Ljava/lang/String;

.field private matName:Ljava/lang/String;

.field private noLight:Z

.field private separateTexCoord:Z

.field private shinines:F

.field private specular:Lcom/jme3/math/ColorRGBA;

.field private texName:Ljava/lang/String;

.field private texUnit:I

.field private textures:[Lcom/jme3/texture/Texture;

.field private twoSide:Z

.field private vcolor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/texture/Texture;

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    .line 68
    iput-boolean v1, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->vcolor:Z

    .line 69
    iput-boolean v1, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->blend:Z

    .line 70
    iput-boolean v1, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->twoSide:Z

    .line 71
    iput-boolean v1, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->noLight:Z

    .line 72
    iput-boolean v1, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->separateTexCoord:Z

    .line 73
    iput v1, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    return-void
.end method

.method private compileMaterial()Lcom/jme3/material/Material;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 322
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->noLight:Z

    if-eqz v2, :cond_5

    .line 323
    new-instance v0, Lcom/jme3/material/Material;

    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v3, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v2, v3}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    .line 327
    .local v0, mat:Lcom/jme3/material/Material;
    :goto_0
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->blend:Z

    if-eqz v2, :cond_6

    .line 328
    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    .line 329
    .local v1, rs:Lcom/jme3/material/RenderState;
    invoke-virtual {v1, v5}, Lcom/jme3/material/RenderState;->setAlphaTest(Z)V

    .line 330
    const v2, 0x3c23d70a

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setAlphaFallOff(F)V

    .line 331
    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 333
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->twoSide:Z

    if-eqz v2, :cond_0

    .line 334
    sget-object v2, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    .line 338
    :cond_0
    invoke-virtual {v0, v5}, Lcom/jme3/material/Material;->setTransparent(Z)V

    .line 339
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->noLight:Z

    if-nez v2, :cond_1

    .line 340
    const-string v2, "UseAlpha"

    invoke-virtual {v0, v2, v5}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 349
    .end local v1           #rs:Lcom/jme3/material/RenderState;
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->noLight:Z

    if-nez v2, :cond_b

    .line 350
    iget v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->shinines:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_7

    .line 351
    const-string v2, "Shininess"

    iget v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->shinines:F

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    .line 356
    :goto_2
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->vcolor:Z

    if-eqz v2, :cond_2

    .line 357
    const-string v2, "UseVertexColor"

    invoke-virtual {v0, v2, v5}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 359
    :cond_2
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    aget-object v2, v2, v4

    if-eqz v2, :cond_3

    .line 360
    const-string v2, "DiffuseMap"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 362
    :cond_3
    const-string v2, "UseMaterialColors"

    invoke-virtual {v0, v2, v5}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 363
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    if-eqz v2, :cond_8

    .line 364
    const-string v2, "Diffuse"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 369
    :goto_3
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    if-eqz v2, :cond_9

    .line 370
    const-string v2, "Ambient"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 375
    :goto_4
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->specular:Lcom/jme3/math/ColorRGBA;

    if-eqz v2, :cond_a

    .line 376
    const-string v2, "Specular"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->specular:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 381
    :goto_5
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->emissive:Lcom/jme3/math/ColorRGBA;

    if-eqz v2, :cond_4

    .line 382
    const-string v2, "GlowColor"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->emissive:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 413
    :cond_4
    :goto_6
    iput-boolean v4, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->noLight:Z

    .line 414
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    .line 416
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->specular:Lcom/jme3/math/ColorRGBA;

    .line 417
    iput v7, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->shinines:F

    .line 418
    iput-boolean v4, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->vcolor:Z

    .line 419
    iput-boolean v4, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->blend:Z

    .line 420
    iput v4, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    .line 421
    iput-boolean v4, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->separateTexCoord:Z

    .line 422
    return-object v0

    .line 325
    .end local v0           #mat:Lcom/jme3/material/Material;
    :cond_5
    new-instance v0, Lcom/jme3/material/Material;

    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v3, "Common/MatDefs/Light/Lighting.j3md"

    invoke-direct {v0, v2, v3}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    .restart local v0       #mat:Lcom/jme3/material/Material;
    goto/16 :goto_0

    .line 343
    :cond_6
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->twoSide:Z

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    .line 345
    .restart local v1       #rs:Lcom/jme3/material/RenderState;
    sget-object v2, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    goto/16 :goto_1

    .line 353
    .end local v1           #rs:Lcom/jme3/material/RenderState;
    :cond_7
    const-string v2, "Shininess"

    const/high16 v3, 0x4180

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    goto :goto_2

    .line 366
    :cond_8
    const-string v2, "Diffuse"

    sget-object v3, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_3

    .line 372
    :cond_9
    const-string v2, "Ambient"

    sget-object v3, Lcom/jme3/math/ColorRGBA;->DarkGray:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_4

    .line 378
    :cond_a
    const-string v2, "Specular"

    sget-object v3, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_5

    .line 385
    :cond_b
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->vcolor:Z

    if-eqz v2, :cond_c

    .line 386
    const-string v2, "VertexColor"

    invoke-virtual {v0, v2, v5}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 389
    :cond_c
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    aget-object v2, v2, v4

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    aget-object v2, v2, v5

    if-nez v2, :cond_10

    .line 390
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->separateTexCoord:Z

    if-eqz v2, :cond_f

    .line 391
    const-string v2, "LightMap"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 392
    const-string v2, "SeparateTexCoord"

    invoke-virtual {v0, v2, v5}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 404
    :cond_d
    :goto_7
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    if-eqz v2, :cond_e

    .line 405
    const-string v2, "Color"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    .line 408
    :cond_e
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->emissive:Lcom/jme3/math/ColorRGBA;

    if-eqz v2, :cond_4

    .line 409
    const-string v2, "GlowColor"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->emissive:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto/16 :goto_6

    .line 394
    :cond_f
    const-string v2, "ColorMap"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    goto :goto_7

    .line 396
    :cond_10
    iget-object v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    aget-object v2, v2, v5

    if-eqz v2, :cond_d

    .line 397
    const-string v2, "ColorMap"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 398
    const-string v2, "LightMap"

    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    aget-object v3, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 399
    iget-boolean v2, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->separateTexCoord:Z

    if-eqz v2, :cond_d

    .line 400
    const-string v2, "SeparateTexCoord"

    invoke-virtual {v0, v2, v5}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_7
.end method

.method private load(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/io/InputStream;)Lcom/jme3/material/MaterialList;
    .locals 10
    .parameter "assetManager"
    .parameter "key"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p2}, Lcom/jme3/asset/AssetKey;->getFolder()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->folderName:Ljava/lang/String;

    .line 427
    iput-object p1, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 429
    const/4 v1, 0x0

    .line 430
    .local v1, list:Lcom/jme3/material/MaterialList;
    invoke-static {p3}, Lcom/jme3/util/blockparser/BlockLanguageParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v6

    .line 432
    .local v6, statements:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/util/blockparser/Statement;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/util/blockparser/Statement;

    .line 433
    .local v5, statement:Lcom/jme3/util/blockparser/Statement;
    invoke-virtual {v5}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, "import"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 434
    const/4 v3, 0x0

    .line 435
    .local v3, matExts:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;
    instance-of v7, p2, Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 436
    check-cast v7, Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;

    invoke-virtual {v7}, Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;->getMaterialExtensionSet()Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;

    move-result-object v3

    .line 439
    :cond_1
    if-nez v3, :cond_2

    .line 440
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Must specify MaterialExtensionSet when loading\nOgre3D materials with extended materials"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 444
    :cond_2
    new-instance v7, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;

    invoke-direct {v7}, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;-><init>()V

    invoke-virtual {v7, p1, p2, v3, v6}, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->load(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;Ljava/util/List;)Lcom/jme3/material/MaterialList;

    move-result-object v1

    .line 458
    .end local v3           #matExts:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;
    .end local v5           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_3
    return-object v1

    .line 446
    .restart local v5       #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_4
    invoke-virtual {v5}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, "material"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 447
    if-nez v1, :cond_5

    .line 448
    new-instance v1, Lcom/jme3/material/MaterialList;

    .end local v1           #list:Lcom/jme3/material/MaterialList;
    invoke-direct {v1}, Lcom/jme3/material/MaterialList;-><init>()V

    .line 450
    .restart local v1       #list:Lcom/jme3/material/MaterialList;
    :cond_5
    invoke-virtual {v5}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, split:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->matName:Ljava/lang/String;

    .line 452
    invoke-direct {p0, v5}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readMaterial(Lcom/jme3/util/blockparser/Statement;)V

    .line 453
    invoke-direct {p0}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->compileMaterial()Lcom/jme3/material/Material;

    move-result-object v2

    .line 454
    .local v2, mat:Lcom/jme3/material/Material;
    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->matName:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Lcom/jme3/material/MaterialList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readColor(Ljava/lang/String;)Lcom/jme3/math/ColorRGBA;
    .locals 4
    .parameter "content"

    .prologue
    .line 76
    const-string v2, "\\s"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, split:[Ljava/lang/String;
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    .line 79
    .local v0, color:Lcom/jme3/math/ColorRGBA;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 80
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 81
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 82
    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 83
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/jme3/math/ColorRGBA;->a:F

    .line 85
    :cond_0
    return-object v0
.end method

.method private readMaterial(Lcom/jme3/util/blockparser/Statement;)V
    .locals 3
    .parameter "statement"

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    .line 316
    .local v1, materialStat:Lcom/jme3/util/blockparser/Statement;
    invoke-direct {p0, v1}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readMaterialStatement(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_0

    .line 318
    .end local v1           #materialStat:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    return-void
.end method

.method private readMaterialStatement(Lcom/jme3/util/blockparser/Statement;)V
    .locals 3
    .parameter "statement"

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "technique"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-direct {p0, p1}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readTechnique(Lcom/jme3/util/blockparser/Statement;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "receive_shadows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 308
    .local v0, isOn:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private readPass(Lcom/jme3/util/blockparser/Statement;)V
    .locals 8
    .parameter "statement"

    .prologue
    const/4 v7, 0x1

    .line 274
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, split:[Ljava/lang/String;
    array-length v4, v3

    if-ne v4, v7, :cond_0

    .line 277
    const/4 v1, 0x0

    .line 282
    .local v1, name:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/blockparser/Statement;

    .line 283
    .local v2, passStat:Lcom/jme3/util/blockparser/Statement;
    invoke-direct {p0, v2}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readPassStatement(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_1

    .line 279
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #passStat:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    aget-object v1, v3, v7

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 286
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    .line 287
    return-void
.end method

.method private readPassStatement(Lcom/jme3/util/blockparser/Statement;)V
    .locals 11
    .parameter "statement"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 211
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, split:[Ljava/lang/String;
    aget-object v1, v3, v9

    .line 213
    .local v1, keyword:Ljava/lang/String;
    const-string v6, "diffuse"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 214
    aget-object v6, v3, v8

    const-string v7, "vertexcolour"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 216
    sget-object v6, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    .line 217
    iput-boolean v8, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->vcolor:Z

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    aget-object v6, v3, v8

    invoke-direct {p0, v6}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readColor(Ljava/lang/String;)Lcom/jme3/math/ColorRGBA;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->diffuse:Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    .line 221
    :cond_2
    const-string v6, "ambient"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 222
    aget-object v6, v3, v8

    const-string v7, "vertexcolour"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    sget-object v6, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    .line 226
    :cond_3
    aget-object v6, v3, v8

    invoke-direct {p0, v6}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readColor(Ljava/lang/String;)Lcom/jme3/math/ColorRGBA;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->ambient:Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    .line 228
    :cond_4
    const-string v6, "emissive"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 229
    aget-object v6, v3, v8

    invoke-direct {p0, v6}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readColor(Ljava/lang/String;)Lcom/jme3/math/ColorRGBA;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->emissive:Lcom/jme3/math/ColorRGBA;

    goto :goto_0

    .line 230
    :cond_5
    const-string v6, "specular"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 231
    aget-object v6, v3, v8

    const-string v7, "\\s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, subsplit:[Ljava/lang/String;
    new-instance v6, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v6}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->specular:Lcom/jme3/math/ColorRGBA;

    .line 233
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->specular:Lcom/jme3/math/ColorRGBA;

    aget-object v7, v4, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v6, Lcom/jme3/math/ColorRGBA;->r:F

    .line 234
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->specular:Lcom/jme3/math/ColorRGBA;

    aget-object v7, v4, v8

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v6, Lcom/jme3/math/ColorRGBA;->g:F

    .line 235
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->specular:Lcom/jme3/math/ColorRGBA;

    aget-object v7, v4, v10

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    iput v7, v6, Lcom/jme3/math/ColorRGBA;->b:F

    .line 236
    const/4 v6, 0x3

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 237
    .local v5, unknown:F
    array-length v6, v4

    const/4 v7, 0x5

    if-lt v6, v7, :cond_6

    .line 239
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->specular:Lcom/jme3/math/ColorRGBA;

    iput v5, v6, Lcom/jme3/math/ColorRGBA;->a:F

    .line 240
    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->shinines:F

    goto/16 :goto_0

    .line 243
    :cond_6
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->specular:Lcom/jme3/math/ColorRGBA;

    const/high16 v7, 0x3f80

    iput v7, v6, Lcom/jme3/math/ColorRGBA;->a:F

    .line 244
    iput v5, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->shinines:F

    goto/16 :goto_0

    .line 246
    .end local v4           #subsplit:[Ljava/lang/String;
    .end local v5           #unknown:F
    :cond_7
    const-string v6, "texture_unit"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 247
    invoke-direct {p0, p1}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readTextureUnit(Lcom/jme3/util/blockparser/Statement;)V

    goto/16 :goto_0

    .line 248
    :cond_8
    const-string v6, "scene_blend"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 249
    aget-object v2, v3, v8

    .line 250
    .local v2, mode:Ljava/lang/String;
    const-string v6, "alpha_blend"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    iput-boolean v8, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->blend:Z

    goto/16 :goto_0

    .line 253
    .end local v2           #mode:Ljava/lang/String;
    :cond_9
    const-string v6, "cull_hardware"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 254
    aget-object v2, v3, v8

    .line 255
    .restart local v2       #mode:Ljava/lang/String;
    const-string v6, "none"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    iput-boolean v8, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->twoSide:Z

    goto/16 :goto_0

    .line 258
    .end local v2           #mode:Ljava/lang/String;
    :cond_a
    const-string v6, "cull_software"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 260
    const-string v6, "lighting"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 261
    aget-object v0, v3, v8

    .line 262
    .local v0, isOn:Ljava/lang/String;
    const-string v6, "on"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 263
    iput-boolean v9, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->noLight:Z

    goto/16 :goto_0

    .line 264
    :cond_b
    const-string v6, "off"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    iput-boolean v8, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->noLight:Z

    goto/16 :goto_0

    .line 268
    .end local v0           #isOn:Ljava/lang/String;
    :cond_c
    sget-object v6, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Unsupported pass directive: {0}"

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private readTechnique(Lcom/jme3/util/blockparser/Statement;)V
    .locals 8
    .parameter "statement"

    .prologue
    const/4 v7, 0x1

    .line 290
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, split:[Ljava/lang/String;
    array-length v4, v2

    if-ne v4, v7, :cond_0

    .line 294
    const/4 v1, 0x0

    .line 298
    .local v1, name:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/util/blockparser/Statement;

    .line 299
    .local v3, techStat:Lcom/jme3/util/blockparser/Statement;
    invoke-direct {p0, v3}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readPass(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_1

    .line 296
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #techStat:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    aget-object v1, v2, v7

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 301
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private readTextureImage(Ljava/lang/String;)V
    .locals 19
    .parameter "content"

    .prologue
    .line 90
    const/4 v10, 0x0

    .line 93
    .local v10, path:Ljava/lang/String;
    const-string v13, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 94
    .local v4, extStart:I
    move v6, v4

    .local v6, i:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v6, v13, :cond_0

    .line 95
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 96
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 98
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 99
    add-int/lit8 v13, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 103
    .end local v1           #c:C
    :cond_0
    if-nez v10, :cond_1

    .line 104
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 105
    const-string p1, ""

    .line 108
    :cond_1
    new-instance v7, Ljava/util/Scanner;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 109
    .local v7, lnScan:Ljava/util/Scanner;
    const/4 v9, 0x0

    .line 110
    .local v9, mips:Ljava/lang/String;
    const/4 v12, 0x0

    .line 111
    .local v12, type:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/Scanner;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 113
    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v12

    .line 123
    :cond_2
    const/4 v5, 0x1

    .line 124
    .local v5, genMips:Z
    const/4 v2, 0x0

    .line 125
    .local v2, cubic:Z
    if-eqz v12, :cond_3

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 126
    const/4 v5, 0x0

    .line 128
    :cond_3
    if-eqz v12, :cond_4

    const-string v13, "cubic"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 129
    const/4 v2, 0x1

    .line 132
    :cond_4
    new-instance v11, Lcom/jme3/asset/TextureKey;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->folderName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    .line 133
    .local v11, texKey:Lcom/jme3/asset/TextureKey;
    invoke-virtual {v11, v5}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    .line 134
    invoke-virtual {v11, v2}, Lcom/jme3/asset/TextureKey;->setAsCube(Z)V

    .line 137
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v13, v11}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object v8

    .line 139
    .local v8, loadedTexture:Lcom/jme3/texture/Texture;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v13, v13, v14

    invoke-virtual {v8}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/texture/Texture;->setImage(Lcom/jme3/texture/Image;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v13, v13, v14

    invoke-virtual {v8}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v13, v13, v14

    invoke-virtual {v8}, Lcom/jme3/texture/Texture;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/texture/Texture;->setKey(Lcom/jme3/asset/AssetKey;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v13, v13, v14

    sget-object v14, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v13, v14}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texName:Ljava/lang/String;

    if-eqz v13, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/jme3/texture/Texture;->setName(Ljava/lang/String;)V

    .line 147
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texName:Ljava/lang/String;

    .line 155
    .end local v8           #loadedTexture:Lcom/jme3/texture/Texture;
    :goto_1
    return-void

    .line 94
    .end local v2           #cubic:Z
    .end local v5           #genMips:Z
    .end local v7           #lnScan:Ljava/util/Scanner;
    .end local v9           #mips:Ljava/lang/String;
    .end local v11           #texKey:Lcom/jme3/asset/TextureKey;
    .end local v12           #type:Ljava/lang/String;
    .restart local v1       #c:C
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 149
    .end local v1           #c:C
    .restart local v2       #cubic:Z
    .restart local v5       #genMips:Z
    .restart local v7       #lnScan:Ljava/util/Scanner;
    .restart local v8       #loadedTexture:Lcom/jme3/texture/Texture;
    .restart local v9       #mips:Ljava/lang/String;
    .restart local v11       #texKey:Lcom/jme3/asset/TextureKey;
    .restart local v12       #type:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v13, v13, v14

    invoke-virtual {v11}, Lcom/jme3/asset/TextureKey;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/texture/Texture;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 151
    .end local v8           #loadedTexture:Lcom/jme3/texture/Texture;
    :catch_0
    move-exception v3

    .line 152
    .local v3, ex:Lcom/jme3/asset/AssetNotFoundException;
    sget-object v13, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->logger:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v15, "Cannot locate {0} for material {1}"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->matName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-virtual/range {v13 .. v16}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v13, v13, v14

    invoke-static {}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderImage()Lcom/jme3/texture/Image;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jme3/texture/Texture;->setImage(Lcom/jme3/texture/Image;)V

    goto :goto_1
.end method

.method private readTextureUnit(Lcom/jme3/util/blockparser/Statement;)V
    .locals 7
    .parameter "statement"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 189
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, split:[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v5, :cond_0

    .line 192
    const/4 v3, 0x1

    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texName:Ljava/lang/String;

    .line 197
    :goto_0
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    iget v4, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    new-instance v5, Lcom/jme3/texture/Texture2D;

    invoke-direct {v5}, Lcom/jme3/texture/Texture2D;-><init>()V

    aput-object v5, v3, v4

    .line 198
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/blockparser/Statement;

    .line 199
    .local v2, texUnitStat:Lcom/jme3/util/blockparser/Statement;
    invoke-direct {p0, v2}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readTextureUnitStatement(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_1

    .line 194
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #texUnitStat:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texName:Ljava/lang/String;

    goto :goto_0

    .line 201
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    iget v4, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 202
    iget v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    .line 207
    :goto_2
    return-void

    .line 205
    :cond_2
    iget-object v3, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    iget v4, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aput-object v6, v3, v4

    goto :goto_2
.end method

.method private readTextureUnitStatement(Lcom/jme3/util/blockparser/Statement;)V
    .locals 9
    .parameter "statement"

    .prologue
    const/4 v8, 0x1

    .line 158
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, split:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v1, v3, v5

    .line 160
    .local v1, keyword:Ljava/lang/String;
    const-string v5, "texture"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    aget-object v5, v3, v8

    invoke-direct {p0, v5}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->readTextureImage(Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const-string v5, "tex_address_mode"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 163
    aget-object v2, v3, v8

    .line 164
    .local v2, mode:Ljava/lang/String;
    const-string v5, "wrap"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 165
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    iget v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v5, v6}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    goto :goto_0

    .line 166
    :cond_2
    const-string v5, "clamp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 167
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    iget v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/jme3/texture/Texture$WrapMode;->Clamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v5, v6}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    goto :goto_0

    .line 168
    :cond_3
    const-string v5, "mirror"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 169
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    iget v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/jme3/texture/Texture$WrapMode;->MirroredRepeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v5, v6}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    goto :goto_0

    .line 170
    :cond_4
    const-string v5, "border"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    iget v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v5, v5, v6

    sget-object v6, Lcom/jme3/texture/Texture$WrapMode;->BorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v5, v6}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    goto :goto_0

    .line 173
    .end local v2           #mode:Ljava/lang/String;
    :cond_5
    const-string v5, "filtering"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 175
    const-string v5, "tex_coord_set"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 176
    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 177
    .local v4, texCoord:I
    if-ne v4, v8, :cond_0

    .line 178
    iput-boolean v8, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->separateTexCoord:Z

    goto :goto_0

    .line 180
    .end local v4           #texCoord:I
    :cond_6
    const-string v5, "max_anisotropy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 181
    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, amount:I
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->textures:[Lcom/jme3/texture/Texture;

    iget v6, p0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->texUnit:I

    aget-object v5, v5, v6

    invoke-virtual {v5, v0}, Lcom/jme3/texture/Texture;->setAnisotropicFilter(I)V

    goto/16 :goto_0

    .line 184
    .end local v0           #amount:I
    :cond_7
    sget-object v5, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Unsupported texture_unit directive: {0}"

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 3
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 465
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/jme3/scene/plugins/ogre/MaterialLoader;->load(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/io/InputStream;)Lcom/jme3/material/MaterialList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 467
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    .line 467
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v1
.end method
