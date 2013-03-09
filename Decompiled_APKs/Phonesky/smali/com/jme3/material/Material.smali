.class public Lcom/jme3/material/Material;
.super Ljava/lang/Object;
.source "Material.java"

# interfaces
.implements Lcom/jme3/asset/Asset;
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/Material$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/jme3/asset/Asset;",
        "Ljava/lang/Cloneable;",
        "Lcom/jme3/export/Savable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/jme3/material/Material;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final additiveLight:Lcom/jme3/material/RenderState;

.field private static final depthOnly:Lcom/jme3/material/RenderState;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final nullDirLight:Lcom/jme3/math/Quaternion;


# instance fields
.field private additionalState:Lcom/jme3/material/RenderState;

.field private transient ambientLightColor:Lcom/jme3/math/ColorRGBA;

.field private def:Lcom/jme3/material/MaterialDef;

.field private key:Lcom/jme3/asset/AssetKey;

.field private mergedRenderState:Lcom/jme3/material/RenderState;

.field private nextTexUnit:I

.field private paramValues:Lcom/jme3/util/ListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/ListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/MatParam;",
            ">;"
        }
    .end annotation
.end field

.field private receivesShadows:Z

.field private sortingId:I

.field private technique:Lcom/jme3/material/Technique;

.field private techniques:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/Technique;",
            ">;"
        }
    .end annotation
.end field

.field private transparent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x4080

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    const-class v0, Lcom/jme3/material/Material;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/jme3/material/Material;->$assertionsDisabled:Z

    .line 73
    const-class v0, Lcom/jme3/material/Material;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/Material;->logger:Ljava/util/logging/Logger;

    .line 74
    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v0, Lcom/jme3/material/Material;->additiveLight:Lcom/jme3/material/RenderState;

    .line 75
    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    sput-object v0, Lcom/jme3/material/Material;->depthOnly:Lcom/jme3/material/RenderState;

    .line 76
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0, v4, v3, v4, v3}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/material/Material;->nullDirLight:Lcom/jme3/math/Quaternion;

    .line 79
    sget-object v0, Lcom/jme3/material/Material;->depthOnly:Lcom/jme3/material/RenderState;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    .line 80
    sget-object v0, Lcom/jme3/material/Material;->depthOnly:Lcom/jme3/material/RenderState;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    .line 81
    sget-object v0, Lcom/jme3/material/Material;->depthOnly:Lcom/jme3/material/RenderState;

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    .line 82
    sget-object v0, Lcom/jme3/material/Material;->depthOnly:Lcom/jme3/material/RenderState;

    invoke-virtual {v0, v2}, Lcom/jme3/material/RenderState;->setColorWrite(Z)V

    .line 84
    sget-object v0, Lcom/jme3/material/Material;->additiveLight:Lcom/jme3/material/RenderState;

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v1}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 85
    sget-object v0, Lcom/jme3/material/Material;->additiveLight:Lcom/jme3/material/RenderState;

    invoke-virtual {v0, v2}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/jme3/util/ListMap;

    invoke-direct {v0}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    .line 93
    iput v1, p0, Lcom/jme3/material/Material;->nextTexUnit:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    .line 95
    new-instance v0, Lcom/jme3/material/RenderState;

    invoke-direct {v0}, Lcom/jme3/material/RenderState;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/Material;->mergedRenderState:Lcom/jme3/material/RenderState;

    .line 96
    iput-boolean v1, p0, Lcom/jme3/material/Material;->transparent:Z

    .line 97
    iput-boolean v1, p0, Lcom/jme3/material/Material;->receivesShadows:Z

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/material/Material;->sortingId:I

    .line 99
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jme3/material/Material;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V
    .locals 1
    .parameter "contentMan"
    .parameter "defName"

    .prologue
    .line 116
    new-instance v0, Lcom/jme3/asset/AssetKey;

    invoke-direct {v0, p2}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MaterialDef;

    invoke-direct {p0, v0}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/material/MaterialDef;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/jme3/material/MaterialDef;)V
    .locals 5
    .parameter "def"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v2, Lcom/jme3/util/ListMap;

    invoke-direct {v2}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v2, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    .line 92
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    .line 93
    iput v3, p0, Lcom/jme3/material/Material;->nextTexUnit:I

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    .line 95
    new-instance v2, Lcom/jme3/material/RenderState;

    invoke-direct {v2}, Lcom/jme3/material/RenderState;-><init>()V

    iput-object v2, p0, Lcom/jme3/material/Material;->mergedRenderState:Lcom/jme3/material/RenderState;

    .line 96
    iput-boolean v3, p0, Lcom/jme3/material/Material;->transparent:Z

    .line 97
    iput-boolean v3, p0, Lcom/jme3/material/Material;->receivesShadows:Z

    .line 98
    const/4 v2, -0x1

    iput v2, p0, Lcom/jme3/material/Material;->sortingId:I

    .line 99
    new-instance v2, Lcom/jme3/math/ColorRGBA;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v4, v4, v4, v3}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jme3/material/Material;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Material definition cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    .line 108
    invoke-virtual {p1}, Lcom/jme3/material/MaterialDef;->getMaterialParams()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MatParam;

    .line 109
    .local v1, param:Lcom/jme3/material/MatParam;
    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 110
    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    .end local v1           #param:Lcom/jme3/material/MatParam;
    :cond_2
    return-void
.end method

.method private autoSelectTechnique(Lcom/jme3/renderer/RenderManager;)V
    .locals 2
    .parameter "rm"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-nez v0, :cond_2

    .line 901
    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    invoke-interface {v0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    const-string v0, "FixedFunc"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/material/Material;->selectTechnique(Ljava/lang/String;Lcom/jme3/renderer/RenderManager;)V

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    const-string v0, "Default"

    invoke-virtual {p0, v0, p1}, Lcom/jme3/material/Material;->selectTechnique(Ljava/lang/String;Lcom/jme3/renderer/RenderManager;)V

    goto :goto_0

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v0}, Lcom/jme3/material/Technique;->isNeedReload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    iget-object v1, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v1}, Lcom/jme3/material/MaterialDef;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/material/Technique;->makeCurrent(Lcom/jme3/asset/AssetManager;)V

    goto :goto_0
.end method

