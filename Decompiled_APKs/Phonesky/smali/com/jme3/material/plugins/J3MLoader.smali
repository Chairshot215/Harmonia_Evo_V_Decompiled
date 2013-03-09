.class public Lcom/jme3/material/plugins/J3MLoader;
.super Ljava/lang/Object;
.source "J3MLoader.java"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/plugins/J3MLoader$1;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private fragName:Ljava/lang/String;

.field private key:Lcom/jme3/asset/AssetKey;

.field private material:Lcom/jme3/material/Material;

.field private materialDef:Lcom/jme3/material/MaterialDef;

.field private renderState:Lcom/jme3/material/RenderState;

.field private shaderLang:Ljava/lang/String;

.field private technique:Lcom/jme3/material/TechniqueDef;

.field private vertName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/jme3/material/plugins/J3MLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/plugins/J3MLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private loadFromRoot(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    .local p1, roots:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/util/blockparser/Statement;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 427
    const/4 v11, 0x0

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    .line 428
    .local v1, exception:Lcom/jme3/util/blockparser/Statement;
    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v5

    .line 429
    .local v5, line:Ljava/lang/String;
    const-string v11, "Exception"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 430
    new-instance v11, Lcom/jme3/asset/AssetLoadException;

    const-string v12, "Exception "

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 432
    :cond_0
    new-instance v11, Ljava/io/IOException;

    const-string v12, "In multiroot material, expected first statement to be \'Exception\'"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 434
    .end local v1           #exception:Lcom/jme3/util/blockparser/Statement;
    .end local v5           #line:Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 435
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Too many roots in J3M/J3MD file"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 438
    :cond_2
    const/4 v3, 0x0

    .line 439
    .local v3, extending:Z
    const/4 v11, 0x0

    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/util/blockparser/Statement;

    .line 440
    .local v7, materialStat:Lcom/jme3/util/blockparser/Statement;
    invoke-virtual {v7}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, materialName:Ljava/lang/String;
    const-string v11, "MaterialDef"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 442
    const-string v11, "MaterialDef "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 443
    const/4 v3, 0x0

    .line 451
    :goto_0
    const-string v11, ":"

    const/4 v12, 0x2

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 453
    .local v8, split:[Ljava/lang/String;
    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 454
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Material name cannot be empty"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 444
    .end local v8           #split:[Ljava/lang/String;
    :cond_3
    const-string v11, "Material"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 445
    const-string v11, "Material "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 446
    const/4 v3, 0x1

    goto :goto_0

    .line 448
    :cond_4
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Specified file is not a Material file"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 457
    .restart local v8       #split:[Ljava/lang/String;
    :cond_5
    array-length v11, v8

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 458
    if-nez v3, :cond_6

    .line 459
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Must use \'Material\' when extending."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 462
    :cond_6
    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, extendedMat:Ljava/lang/String;
    iget-object v11, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    new-instance v12, Lcom/jme3/asset/AssetKey;

    invoke-direct {v12, v2}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v12}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MaterialDef;

    .line 465
    .local v0, def:Lcom/jme3/material/MaterialDef;
    if-nez v0, :cond_7

    .line 466
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Extended material "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cannot be found."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 468
    :cond_7
    new-instance v11, Lcom/jme3/material/Material;

    invoke-direct {v11, v0}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/material/MaterialDef;)V

    iput-object v11, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    .line 469
    iget-object v11, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    iget-object v12, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v11, v12}, Lcom/jme3/material/Material;->setKey(Lcom/jme3/asset/AssetKey;)V

    .line 482
    .end local v0           #def:Lcom/jme3/material/MaterialDef;
    .end local v2           #extendedMat:Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jme3/util/blockparser/Statement;

    .line 483
    .local v10, statement:Lcom/jme3/util/blockparser/Statement;
    invoke-virtual {v10}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v11

    const-string v12, "[ \\{]"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 484
    const/4 v11, 0x0

    aget-object v9, v8, v11

    .line 485
    .local v9, statType:Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 486
    const-string v11, "MaterialParameters"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 487
    invoke-virtual {v10}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/jme3/material/plugins/J3MLoader;->readExtendingMaterialParams(Ljava/util/List;)V

    goto :goto_2

    .line 471
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #statType:Ljava/lang/String;
    .end local v10           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_9
    array-length v11, v8

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 472
    if-eqz v3, :cond_a

    .line 473
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Expected \':\', got \'{\'"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 475
    :cond_a
    new-instance v11, Lcom/jme3/material/MaterialDef;

    iget-object v12, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-direct {v11, v12, v6}, Lcom/jme3/material/MaterialDef;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    .line 477
    iget-object v11, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    iget-object v12, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    invoke-virtual {v12}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/jme3/material/MaterialDef;->setAssetName(Ljava/lang/String;)V

    goto :goto_1

    .line 479
    :cond_b
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Cannot use colon in material name/path"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 488
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #statType:Ljava/lang/String;
    .restart local v10       #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_c
    const-string v11, "AdditionalRenderState"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 489
    invoke-virtual {v10}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/jme3/material/plugins/J3MLoader;->readAdditionalRenderState(Ljava/util/List;)V

    goto :goto_2

    .line 490
    :cond_d
    const-string v11, "Transparent"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 491
    invoke-virtual {v10}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/jme3/material/plugins/J3MLoader;->readTransparentStatement(Ljava/lang/String;)V

    goto :goto_2

    .line 494
    :cond_e
    const-string v11, "Technique"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 495
    invoke-direct {p0, v10}, Lcom/jme3/material/plugins/J3MLoader;->readTechnique(Lcom/jme3/util/blockparser/Statement;)V

    goto/16 :goto_2

    .line 496
    :cond_f
    const-string v11, "MaterialParameters"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 497
    invoke-virtual {v10}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/jme3/material/plugins/J3MLoader;->readMaterialParams(Ljava/util/List;)V

    goto/16 :goto_2

    .line 499
    :cond_10
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected material statement, got \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 503
    .end local v9           #statType:Ljava/lang/String;
    .end local v10           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_11
    return-void
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "word"

    .prologue
    .line 304
    if-eqz p1, :cond_0

    const-string v0, "On"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readAdditionalRenderState(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    .local p1, renderStates:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/util/blockparser/Statement;>;"
    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v2}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    .line 337
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    .line 338
    .local v1, statement:Lcom/jme3/util/blockparser/Statement;
    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/material/plugins/J3MLoader;->readRenderStateStatement(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    .end local v1           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    .line 341
    return-void
.end method

.method private readDefine(Ljava/lang/String;)V
    .locals 5
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 354
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, split:[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v4, :cond_0

    .line 357
    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/jme3/material/TechniqueDef;->addShaderPresetDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_0
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 359
    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jme3/material/TechniqueDef;->addShaderParamDefine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Define syntax incorrect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readDefines(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    .local p1, defineList:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/util/blockparser/Statement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    .line 367
    .local v1, statement:Lcom/jme3/util/blockparser/Statement;
    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/material/plugins/J3MLoader;->readDefine(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    .end local v1           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    return-void
.end method

.method private readExtendingMaterialParams(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    .local p1, paramsList:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/util/blockparser/Statement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    .line 293
    .local v1, statement:Lcom/jme3/util/blockparser/Statement;
    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/material/plugins/J3MLoader;->readValueParam(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v1           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    return-void
.end method

.method private readLightMode(Ljava/lang/String;)V
    .locals 4
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const-string v2, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, split:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 108
    new-instance v2, Ljava/io/IOException;

    const-string v3, "LightMode statement syntax incorrect"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/jme3/material/TechniqueDef$LightMode;->valueOf(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v0

    .line 111
    .local v0, lm:Lcom/jme3/material/TechniqueDef$LightMode;
    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v2, v0}, Lcom/jme3/material/TechniqueDef;->setLightMode(Lcom/jme3/material/TechniqueDef$LightMode;)V

    .line 112
    return-void
.end method

.method private readMaterialParams(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    .local p1, paramsList:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/util/blockparser/Statement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    .line 287
    .local v1, statement:Lcom/jme3/util/blockparser/Statement;
    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/material/plugins/J3MLoader;->readParam(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v1           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    return-void
.end method

.method private readParam(Ljava/lang/String;)V
    .locals 14
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, defaultVal:Ljava/lang/String;
    const/4 v5, 0x0

    .line 212
    .local v5, ffBinding:Lcom/jme3/material/FixedFuncBinding;
    const-string v10, ":"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 215
    .local v7, split:[Ljava/lang/String;
    array-length v10, v7

    if-ne v10, v13, :cond_1

    .line 226
    :goto_0
    const-string v10, "("

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 227
    .local v8, startParen:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_0

    .line 229
    const-string v10, ")"

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 230
    .local v3, endParen:I
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, bindingStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/jme3/material/FixedFuncBinding;->valueOf(Ljava/lang/String;)Lcom/jme3/material/FixedFuncBinding;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 237
    invoke-virtual {p1, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 241
    .end local v0           #bindingStr:Ljava/lang/String;
    .end local v3           #endParen:I
    :cond_0
    const-string v10, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 242
    array-length v10, v7

    if-eq v10, v11, :cond_3

    .line 243
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Parameter statement syntax incorrect"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 218
    .end local v8           #startParen:I
    :cond_1
    array-length v10, v7

    if-eq v10, v11, :cond_2

    .line 219
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Parameter statement syntax incorrect"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 221
    :cond_2
    aget-object v10, v7, v12

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 222
    aget-object v10, v7, v13

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 233
    .restart local v0       #bindingStr:Ljava/lang/String;
    .restart local v3       #endParen:I
    .restart local v8       #startParen:I
    :catch_0
    move-exception v4

    .line 234
    .local v4, ex:Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FixedFuncBinding \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v7, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' does not exist!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 247
    .end local v0           #bindingStr:Ljava/lang/String;
    .end local v3           #endParen:I
    .end local v4           #ex:Ljava/lang/IllegalArgumentException;
    :cond_3
    aget-object v10, v7, v12

    const-string v11, "Color"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 248
    sget-object v9, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    .line 253
    .local v9, type:Lcom/jme3/shader/VarType;
    :goto_1
    aget-object v6, v7, v13

    .line 255
    .local v6, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 256
    .local v2, defaultValObj:Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 257
    invoke-direct {p0, v9, v1}, Lcom/jme3/material/plugins/J3MLoader;->readValue(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 260
    .end local v2           #defaultValObj:Ljava/lang/Object;
    :cond_4
    iget-object v10, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v10, v9, v6, v2, v5}, Lcom/jme3/material/MaterialDef;->addMaterialParam(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;Lcom/jme3/material/FixedFuncBinding;)V

    .line 261
    return-void

    .line 250
    .end local v6           #name:Ljava/lang/String;
    .end local v9           #type:Lcom/jme3/shader/VarType;
    :cond_5
    aget-object v10, v7, v12

    invoke-static {v10}, Lcom/jme3/shader/VarType;->valueOf(Ljava/lang/String;)Lcom/jme3/shader/VarType;

    move-result-object v9

    .restart local v9       #type:Lcom/jme3/shader/VarType;
    goto :goto_1
.end method

.method private readRenderState(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    .local p1, renderStates:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/util/blockparser/Statement;>;"
    new-instance v2, Lcom/jme3/material/RenderState;

    invoke-direct {v2}, Lcom/jme3/material/RenderState;-><init>()V

    iput-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    .line 345
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    .line 346
    .local v1, statement:Lcom/jme3/util/blockparser/Statement;
    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/material/plugins/J3MLoader;->readRenderStateStatement(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    .end local v1           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    invoke-virtual {v2, v3}, Lcom/jme3/material/TechniqueDef;->setRenderState(Lcom/jme3/material/RenderState;)V

    .line 349
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    .line 350
    return-void
.end method

.method private readRenderStateStatement(Ljava/lang/String;)V
    .locals 7
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 308
    const-string v3, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, split:[Ljava/lang/String;
    aget-object v3, v1, v5

    const-string v4, "Wireframe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v4, v1, v6

    invoke-direct {p0, v4}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    .line 333
    :goto_0
    return-void

    .line 311
    :cond_0
    aget-object v3, v1, v5

    const-string v4, "FaceCull"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v4, v1, v6

    invoke-static {v4}, Lcom/jme3/material/RenderState$FaceCullMode;->valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    goto :goto_0

    .line 313
    :cond_1
    aget-object v3, v1, v5

    const-string v4, "DepthWrite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 314
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v4, v1, v6

    invoke-direct {p0, v4}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    goto :goto_0

    .line 315
    :cond_2
    aget-object v3, v1, v5

    const-string v4, "DepthTest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v4, v1, v6

    invoke-direct {p0, v4}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    goto :goto_0

    .line 317
    :cond_3
    aget-object v3, v1, v5

    const-string v4, "Blend"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v4, v1, v6

    invoke-static {v4}, Lcom/jme3/material/RenderState$BlendMode;->valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    goto :goto_0

    .line 319
    :cond_4
    aget-object v3, v1, v5

    const-string v4, "AlphaTestFalloff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 320
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    invoke-virtual {v3, v6}, Lcom/jme3/material/RenderState;->setAlphaTest(Z)V

    .line 321
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jme3/material/RenderState;->setAlphaFallOff(F)V

    goto :goto_0

    .line 322
    :cond_5
    aget-object v3, v1, v5

    const-string v4, "PolyOffset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 323
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 324
    .local v0, factor:F
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 325
    .local v2, units:F
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    invoke-virtual {v3, v0, v2}, Lcom/jme3/material/RenderState;->setPolyOffset(FF)V

    goto/16 :goto_0

    .line 326
    .end local v0           #factor:F
    .end local v2           #units:F
    :cond_6
    aget-object v3, v1, v5

    const-string v4, "ColorWrite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 327
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v4, v1, v6

    invoke-direct {p0, v4}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jme3/material/RenderState;->setColorWrite(Z)V

    goto/16 :goto_0

    .line 328
    :cond_7
    aget-object v3, v1, v5

    const-string v4, "PointSprite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 329
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->renderState:Lcom/jme3/material/RenderState;

    aget-object v4, v1, v6

    invoke-direct {p0, v4}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/jme3/material/RenderState;->setPointSprite(Z)V

    goto/16 :goto_0

    .line 331
    :cond_8
    const/4 v3, 0x0

    aget-object v4, v1, v5

    invoke-direct {p0, v3, v4}, Lcom/jme3/material/plugins/J3MLoader;->throwIfNequal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private readShaderStatement(Ljava/lang/String;)V
    .locals 7
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, split:[Ljava/lang/String;
    array-length v2, v0

    if-eq v2, v6, :cond_0

    .line 90
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shader statement syntax incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_0
    aget-object v2, v0, v4

    const-string v3, "\\p{javaWhitespace}+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, typeAndLang:[Ljava/lang/String;
    array-length v2, v1

    if-eq v2, v6, :cond_1

    .line 94
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shader statement syntax incorrect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_1
    aget-object v2, v1, v5

    iput-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLang:Ljava/lang/String;

    .line 97
    aget-object v2, v1, v4

    const-string v3, "VertexShader"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->vertName:Ljava/lang/String;

    .line 102
    :cond_2
    :goto_0
    return-void

    .line 99
    :cond_3
    aget-object v2, v1, v4

    const-string v3, "FragmentShader"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->fragName:Ljava/lang/String;

    goto :goto_0
.end method

.method private readShadowMode(Ljava/lang/String;)V
    .locals 4
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v2, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, split:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 118
    new-instance v2, Ljava/io/IOException;

    const-string v3, "ShadowMode statement syntax incorrect"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_0
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/jme3/material/TechniqueDef$ShadowMode;->valueOf(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef$ShadowMode;

    move-result-object v0

    .line 121
    .local v0, sm:Lcom/jme3/material/TechniqueDef$ShadowMode;
    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v2, v0}, Lcom/jme3/material/TechniqueDef;->setShadowMode(Lcom/jme3/material/TechniqueDef$ShadowMode;)V

    .line 122
    return-void
.end method

.method private readTechnique(Lcom/jme3/util/blockparser/Statement;)V
    .locals 8
    .parameter "techStat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 401
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\p{javaWhitespace}+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, split:[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v5, :cond_0

    .line 403
    new-instance v3, Lcom/jme3/material/TechniqueDef;

    invoke-direct {v3, v7}, Lcom/jme3/material/TechniqueDef;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    .line 410
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/blockparser/Statement;

    .line 411
    .local v2, statement:Lcom/jme3/util/blockparser/Statement;
    invoke-direct {p0, v2}, Lcom/jme3/material/plugins/J3MLoader;->readTechniqueStatement(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_1

    .line 404
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 405
    new-instance v3, Lcom/jme3/material/TechniqueDef;

    aget-object v4, v1, v5

    invoke-direct {v3, v4}, Lcom/jme3/material/TechniqueDef;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    goto :goto_0

    .line 407
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Technique statement syntax incorrect"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 414
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->vertName:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->fragName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 415
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    iget-object v4, p0, Lcom/jme3/material/plugins/J3MLoader;->vertName:Ljava/lang/String;

    iget-object v5, p0, Lcom/jme3/material/plugins/J3MLoader;->fragName:Ljava/lang/String;

    iget-object v6, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLang:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/jme3/material/TechniqueDef;->setShaderFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_3
    iget-object v3, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    iget-object v4, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v3, v4}, Lcom/jme3/material/MaterialDef;->addTechniqueDef(Lcom/jme3/material/TechniqueDef;)V

    .line 419
    iput-object v7, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    .line 420
    iput-object v7, p0, Lcom/jme3/material/plugins/J3MLoader;->vertName:Ljava/lang/String;

    .line 421
    iput-object v7, p0, Lcom/jme3/material/plugins/J3MLoader;->fragName:Ljava/lang/String;

    .line 422
    iput-object v7, p0, Lcom/jme3/material/plugins/J3MLoader;->shaderLang:Ljava/lang/String;

    .line 423
    return-void
.end method

.method private readTechniqueStatement(Lcom/jme3/util/blockparser/Statement;)V
    .locals 4
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 373
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ \\{]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, split:[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "VertexShader"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v3

    const-string v2, "FragmentShader"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/material/plugins/J3MLoader;->readShaderStatement(Ljava/lang/String;)V

    .line 390
    :goto_0
    return-void

    .line 377
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "LightMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/material/plugins/J3MLoader;->readLightMode(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    aget-object v1, v0, v3

    const-string v2, "ShadowMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 380
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/material/plugins/J3MLoader;->readShadowMode(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_3
    aget-object v1, v0, v3

    const-string v2, "WorldParameters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/material/plugins/J3MLoader;->readWorldParams(Ljava/util/List;)V

    goto :goto_0

    .line 383
    :cond_4
    aget-object v1, v0, v3

    const-string v2, "RenderState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 384
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/material/plugins/J3MLoader;->readRenderState(Ljava/util/List;)V

    goto :goto_0

    .line 385
    :cond_5
    aget-object v1, v0, v3

    const-string v2, "Defines"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 386
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/material/plugins/J3MLoader;->readDefines(Ljava/util/List;)V

    goto :goto_0

    .line 388
    :cond_6
    const/4 v1, 0x0

    aget-object v2, v0, v3

    invoke-direct {p0, v1, v2}, Lcom/jme3/material/plugins/J3MLoader;->throwIfNequal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readTransparentStatement(Ljava/lang/String;)V
    .locals 3
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    const-string v1, "\\p{javaWhitespace}+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, split:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 395
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Transparent statement syntax incorrect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {p0, v2}, Lcom/jme3/material/plugins/J3MLoader;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/material/Material;->setTransparent(Z)V

    .line 398
    return-void
.end method

.method private readValue(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 125
    invoke-virtual {p1}, Lcom/jme3/shader/VarType;->isTextureType()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 127
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, texturePath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 129
    .local v1, flipY:Z
    const/4 v2, 0x0

    .line 130
    .local v2, repeat:Z
    const-string v7, "Flip Repeat "

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 132
    const/4 v1, 0x1

    .line 133
    const/4 v2, 0x1

    .line 142
    :cond_0
    :goto_0
    new-instance v5, Lcom/jme3/asset/TextureKey;

    invoke-direct {v5, v6, v1}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    .line 143
    .local v5, texKey:Lcom/jme3/asset/TextureKey;
    sget-object v7, Lcom/jme3/shader/VarType;->TextureCubeMap:Lcom/jme3/shader/VarType;

    if-ne p1, v7, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v5, v7}, Lcom/jme3/asset/TextureKey;->setAsCube(Z)V

    .line 144
    invoke-virtual {v5, v8}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    .line 148
    :try_start_0
    iget-object v7, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v7, v5}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 153
    .local v4, tex:Lcom/jme3/texture/Texture;
    :goto_2
    if-eqz v4, :cond_5

    .line 154
    if-eqz v2, :cond_1

    .line 155
    sget-object v7, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v4, v7}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    .line 199
    .end local v1           #flipY:Z
    .end local v2           #repeat:Z
    .end local v4           #tex:Lcom/jme3/texture/Texture;
    .end local v5           #texKey:Lcom/jme3/asset/TextureKey;
    .end local v6           #texturePath:Ljava/lang/String;
    :cond_1
    :goto_3
    return-object v4

    .line 134
    .restart local v1       #flipY:Z
    .restart local v2       #repeat:Z
    .restart local v6       #texturePath:Ljava/lang/String;
    :cond_2
    const-string v7, "Flip "

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 135
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 136
    const/4 v1, 0x1

    goto :goto_0

    .line 137
    :cond_3
    const-string v7, "Repeat "

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 138
    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 139
    const/4 v2, 0x1

    goto :goto_0

    .restart local v5       #texKey:Lcom/jme3/asset/TextureKey;
    :cond_4
    move v7, v9

    .line 143
    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, ex:Lcom/jme3/asset/AssetNotFoundException;
    sget-object v7, Lcom/jme3/material/plugins/J3MLoader;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "Cannot locate {0} for material {1}"

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v5, v12, v9

    iget-object v9, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    aput-object v9, v12, v8

    invoke-virtual {v7, v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const/4 v4, 0x0

    .restart local v4       #tex:Lcom/jme3/texture/Texture;
    goto :goto_2

    .line 158
    .end local v0           #ex:Lcom/jme3/asset/AssetNotFoundException;
    :cond_5
    new-instance v4, Lcom/jme3/texture/Texture2D;

    .end local v4           #tex:Lcom/jme3/texture/Texture;
    invoke-static {}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderImage()Lcom/jme3/texture/Image;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/jme3/texture/Texture2D;-><init>(Lcom/jme3/texture/Image;)V

    .restart local v4       #tex:Lcom/jme3/texture/Texture;
    goto :goto_3

    .line 162
    .end local v1           #flipY:Z
    .end local v2           #repeat:Z
    .end local v4           #tex:Lcom/jme3/texture/Texture;
    .end local v5           #texKey:Lcom/jme3/asset/TextureKey;
    .end local v6           #texturePath:Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v10, "\\p{javaWhitespace}+"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, split:[Ljava/lang/String;
    sget-object v7, Lcom/jme3/material/plugins/J3MLoader$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v10

    aget v7, v7, v10

    packed-switch v7, :pswitch_data_0

    .line 201
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 165
    :pswitch_0
    array-length v7, v3

    if-eq v7, v8, :cond_7

    .line 166
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Float value parameter must have 1 entry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 168
    :cond_7
    aget-object v7, v3, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto/16 :goto_3

    .line 170
    :pswitch_1
    array-length v7, v3

    if-eq v7, v12, :cond_8

    .line 171
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Vector2 value parameter must have 2 entries: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 173
    :cond_8
    new-instance v4, Lcom/jme3/math/Vector2f;

    aget-object v7, v3, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-direct {v4, v7, v8}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    goto/16 :goto_3

    .line 176
    :pswitch_2
    array-length v7, v3

    if-eq v7, v11, :cond_9

    .line 177
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Vector3 value parameter must have 3 entries: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 179
    :cond_9
    new-instance v4, Lcom/jme3/math/Vector3f;

    aget-object v7, v3, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aget-object v9, v3, v12

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-direct {v4, v7, v8, v9}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    goto/16 :goto_3

    .line 183
    :pswitch_3
    array-length v7, v3

    const/4 v10, 0x4

    if-eq v7, v10, :cond_a

    .line 184
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Vector4 value parameter must have 4 entries: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 186
    :cond_a
    new-instance v4, Lcom/jme3/math/ColorRGBA;

    aget-object v7, v3, v9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aget-object v9, v3, v12

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aget-object v10, v3, v11

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    goto/16 :goto_3

    .line 191
    :pswitch_4
    array-length v7, v3

    if-eq v7, v8, :cond_b

    .line 192
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Int value parameter must have 1 entry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 194
    :cond_b
    aget-object v7, v3, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_3

    .line 196
    :pswitch_5
    array-length v7, v3

    if-eq v7, v8, :cond_c

    .line 197
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Boolean value parameter must have 1 entry: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 199
    :cond_c
    aget-object v7, v3, v9

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_3

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private readValueParam(Ljava/lang/String;)V
    .locals 7
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 265
    const-string v4, ":"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, split:[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v5, :cond_0

    .line 267
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Value parameter statement syntax incorrect"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 269
    :cond_0
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v4}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v1

    .line 273
    .local v1, p:Lcom/jme3/material/MatParam;
    if-nez v1, :cond_1

    .line 274
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The material parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is undefined."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_1
    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {p0, v4, v5}, Lcom/jme3/material/plugins/J3MLoader;->readValue(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 278
    .local v3, valueObj:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/shader/VarType;->isTextureType()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    iget-object v4, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v5

    check-cast v3, Lcom/jme3/texture/Texture;

    .end local v3           #valueObj:Ljava/lang/Object;
    invoke-virtual {v4, v0, v5, v3}, Lcom/jme3/material/Material;->setTextureParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Lcom/jme3/texture/Texture;)V

    .line 283
    :goto_0
    return-void

    .line 281
    .restart local v3       #valueObj:Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v3}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private readWorldParams(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    .local p1, worldParams:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/util/blockparser/Statement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    .line 299
    .local v1, statement:Lcom/jme3/util/blockparser/Statement;
    iget-object v2, p0, Lcom/jme3/material/plugins/J3MLoader;->technique:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/material/TechniqueDef;->addWorldParam(Ljava/lang/String;)Z

    goto :goto_0

    .line 301
    .end local v1           #statement:Lcom/jme3/util/blockparser/Statement;
    :cond_0
    return-void
.end method

.method private throwIfNequal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "expected"
    .parameter "got"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a statement, got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', got \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    return-void
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
    .line 506
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 508
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 510
    .local v0, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->key:Lcom/jme3/asset/AssetKey;

    .line 511
    invoke-static {v0}, Lcom/jme3/util/blockparser/BlockLanguageParser;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jme3/material/plugins/J3MLoader;->loadFromRoot(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    if-eqz v1, :cond_3

    .line 519
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/asset/MaterialKey;

    if-nez v1, :cond_2

    .line 520
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Material instances must be loaded via MaterialKey"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v1

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->material:Lcom/jme3/material/Material;

    .line 526
    :goto_0
    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/jme3/material/plugins/J3MLoader;->materialDef:Lcom/jme3/material/MaterialDef;

    goto :goto_0
.end method