.method private checkSetParam(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "type"
    .parameter "name"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 372
    iget-object v2, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v2, p2}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v1

    .line 373
    .local v1, paramDef:Lcom/jme3/material/MatParam;
    move-object v0, p2

    .line 375
    .local v0, newName:Ljava/lang/String;
    if-nez v1, :cond_3

    const-string v2, "m_"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v2, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v2, v0}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v1

    .line 378
    if-nez v1, :cond_0

    .line 379
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Material parameter is not defined: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_0
    sget-object v2, Lcom/jme3/material/Material;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Material parameter {0} uses a deprecated naming convention use {1} instead "

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object v0, v5, v8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    if-eq v2, p1, :cond_2

    .line 388
    sget-object v2, Lcom/jme3/material/Material;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Material parameter being set: {0} with type {1} doesn\'\'t match definition types {2}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-virtual {p1}, Lcom/jme3/shader/VarType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    :cond_2
    return-object v0

    .line 383
    :cond_3
    if-nez v1, :cond_1

    .line 384
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Material parameter is not defined: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private clearTextureParam(Ljava/lang/String;)V
    .locals 8
    .parameter "name"

    .prologue
    .line 450
    const/4 v5, 0x0

    invoke-direct {p0, v5, p1}, Lcom/jme3/material/Material;->checkSetParam(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 452
    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->getTextureParam(Ljava/lang/String;)Lcom/jme3/material/MatParamTexture;

    move-result-object v4

    .line 453
    .local v4, val:Lcom/jme3/material/MatParamTexture;
    if-nez v4, :cond_0

    .line 454
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The given texture for parameter \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" is null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 457
    :cond_0
    invoke-virtual {v4}, Lcom/jme3/material/MatParamTexture;->getUnit()I

    move-result v3

    .line 458
    .local v3, texUnit:I
    iget-object v5, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v5, p1}, Lcom/jme3/util/ListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget v5, p0, Lcom/jme3/material/Material;->nextTexUnit:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/jme3/material/Material;->nextTexUnit:I

    .line 460
    iget-object v5, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v5}, Lcom/jme3/util/ListMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MatParam;

    .line 461
    .local v1, param:Lcom/jme3/material/MatParam;
    instance-of v5, v1, Lcom/jme3/material/MatParamTexture;

    if-eqz v5, :cond_1

    move-object v2, v1

    .line 462
    check-cast v2, Lcom/jme3/material/MatParamTexture;

    .line 463
    .local v2, texParam:Lcom/jme3/material/MatParamTexture;
    invoke-virtual {v2}, Lcom/jme3/material/MatParamTexture;->getUnit()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 464
    invoke-virtual {v2}, Lcom/jme3/material/MatParamTexture;->getUnit()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Lcom/jme3/material/MatParamTexture;->setUnit(I)V

    goto :goto_0

    .line 469
    .end local v1           #param:Lcom/jme3/material/MatParam;
    .end local v2           #texParam:Lcom/jme3/material/MatParamTexture;
    :cond_2
    const/4 v5, -0x1

    iput v5, p0, Lcom/jme3/material/Material;->sortingId:I

    .line 470
    return-void
.end method

.method private clearUniformsSetByCurrent(Lcom/jme3/shader/Shader;)V
    .locals 4
    .parameter "shader"

    .prologue
    .line 949
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getUniformMap()Lcom/jme3/util/ListMap;

    move-result-object v3

    .line 950
    .local v3, uniforms:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<Ljava/lang/String;Lcom/jme3/shader/Uniform;>;"
    invoke-virtual {v3}, Lcom/jme3/util/ListMap;->size()I

    move-result v1

    .line 951
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 952
    invoke-virtual {v3, v0}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/Uniform;

    .line 953
    .local v2, u:Lcom/jme3/shader/Uniform;
    invoke-virtual {v2}, Lcom/jme3/shader/Uniform;->clearSetByCurrentMaterial()V

    .line 951
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    .end local v2           #u:Lcom/jme3/shader/Uniform;
    :cond_0
    return-void
.end method

.method private getAmbientColor(Lcom/jme3/light/LightList;)Lcom/jme3/math/ColorRGBA;
    .locals 5
    .parameter "lightList"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 618
    iget-object v2, p0, Lcom/jme3/material/Material;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2, v3, v3, v3, v4}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    .line 619
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/light/LightList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 620
    invoke-virtual {p1, v0}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v1

    .line 621
    .local v1, l:Lcom/jme3/light/Light;
    instance-of v2, v1, Lcom/jme3/light/AmbientLight;

    if-eqz v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/jme3/material/Material;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/ColorRGBA;->addLocal(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    .line 619
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    .end local v1           #l:Lcom/jme3/light/Light;
    :cond_1
    iget-object v2, p0, Lcom/jme3/material/Material;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    iput v4, v2, Lcom/jme3/math/ColorRGBA;->a:F

    .line 626
    iget-object v2, p0, Lcom/jme3/material/Material;->ambientLightColor:Lcom/jme3/math/ColorRGBA;

    return-object v2
.end method

.method private resetUniformsNotSetByCurrent(Lcom/jme3/shader/Shader;)V
    .locals 5
    .parameter "shader"

    .prologue
    .line 958
    invoke-virtual {p1}, Lcom/jme3/shader/Shader;->getUniformMap()Lcom/jme3/util/ListMap;

    move-result-object v3

    .line 959
    .local v3, uniforms:Lcom/jme3/util/ListMap;,"Lcom/jme3/util/ListMap<Ljava/lang/String;Lcom/jme3/shader/Uniform;>;"
    invoke-virtual {v3}, Lcom/jme3/util/ListMap;->size()I

    move-result v1

    .line 960
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 961
    invoke-virtual {v3, v0}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/Uniform;

    .line 962
    .local v2, u:Lcom/jme3/shader/Uniform;
    invoke-virtual {v2}, Lcom/jme3/shader/Uniform;->isSetByCurrentMaterial()Z

    move-result v4

    if-nez v4, :cond_0

    .line 963
    invoke-virtual {v2}, Lcom/jme3/shader/Uniform;->clearValue()V

    .line 960
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 966
    .end local v2           #u:Lcom/jme3/shader/Uniform;
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/material/Material;
    .locals 7

    .prologue
    .line 219
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/Material;

    .line 221
    .local v3, mat:Lcom/jme3/material/Material;
    iget-object v4, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    if-eqz v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    invoke-virtual {v4}, Lcom/jme3/material/RenderState;->clone()Lcom/jme3/material/RenderState;

    move-result-object v4

    iput-object v4, v3, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    .line 224
    :cond_0
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    .line 225
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    .line 227
    new-instance v4, Lcom/jme3/util/ListMap;

    invoke-direct {v4}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v4, v3, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    .line 228
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v4}, Lcom/jme3/util/ListMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 229
    iget-object v4, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v4, v2}, Lcom/jme3/util/ListMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 230
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jme3/material/MatParam;>;"
    iget-object v5, v3, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/material/MatParam;

    invoke-virtual {v4}, Lcom/jme3/material/MatParam;->clone()Lcom/jme3/material/MatParam;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/jme3/material/MatParam;>;"
    .end local v2           #i:I
    .end local v3           #mat:Lcom/jme3/material/Material;
    :catch_0
    move-exception v1

    .line 235
    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 233
    .end local v1           #ex:Ljava/lang/CloneNotSupportedException;
    .restart local v2       #i:I
    .restart local v3       #mat:Lcom/jme3/material/Material;
    :cond_1
    return-object v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/jme3/material/Material;)I
    .locals 2
    .parameter "m"

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/jme3/material/Material;->getSortId()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/material/Material;->getSortId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    check-cast p1, Lcom/jme3/material/Material;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->compareTo(Lcom/jme3/material/Material;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 207
    instance-of v0, p1, Lcom/jme3/material/Material;

    if-eqz v0, :cond_1

    .line 208
    check-cast p1, Lcom/jme3/material/Material;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/jme3/material/Material;->compareTo(Lcom/jme3/material/Material;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    .restart local p1
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActiveTechnique()Lcom/jme3/material/Technique;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    return-object v0
.end method

.method public getAdditionalRenderState()Lcom/jme3/material/RenderState;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    if-nez v0, :cond_0

    .line 318
    sget-object v0, Lcom/jme3/material/RenderState;->ADDITIONAL:Lcom/jme3/material/RenderState;

    invoke-virtual {v0}, Lcom/jme3/material/RenderState;->clone()Lcom/jme3/material/RenderState;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    return-object v0
.end method

.method public getMaterialDef()Lcom/jme3/material/MaterialDef;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    return-object v0
.end method

.method public getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;
    .locals 2
    .parameter "name"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v1, p1}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MatParam;

    .line 342
    .local v0, param:Lcom/jme3/material/MatParam;
    return-object v0
.end method

.method public getParams()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/jme3/material/MatParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v0}, Lcom/jme3/util/ListMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSortId()I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 172
    invoke-virtual {p0}, Lcom/jme3/material/Material;->getActiveTechnique()Lcom/jme3/material/Technique;

    move-result-object v2

    .line 173
    .local v2, t:Lcom/jme3/material/Technique;
    iget v5, p0, Lcom/jme3/material/Material;->sortingId:I

    if-ne v5, v6, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/jme3/material/Technique;->getShader()Lcom/jme3/shader/Shader;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 174
    const/4 v4, -0x1

    .line 175
    .local v4, texId:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v5}, Lcom/jme3/util/ListMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 176
    iget-object v5, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v5, v0}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MatParam;

    .line 177
    .local v1, param:Lcom/jme3/material/MatParam;
    instance-of v5, v1, Lcom/jme3/material/MatParamTexture;

    if-eqz v5, :cond_1

    move-object v3, v1

    .line 178
    check-cast v3, Lcom/jme3/material/MatParamTexture;

    .line 179
    .local v3, tex:Lcom/jme3/material/MatParamTexture;
    invoke-virtual {v3}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 180
    if-ne v4, v6, :cond_0

    .line 181
    const/4 v4, 0x0

    .line 183
    :cond_0
    invoke-virtual {v3}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/texture/Image;->getId()I

    move-result v5

    rem-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    .line 175
    .end local v3           #tex:Lcom/jme3/material/MatParamTexture;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .end local v1           #param:Lcom/jme3/material/MatParam;
    :cond_2
    invoke-virtual {v2}, Lcom/jme3/material/Technique;->getShader()Lcom/jme3/shader/Shader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/shader/Shader;->getId()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v5, v4

    iput v5, p0, Lcom/jme3/material/Material;->sortingId:I

    .line 189
    .end local v0           #i:I
    .end local v4           #texId:I
    :cond_3
    iget v5, p0, Lcom/jme3/material/Material;->sortingId:I

    return v5
.end method

.method public getTextureParam(Ljava/lang/String;)Lcom/jme3/material/MatParamTexture;
    .locals 2
    .parameter "name"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v1, p1}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MatParam;

    .line 354
    .local v0, param:Lcom/jme3/material/MatParam;
    instance-of v1, v0, Lcom/jme3/material/MatParamTexture;

    if-eqz v1, :cond_0

    .line 355
    check-cast v0, Lcom/jme3/material/MatParamTexture;

    .line 357
    .end local v0           #param:Lcom/jme3/material/MatParam;
    :goto_0
    return-object v0

    .restart local v0       #param:Lcom/jme3/material/MatParam;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/jme3/material/Material;->transparent:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1052
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v1

    .line 1054
    const-string v0, "render_state"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState;

    iput-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    .line 1055
    const-string v0, "is_transparent"

    invoke-interface {v1, v0, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/Material;->transparent:Z

    .line 1058
    const-string v0, "material_def"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1059
    const-string v0, "parameters"

    invoke-interface {v1, v0, v2}, Lcom/jme3/export/InputCapsule;->readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1066
    const-class v2, Lcom/jme3/material/Material;

    invoke-interface {v1, v2}, Lcom/jme3/export/InputCapsule;->getSavableVersion(Ljava/lang/Class;)I

    move-result v1

    .line 1067
    if-ge v1, v3, :cond_17

    move v7, v3

    .line 1070
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_16

    move v2, v3

    .line 1073
    :goto_1
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getFormatVersion()I

    move-result v1

    if-nez v1, :cond_15

    .line 1075
    const-string v1, "Common/MatDefs/Misc/VertexColor.j3md"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1078
    const-string v1, "Common/MatDefs/Misc/Unshaded.j3md"

    move v5, v3

    move-object v6, v1

    move v1, v4

    .line 1095
    :goto_2
    sget-boolean v8, Lcom/jme3/material/Material;->$assertionsDisabled:Z

    if-nez v8, :cond_5

    if-eqz v7, :cond_0

    if-nez v2, :cond_5

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1079
    :cond_1
    const-string v1, "Common/MatDefs/Misc/SimpleTextured.j3md"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Common/MatDefs/Misc/SolidColor.j3md"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1082
    :cond_2
    const-string v1, "Common/MatDefs/Misc/Unshaded.j3md"

    move v5, v4

    move-object v6, v1

    move v1, v4

    goto :goto_2

    .line 1083
    :cond_3
    const-string v1, "Common/MatDefs/Misc/WireColor.j3md"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1085
    invoke-virtual {p0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    .line 1086
    const-string v1, "Common/MatDefs/Misc/Unshaded.j3md"

    move v5, v4

    move-object v6, v1

    move v1, v4

    goto :goto_2

    .line 1087
    :cond_4
    const-string v1, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1089
    const-string v1, "SeperateTexCoord"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MatParam;

    .line 1090
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_14

    .line 1091
    const-string v1, "SeperateTexCoord"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    move-object v6, v5

    move v5, v4

    .line 1092
    goto :goto_2

    :cond_5
    move v11, v1

    move-object v1, v6

    move v6, v5

    move v5, v11

    .line 1098
    :goto_3
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v8

    new-instance v9, Lcom/jme3/asset/AssetKey;

    invoke-direct {v9, v1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MaterialDef;

    iput-object v1, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    .line 1099
    new-instance v1, Lcom/jme3/util/ListMap;

    invoke-direct {v1}, Lcom/jme3/util/ListMap;-><init>()V

    iput-object v1, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    .line 1102
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MatParam;

    .line 1104
    instance-of v1, v0, Lcom/jme3/material/MatParamTexture;

    if-eqz v1, :cond_8

    move-object v1, v0

    .line 1105
    check-cast v1, Lcom/jme3/material/MatParamTexture;

    .line 1107
    iget v9, p0, Lcom/jme3/material/Material;->nextTexUnit:I

    invoke-virtual {v1}, Lcom/jme3/material/MatParamTexture;->getUnit()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    if-ge v9, v10, :cond_7

    .line 1108
    invoke-virtual {v1}, Lcom/jme3/material/MatParamTexture;->getUnit()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/jme3/material/Material;->nextTexUnit:I

    .line 1113
    :cond_7
    invoke-virtual {v1}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v1}, Lcom/jme3/material/MatParamTexture;->getTextureValue()Lcom/jme3/texture/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1117
    :cond_8
    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v1, v9}, Lcom/jme3/material/Material;->checkSetParam(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/material/MatParam;->setName(Ljava/lang/String;)V

    .line 1118
    iget-object v1, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v0}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1121
    :cond_9
    if-eqz v7, :cond_b

    .line 1124
    iget-object v0, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0}, Lcom/jme3/material/MaterialDef;->getMaterialParams()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MatParam;

    .line 1125
    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/util/ListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_a

    .line 1126
    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v8

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v7, v8, v0}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_5

    .line 1130
    :cond_b
    if-eqz v2, :cond_d

    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    if-eqz v0, :cond_d

    .line 1133
    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-boolean v1, v1, Lcom/jme3/material/RenderState;->offsetEnabled:Z

    iput-boolean v1, v0, Lcom/jme3/material/RenderState;->applyPolyOffset:Z

    .line 1134
    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-boolean v1, v1, Lcom/jme3/material/RenderState;->alphaTest:Z

    iput-boolean v1, v0, Lcom/jme3/material/RenderState;->applyAlphaFallOff:Z

    .line 1135
    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-boolean v1, v1, Lcom/jme3/material/RenderState;->alphaTest:Z

    iput-boolean v1, v0, Lcom/jme3/material/RenderState;->applyAlphaTest:Z

    .line 1136
    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v0, v0, Lcom/jme3/material/RenderState;->blendMode:Lcom/jme3/material/RenderState$BlendMode;

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    if-eq v0, v2, :cond_10

    move v0, v3

    :goto_6
    iput-boolean v0, v1, Lcom/jme3/material/RenderState;->applyBlendMode:Z

    .line 1137
    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-boolean v0, v0, Lcom/jme3/material/RenderState;->colorWrite:Z

    if-nez v0, :cond_11

    move v0, v3

    :goto_7
    iput-boolean v0, v1, Lcom/jme3/material/RenderState;->applyColorWrite:Z

    .line 1138
    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v0, v0, Lcom/jme3/material/RenderState;->cullMode:Lcom/jme3/material/RenderState$FaceCullMode;

    sget-object v2, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    if-eq v0, v2, :cond_12

    move v0, v3

    :goto_8
    iput-boolean v0, v1, Lcom/jme3/material/RenderState;->applyCullMode:Z

    .line 1139
    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-boolean v0, v0, Lcom/jme3/material/RenderState;->depthTest:Z

    if-nez v0, :cond_13

    move v0, v3

    :goto_9
    iput-boolean v0, v1, Lcom/jme3/material/RenderState;->applyDepthTest:Z

    .line 1140
    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-boolean v1, v1, Lcom/jme3/material/RenderState;->depthWrite:Z

    if-nez v1, :cond_c

    move v4, v3

    :cond_c
    iput-boolean v4, v0, Lcom/jme3/material/RenderState;->applyDepthWrite:Z

    .line 1141
    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-boolean v1, v1, Lcom/jme3/material/RenderState;->pointSprite:Z

    iput-boolean v1, v0, Lcom/jme3/material/RenderState;->applyPointSprite:Z

    .line 1142
    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-boolean v1, v1, Lcom/jme3/material/RenderState;->stencilTest:Z

    iput-boolean v1, v0, Lcom/jme3/material/RenderState;->applyStencilTest:Z

    .line 1143
    iget-object v0, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v1, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-boolean v1, v1, Lcom/jme3/material/RenderState;->wireframe:Z

    iput-boolean v1, v0, Lcom/jme3/material/RenderState;->applyWireFrame:Z

    .line 1145
    :cond_d
    if-eqz v6, :cond_e

    .line 1146
    const-string v0, "VertexColor"

    invoke-virtual {p0, v0, v3}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 1148
    :cond_e
    if-eqz v5, :cond_f

    .line 1149
    const-string v0, "SeparateTexCoord"

    invoke-virtual {p0, v0, v3}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 1151
    :cond_f
    return-void

    :cond_10
    move v0, v4

    .line 1136
    goto :goto_6

    :cond_11
    move v0, v4

    .line 1137
    goto :goto_7

    :cond_12
    move v0, v4

    .line 1138
    goto :goto_8

    :cond_13
    move v0, v4

    .line 1139
    goto :goto_9

    :cond_14
    move v1, v4

    move-object v6, v5

    move v5, v4

    goto/16 :goto_2

    :cond_15
    move v6, v4

    move-object v1, v5

    move v5, v4

    goto/16 :goto_3

    :cond_16
    move v2, v4

    goto/16 :goto_1

    :cond_17
    move v7, v4

    goto/16 :goto_0
.end method

.method public render(Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;)V
    .locals 8
    .parameter "geom"
    .parameter "rm"

    .prologue
    .line 976
    invoke-direct {p0, p2}, Lcom/jme3/material/Material;->autoSelectTechnique(Lcom/jme3/renderer/RenderManager;)V

    .line 978
    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v2

    .line 980
    .local v2, r:Lcom/jme3/renderer/Renderer;
    iget-object v5, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v5}, Lcom/jme3/material/Technique;->getDef()Lcom/jme3/material/TechniqueDef;

    move-result-object v4

    .line 982
    .local v4, techDef:Lcom/jme3/material/TechniqueDef;
    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getLightMode()Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v5

    sget-object v6, Lcom/jme3/material/TechniqueDef$LightMode;->MultiPass:Lcom/jme3/material/TechniqueDef$LightMode;

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getWorldLightList()Lcom/jme3/light/LightList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/light/LightList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 987
    :cond_0
    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 988
    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/jme3/renderer/Renderer;->applyRenderState(Lcom/jme3/material/RenderState;)V

    .line 1000
    :goto_1
    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->isUsingShaders()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1002
    iget-object v5, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v5}, Lcom/jme3/material/Technique;->getShader()Lcom/jme3/shader/Shader;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jme3/material/Material;->clearUniformsSetByCurrent(Lcom/jme3/shader/Shader;)V

    .line 1003
    iget-object v5, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v5}, Lcom/jme3/material/Technique;->getWorldBindUniforms()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/jme3/renderer/RenderManager;->updateUniformBindings(Ljava/util/List;)V

    .line 1007
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v5, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v5}, Lcom/jme3/util/ListMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 1008
    iget-object v5, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    invoke-virtual {v5, v0}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MatParam;

    .line 1009
    .local v1, param:Lcom/jme3/material/MatParam;
    iget-object v5, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v1, v2, v5}, Lcom/jme3/material/MatParam;->apply(Lcom/jme3/renderer/Renderer;Lcom/jme3/material/Technique;)V

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 990
    .end local v0           #i:I
    .end local v1           #param:Lcom/jme3/material/MatParam;
    :cond_2
    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getRenderState()Lcom/jme3/material/RenderState;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 991
    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getRenderState()Lcom/jme3/material/RenderState;

    move-result-object v5

    iget-object v6, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v7, p0, Lcom/jme3/material/Material;->mergedRenderState:Lcom/jme3/material/RenderState;

    invoke-virtual {v5, v6, v7}, Lcom/jme3/material/RenderState;->copyMergedTo(Lcom/jme3/material/RenderState;Lcom/jme3/material/RenderState;)Lcom/jme3/material/RenderState;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/jme3/renderer/Renderer;->applyRenderState(Lcom/jme3/material/RenderState;)V

    goto :goto_1

    .line 993
    :cond_3
    sget-object v5, Lcom/jme3/material/RenderState;->DEFAULT:Lcom/jme3/material/RenderState;

    iget-object v6, p0, Lcom/jme3/material/Material;->additionalState:Lcom/jme3/material/RenderState;

    iget-object v7, p0, Lcom/jme3/material/Material;->mergedRenderState:Lcom/jme3/material/RenderState;

    invoke-virtual {v5, v6, v7}, Lcom/jme3/material/RenderState;->copyMergedTo(Lcom/jme3/material/RenderState;Lcom/jme3/material/RenderState;)Lcom/jme3/material/RenderState;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/jme3/renderer/Renderer;->applyRenderState(Lcom/jme3/material/RenderState;)V

    goto :goto_1

    .line 1012
    .restart local v0       #i:I
    :cond_4
    iget-object v5, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v5}, Lcom/jme3/material/Technique;->getShader()Lcom/jme3/shader/Shader;

    move-result-object v3

    .line 1015
    .local v3, shader:Lcom/jme3/shader/Shader;
    sget-object v5, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$material$TechniqueDef$LightMode:[I

    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getLightMode()Lcom/jme3/material/TechniqueDef$LightMode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/material/TechniqueDef$LightMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1034
    :goto_3
    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->isUsingShaders()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1036
    invoke-direct {p0, v3}, Lcom/jme3/material/Material;->resetUniformsNotSetByCurrent(Lcom/jme3/shader/Shader;)V

    .line 1037
    invoke-interface {v2, v3}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    .line 1040
    :cond_5
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getLodLevel()I

    move-result v6

    const/4 v7, 0x1

    invoke-interface {v2, v5, v6, v7}, Lcom/jme3/renderer/Renderer;->renderMesh(Lcom/jme3/scene/Mesh;II)V

    goto/16 :goto_0

    .line 1017
    :pswitch_0
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lcom/jme3/renderer/Renderer;->setLighting(Lcom/jme3/light/LightList;)V

    goto :goto_3

    .line 1020
    :pswitch_1
    const/4 v5, 0x4

    invoke-virtual {p0, v3, p1, v5}, Lcom/jme3/material/Material;->updateLightListUniforms(Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;I)V

    goto :goto_3

    .line 1023
    :pswitch_2
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getWorldLightList()Lcom/jme3/light/LightList;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/jme3/renderer/Renderer;->setLighting(Lcom/jme3/light/LightList;)V

    goto :goto_3

    .line 1027
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/jme3/material/Material;->resetUniformsNotSetByCurrent(Lcom/jme3/shader/Shader;)V

    .line 1028
    invoke-virtual {p0, v3, p1, p2}, Lcom/jme3/material/Material;->renderMultipassLighting(Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;)V

    goto/16 :goto_0

    .line 1015
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected renderMultipassLighting(Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/renderer/RenderManager;)V
    .locals 35
    .parameter "shader"
    .parameter "g"
    .parameter "rm"

    .prologue
    .line 717
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v23

    .line 718
    .local v23, r:Lcom/jme3/renderer/Renderer;
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Geometry;->getWorldLightList()Lcom/jme3/light/LightList;

    move-result-object v18

    .line 719
    .local v18, lightList:Lcom/jme3/light/LightList;
    const-string v31, "g_LightDirection"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v17

    .line 720
    .local v17, lightDir:Lcom/jme3/shader/Uniform;
    const-string v31, "g_LightColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v16

    .line 721
    .local v16, lightColor:Lcom/jme3/shader/Uniform;
    const-string v31, "g_LightPosition"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v19

    .line 722
    .local v19, lightPos:Lcom/jme3/shader/Uniform;
    const-string v31, "g_AmbientLightColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v5

    .line 723
    .local v5, ambientColor:Lcom/jme3/shader/Uniform;
    const/4 v13, 0x1

    .line 724
    .local v13, isFirstLight:Z
    const/4 v14, 0x0

    .line 726
    .local v14, isSecondLight:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/jme3/light/LightList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v10, v0, :cond_3

    .line 727
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v15

    .line 728
    .local v15, l:Lcom/jme3/light/Light;
    instance-of v0, v15, Lcom/jme3/light/AmbientLight;

    move/from16 v31, v0

    if-eqz v31, :cond_0

    .line 726
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 732
    :cond_0
    if-eqz v13, :cond_2

    .line 734
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/jme3/material/Material;->getAmbientColor(Lcom/jme3/light/LightList;)Lcom/jme3/math/ColorRGBA;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 735
    const/4 v13, 0x0

    .line 736
    const/4 v14, 0x1

    .line 744
    :cond_1
    :goto_2
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v30

    .line 745
    .local v30, vars:Lcom/jme3/util/TempVars;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    move-object/from16 v27, v0

    .line 746
    .local v27, tmpLightDirection:Lcom/jme3/math/Quaternion;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/jme3/util/TempVars;->quat2:Lcom/jme3/math/Quaternion;

    move-object/from16 v28, v0

    .line 747
    .local v28, tmpLightPosition:Lcom/jme3/math/Quaternion;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/jme3/util/TempVars;->color:Lcom/jme3/math/ColorRGBA;

    move-object/from16 v26, v0

    .line 748
    .local v26, tmpLightColor:Lcom/jme3/math/ColorRGBA;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/jme3/util/TempVars;->vect4f:Lcom/jme3/math/Vector4f;

    move-object/from16 v29, v0

    .line 750
    .local v29, tmpVec:Lcom/jme3/math/Vector4f;
    invoke-virtual {v15}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v6

    .line 751
    .local v6, color:Lcom/jme3/math/ColorRGBA;
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    .line 752
    invoke-virtual {v15}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/jme3/light/Light$Type;->getId()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, v26

    iput v0, v1, Lcom/jme3/math/ColorRGBA;->a:F

    .line 753
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 755
    sget-object v31, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    invoke-virtual {v15}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/jme3/light/Light$Type;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_0

    .line 796
    new-instance v31, Ljava/lang/UnsupportedOperationException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Unknown type of light: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v15}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 737
    .end local v6           #color:Lcom/jme3/math/ColorRGBA;
    .end local v26           #tmpLightColor:Lcom/jme3/math/ColorRGBA;
    .end local v27           #tmpLightDirection:Lcom/jme3/math/Quaternion;
    .end local v28           #tmpLightPosition:Lcom/jme3/math/Quaternion;
    .end local v29           #tmpVec:Lcom/jme3/math/Vector4f;
    .end local v30           #vars:Lcom/jme3/util/TempVars;
    :cond_2
    if-eqz v14, :cond_1

    .line 738
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    sget-object v32, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 740
    sget-object v31, Lcom/jme3/material/Material;->additiveLight:Lcom/jme3/material/RenderState;

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->applyRenderState(Lcom/jme3/material/RenderState;)V

    .line 741
    const/4 v14, 0x0

    goto/16 :goto_2

    .restart local v6       #color:Lcom/jme3/math/ColorRGBA;
    .restart local v26       #tmpLightColor:Lcom/jme3/math/ColorRGBA;
    .restart local v27       #tmpLightDirection:Lcom/jme3/math/Quaternion;
    .restart local v28       #tmpLightPosition:Lcom/jme3/math/Quaternion;
    .restart local v29       #tmpVec:Lcom/jme3/math/Vector4f;
    .restart local v30       #vars:Lcom/jme3/util/TempVars;
    :pswitch_0
    move-object v9, v15

    .line 757
    check-cast v9, Lcom/jme3/light/DirectionalLight;

    .line 758
    .local v9, dl:Lcom/jme3/light/DirectionalLight;
    invoke-virtual {v9}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v7

    .line 760
    .local v7, dir:Lcom/jme3/math/Vector3f;
    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v31

    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v32

    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v33

    const/high16 v34, -0x4080

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    .line 761
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 762
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    .line 763
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 798
    .end local v7           #dir:Lcom/jme3/math/Vector3f;
    .end local v9           #dl:Lcom/jme3/light/DirectionalLight;
    :goto_3
    invoke-virtual/range {v30 .. v30}, Lcom/jme3/util/TempVars;->release()V

    .line 799
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    .line 800
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Geometry;->getLodLevel()I

    move-result v32

    const/16 v33, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lcom/jme3/renderer/Renderer;->renderMesh(Lcom/jme3/scene/Mesh;II)V

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v20, v15

    .line 766
    check-cast v20, Lcom/jme3/light/PointLight;

    .line 767
    .local v20, pl:Lcom/jme3/light/PointLight;
    invoke-virtual/range {v20 .. v20}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v21

    .line 768
    .local v21, pos:Lcom/jme3/math/Vector3f;
    invoke-virtual/range {v20 .. v20}, Lcom/jme3/light/PointLight;->getInvRadius()F

    move-result v11

    .line 770
    .local v11, invRadius:F
    invoke-virtual/range {v21 .. v21}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v31

    invoke-virtual/range {v21 .. v21}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v32

    invoke-virtual/range {v21 .. v21}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v33

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    .line 771
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 772
    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    .line 773
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto :goto_3

    .end local v11           #invRadius:F
    .end local v20           #pl:Lcom/jme3/light/PointLight;
    .end local v21           #pos:Lcom/jme3/math/Vector3f;
    :pswitch_2
    move-object/from16 v24, v15

    .line 776
    check-cast v24, Lcom/jme3/light/SpotLight;

    .line 777
    .local v24, sl:Lcom/jme3/light/SpotLight;
    invoke-virtual/range {v24 .. v24}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v22

    .line 778
    .local v22, pos2:Lcom/jme3/math/Vector3f;
    invoke-virtual/range {v24 .. v24}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v8

    .line 779
    .local v8, dir2:Lcom/jme3/math/Vector3f;
    invoke-virtual/range {v24 .. v24}, Lcom/jme3/light/SpotLight;->getInvSpotRange()F

    move-result v12

    .line 780
    .local v12, invRange:F
    invoke-virtual/range {v24 .. v24}, Lcom/jme3/light/SpotLight;->getPackedAngleCos()F

    move-result v25

    .line 782
    .local v25, spotAngleCos:F
    invoke-virtual/range {v22 .. v22}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v31

    invoke-virtual/range {v22 .. v22}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v32

    invoke-virtual/range {v22 .. v22}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v33

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    .line 783
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 788
    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v31

    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v32

    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v33

    const/16 v34, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    .line 789
    invoke-virtual/range {p3 .. p3}, Lcom/jme3/renderer/RenderManager;->getCurrentCamera()Lcom/jme3/renderer/Camera;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    .line 790
    invoke-virtual/range {v29 .. v29}, Lcom/jme3/math/Vector4f;->getX()F

    move-result v31

    invoke-virtual/range {v29 .. v29}, Lcom/jme3/math/Vector4f;->getY()F

    move-result v32

    invoke-virtual/range {v29 .. v29}, Lcom/jme3/math/Vector4f;->getZ()F

    move-result v33

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    .line 792
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 803
    .end local v6           #color:Lcom/jme3/math/ColorRGBA;
    .end local v8           #dir2:Lcom/jme3/math/Vector3f;
    .end local v12           #invRange:F
    .end local v15           #l:Lcom/jme3/light/Light;
    .end local v22           #pos2:Lcom/jme3/math/Vector3f;
    .end local v24           #sl:Lcom/jme3/light/SpotLight;
    .end local v25           #spotAngleCos:F
    .end local v26           #tmpLightColor:Lcom/jme3/math/ColorRGBA;
    .end local v27           #tmpLightDirection:Lcom/jme3/math/Quaternion;
    .end local v28           #tmpLightPosition:Lcom/jme3/math/Quaternion;
    .end local v29           #tmpVec:Lcom/jme3/math/Vector4f;
    .end local v30           #vars:Lcom/jme3/util/TempVars;
    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/light/LightList;->size()I

    move-result v31

    if-lez v31, :cond_4

    .line 806
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/jme3/material/Material;->getAmbientColor(Lcom/jme3/light/LightList;)Lcom/jme3/math/ColorRGBA;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 807
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    sget-object v32, Lcom/jme3/math/ColorRGBA;->BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 808
    sget-object v31, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    sget-object v32, Lcom/jme3/material/Material;->nullDirLight:Lcom/jme3/math/Quaternion;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 809
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->setShader(Lcom/jme3/shader/Shader;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Geometry;->getLodLevel()I

    move-result v32

    const/16 v33, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Lcom/jme3/renderer/Renderer;->renderMesh(Lcom/jme3/scene/Mesh;II)V

    .line 812
    :cond_4
    return-void

    .line 755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public selectTechnique(Ljava/lang/String;Lcom/jme3/renderer/RenderManager;)V
    .locals 9
    .parameter "name"
    .parameter "renderManager"

    .prologue
    .line 839
    iget-object v6, p0, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/material/Technique;

    .line 840
    .local v3, tech:Lcom/jme3/material/Technique;
    if-nez v3, :cond_8

    .line 843
    invoke-virtual {p2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v6

    invoke-interface {v6}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object v2

    .line 845
    .local v2, rendererCaps:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/jme3/renderer/Caps;>;"
    const-string v6, "Default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 846
    iget-object v6, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v6}, Lcom/jme3/material/MaterialDef;->getDefaultTechniques()Ljava/util/List;

    move-result-object v5

    .line 847
    .local v5, techDefs:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/material/TechniqueDef;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 848
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No default techniques are available on material \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v8}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 851
    :cond_1
    const/4 v1, 0x0

    .line 852
    .local v1, lastTech:Lcom/jme3/material/TechniqueDef;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/material/TechniqueDef;

    .line 853
    .local v4, techDef:Lcom/jme3/material/TechniqueDef;
    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getRequiredCaps()Ljava/util/EnumSet;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 855
    new-instance v3, Lcom/jme3/material/Technique;

    .end local v3           #tech:Lcom/jme3/material/Technique;
    invoke-direct {v3, p0, v4}, Lcom/jme3/material/Technique;-><init>(Lcom/jme3/material/Material;Lcom/jme3/material/TechniqueDef;)V

    .line 856
    .restart local v3       #tech:Lcom/jme3/material/Technique;
    iget-object v6, p0, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .end local v4           #techDef:Lcom/jme3/material/TechniqueDef;
    :cond_2
    if-nez v3, :cond_7

    .line 862
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No default technique on material \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v8}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is supported by the video hardware. The caps "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/jme3/material/TechniqueDef;->getRequiredCaps()Ljava/util/EnumSet;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " are required."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 859
    .restart local v4       #techDef:Lcom/jme3/material/TechniqueDef;
    :cond_3
    move-object v1, v4

    goto :goto_0

    .line 869
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lastTech:Lcom/jme3/material/TechniqueDef;
    .end local v4           #techDef:Lcom/jme3/material/TechniqueDef;
    .end local v5           #techDefs:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/material/TechniqueDef;>;"
    :cond_4
    iget-object v6, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v6, p1}, Lcom/jme3/material/MaterialDef;->getTechniqueDef(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef;

    move-result-object v4

    .line 870
    .restart local v4       #techDef:Lcom/jme3/material/TechniqueDef;
    if-nez v4, :cond_5

    .line 871
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "For material "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v8}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", technique not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 874
    :cond_5
    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getRequiredCaps()Ljava/util/EnumSet;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 875
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The explicitly chosen technique \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' on material \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v8}, Lcom/jme3/material/MaterialDef;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "requires caps "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getRequiredCaps()Ljava/util/EnumSet;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " which are not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "supported by the video renderer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 880
    :cond_6
    new-instance v3, Lcom/jme3/material/Technique;

    .end local v3           #tech:Lcom/jme3/material/Technique;
    invoke-direct {v3, p0, v4}, Lcom/jme3/material/Technique;-><init>(Lcom/jme3/material/Material;Lcom/jme3/material/TechniqueDef;)V

    .line 881
    .restart local v3       #tech:Lcom/jme3/material/Technique;
    iget-object v6, p0, Lcom/jme3/material/Material;->techniques:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    .end local v2           #rendererCaps:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/jme3/renderer/Caps;>;"
    .end local v4           #techDef:Lcom/jme3/material/TechniqueDef;
    :cond_7
    iput-object v3, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    .line 890
    iget-object v6, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v6}, Lcom/jme3/material/MaterialDef;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/jme3/material/Technique;->makeCurrent(Lcom/jme3/asset/AssetManager;)V

    .line 893
    const/4 v6, -0x1

    iput v6, p0, Lcom/jme3/material/Material;->sortingId:I

    .line 894
    :goto_1
    return-void

    .line 883
    :cond_8
    iget-object v6, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-ne v6, v3, :cond_7

    goto :goto_1
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 554
    sget-object v0, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 555
    return-void
.end method

.method public setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 584
    sget-object v0, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 585
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 564
    sget-object v0, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/material/Material;->setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 565
    return-void
.end method

.method public setKey(Lcom/jme3/asset/AssetKey;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/jme3/material/Material;->key:Lcom/jme3/asset/AssetKey;

    .line 156
    return-void
.end method

.method public setParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V
    .locals 5
    .parameter "name"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 403
    invoke-direct {p0, p2, p1}, Lcom/jme3/material/Material;->checkSetParam(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->getParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v1

    .line 406
    .local v1, val:Lcom/jme3/material/MatParam;
    iget-object v2, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    invoke-virtual {v2, p1, p2, p3}, Lcom/jme3/material/Technique;->notifySetParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 409
    :cond_0
    if-nez v1, :cond_1

    .line 410
    iget-object v2, p0, Lcom/jme3/material/Material;->def:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v2, p1}, Lcom/jme3/material/MaterialDef;->getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v0

    .line 411
    .local v0, paramDef:Lcom/jme3/material/MatParam;
    iget-object v2, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    new-instance v3, Lcom/jme3/material/MatParam;

    invoke-virtual {v0}, Lcom/jme3/material/MatParam;->getFixedFuncBinding()Lcom/jme3/material/FixedFuncBinding;

    move-result-object v4

    invoke-direct {v3, p2, p1, p3, v4}, Lcom/jme3/material/MatParam;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;Lcom/jme3/material/FixedFuncBinding;)V

    invoke-virtual {v2, p1, v3}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v0           #paramDef:Lcom/jme3/material/MatParam;
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {v1, p3}, Lcom/jme3/material/MatParam;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 510
    if-nez p2, :cond_0

    .line 512
    invoke-direct {p0, p1}, Lcom/jme3/material/Material;->clearTextureParam(Ljava/lang/String;)V

    .line 535
    :goto_0
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x0

    .line 517
    .local v0, paramType:Lcom/jme3/shader/VarType;
    sget-object v1, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 531
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown texture type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getType()Lcom/jme3/texture/Texture$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :pswitch_0
    sget-object v0, Lcom/jme3/shader/VarType;->Texture2D:Lcom/jme3/shader/VarType;

    .line 534
    :goto_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/material/Material;->setTextureParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Lcom/jme3/texture/Texture;)V

    goto :goto_0

    .line 522
    :pswitch_1
    sget-object v0, Lcom/jme3/shader/VarType;->TextureArray:Lcom/jme3/shader/VarType;

    .line 523
    goto :goto_1

    .line 525
    :pswitch_2
    sget-object v0, Lcom/jme3/shader/VarType;->Texture3D:Lcom/jme3/shader/VarType;

    .line 526
    goto :goto_1

    .line 528
    :pswitch_3
    sget-object v0, Lcom/jme3/shader/VarType;->TextureCubeMap:Lcom/jme3/shader/VarType;

    .line 529
    goto :goto_1

    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setTextureParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Lcom/jme3/texture/Texture;)V
    .locals 5
    .parameter "name"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 482
    if-nez p3, :cond_0

    .line 483
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 486
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/jme3/material/Material;->checkSetParam(Lcom/jme3/shader/VarType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-virtual {p0, p1}, Lcom/jme3/material/Material;->getTextureParam(Ljava/lang/String;)Lcom/jme3/material/MatParamTexture;

    move-result-object v0

    .line 488
    .local v0, val:Lcom/jme3/material/MatParamTexture;
    if-nez v0, :cond_2

    .line 489
    iget-object v1, p0, Lcom/jme3/material/Material;->paramValues:Lcom/jme3/util/ListMap;

    new-instance v2, Lcom/jme3/material/MatParamTexture;

    iget v3, p0, Lcom/jme3/material/Material;->nextTexUnit:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/jme3/material/Material;->nextTexUnit:I

    invoke-direct {v2, p2, p1, p3, v3}, Lcom/jme3/material/MatParamTexture;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Lcom/jme3/texture/Texture;I)V

    invoke-virtual {v1, p1, v2}, Lcom/jme3/util/ListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :goto_0
    iget-object v1, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/jme3/material/Material;->technique:Lcom/jme3/material/Technique;

    iget v2, p0, Lcom/jme3/material/Material;->nextTexUnit:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/jme3/material/Technique;->notifySetParam(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 499
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/jme3/material/Material;->sortingId:I

    .line 500
    return-void

    .line 491
    :cond_2
    invoke-virtual {v0, p3}, Lcom/jme3/material/MatParamTexture;->setTextureValue(Lcom/jme3/texture/Texture;)V

    goto :goto_0
.end method

.method public setTransparent(Z)V
    .locals 0
    .parameter "transparent"

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/jme3/material/Material;->transparent:Z

    .line 277
    return-void
.end method

.method protected updateLightListUniforms(Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;I)V
    .locals 43
    .parameter "shader"
    .parameter "g"
    .parameter "numLights"

    .prologue
    .line 644
    if-nez p3, :cond_1

    .line 713
    :cond_0
    return-void

    .line 648
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Geometry;->getWorldLightList()Lcom/jme3/light/LightList;

    move-result-object v38

    .line 649
    .local v38, lightList:Lcom/jme3/light/LightList;
    const-string v3, "g_LightColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v2

    .line 650
    .local v2, lightColor:Lcom/jme3/shader/Uniform;
    const-string v3, "g_LightPosition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v8

    .line 651
    .local v8, lightPos:Lcom/jme3/shader/Uniform;
    const-string v3, "g_LightDirection"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v37

    .line 652
    .local v37, lightDir:Lcom/jme3/shader/Uniform;
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/jme3/shader/Uniform;->setVector4Length(I)V

    .line 653
    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/jme3/shader/Uniform;->setVector4Length(I)V

    .line 654
    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/jme3/shader/Uniform;->setVector4Length(I)V

    .line 656
    const-string v3, "g_AmbientLightColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/jme3/shader/Shader;->getUniform(Ljava/lang/String;)Lcom/jme3/shader/Uniform;

    move-result-object v31

    .line 657
    .local v31, ambientColor:Lcom/jme3/shader/Uniform;
    sget-object v3, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/jme3/material/Material;->getAmbientColor(Lcom/jme3/light/LightList;)Lcom/jme3/math/ColorRGBA;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Lcom/jme3/shader/Uniform;->setValue(Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    .line 659
    const/4 v7, 0x0

    .line 661
    .local v7, lightIndex:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move/from16 v0, p3

    if-ge v14, v0, :cond_3

    .line 662
    invoke-virtual/range {v38 .. v38}, Lcom/jme3/light/LightList;->size()I

    move-result v3

    if-gt v3, v14, :cond_2

    .line 663
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    .line 664
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    .line 704
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 661
    :pswitch_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 666
    :cond_2
    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v36

    .line 667
    .local v36, l:Lcom/jme3/light/Light;
    invoke-virtual/range {v36 .. v36}, Lcom/jme3/light/Light;->getColor()Lcom/jme3/math/ColorRGBA;

    move-result-object v32

    .line 668
    .local v32, color:Lcom/jme3/math/ColorRGBA;
    invoke-virtual/range {v32 .. v32}, Lcom/jme3/math/ColorRGBA;->getRed()F

    move-result v10

    invoke-virtual/range {v32 .. v32}, Lcom/jme3/math/ColorRGBA;->getGreen()F

    move-result v11

    invoke-virtual/range {v32 .. v32}, Lcom/jme3/math/ColorRGBA;->getBlue()F

    move-result v12

    invoke-virtual/range {v36 .. v36}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/light/Light$Type;->getId()I

    move-result v3

    int-to-float v13, v3

    move-object v9, v2

    invoke-virtual/range {v9 .. v14}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    .line 674
    sget-object v3, Lcom/jme3/material/Material$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    invoke-virtual/range {v36 .. v36}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/light/Light$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 700
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type of light: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    move-object/from16 v35, v36

    .line 676
    check-cast v35, Lcom/jme3/light/DirectionalLight;

    .line 677
    .local v35, dl:Lcom/jme3/light/DirectionalLight;
    invoke-virtual/range {v35 .. v35}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v33

    .line 678
    .local v33, dir:Lcom/jme3/math/Vector3f;
    invoke-virtual/range {v33 .. v33}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v9

    invoke-virtual/range {v33 .. v33}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v10

    invoke-virtual/range {v33 .. v33}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v11

    const/high16 v12, -0x4080

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    goto :goto_1

    .end local v33           #dir:Lcom/jme3/math/Vector3f;
    .end local v35           #dl:Lcom/jme3/light/DirectionalLight;
    :pswitch_2
    move-object/from16 v39, v36

    .line 681
    check-cast v39, Lcom/jme3/light/PointLight;

    .line 682
    .local v39, pl:Lcom/jme3/light/PointLight;
    invoke-virtual/range {v39 .. v39}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v40

    .line 683
    .local v40, pos:Lcom/jme3/math/Vector3f;
    invoke-virtual/range {v39 .. v39}, Lcom/jme3/light/PointLight;->getInvRadius()F

    move-result v12

    .line 684
    .local v12, invRadius:F
    invoke-virtual/range {v40 .. v40}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v9

    invoke-virtual/range {v40 .. v40}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v10

    invoke-virtual/range {v40 .. v40}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v11

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    goto/16 :goto_1

    .end local v12           #invRadius:F
    .end local v39           #pl:Lcom/jme3/light/PointLight;
    .end local v40           #pos:Lcom/jme3/math/Vector3f;
    :pswitch_3
    move-object/from16 v42, v36

    .line 687
    check-cast v42, Lcom/jme3/light/SpotLight;

    .line 688
    .local v42, sl:Lcom/jme3/light/SpotLight;
    invoke-virtual/range {v42 .. v42}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v41

    .line 689
    .local v41, pos2:Lcom/jme3/math/Vector3f;
    invoke-virtual/range {v42 .. v42}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v34

    .line 690
    .local v34, dir2:Lcom/jme3/math/Vector3f;
    invoke-virtual/range {v42 .. v42}, Lcom/jme3/light/SpotLight;->getInvSpotRange()F

    move-result v19

    .line 691
    .local v19, invRange:F
    invoke-virtual/range {v42 .. v42}, Lcom/jme3/light/SpotLight;->getPackedAngleCos()F

    move-result v24

    .line 693
    .local v24, spotAngleCos:F
    invoke-virtual/range {v41 .. v41}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v16

    invoke-virtual/range {v41 .. v41}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v17

    invoke-virtual/range {v41 .. v41}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v18

    move-object v15, v8

    move/from16 v20, v7

    invoke-virtual/range {v15 .. v20}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    .line 694
    invoke-virtual/range {v34 .. v34}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v21

    invoke-virtual/range {v34 .. v34}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v22

    invoke-virtual/range {v34 .. v34}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v23

    move-object/from16 v20, v37

    move/from16 v25, v7

    invoke-virtual/range {v20 .. v25}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    goto/16 :goto_1

    .line 707
    .end local v19           #invRange:F
    .end local v24           #spotAngleCos:F
    .end local v32           #color:Lcom/jme3/math/ColorRGBA;
    .end local v34           #dir2:Lcom/jme3/math/Vector3f;
    .end local v36           #l:Lcom/jme3/light/Light;
    .end local v41           #pos2:Lcom/jme3/math/Vector3f;
    .end local v42           #sl:Lcom/jme3/light/SpotLight;
    :cond_3
    :goto_2
    move/from16 v0, p3

    if-ge v7, v0, :cond_0

    .line 708
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    .line 709
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v8

    move/from16 v30, v7

    invoke-virtual/range {v25 .. v30}, Lcom/jme3/shader/Uniform;->setVector4InArray(FFFFI)V

    .line 711
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
