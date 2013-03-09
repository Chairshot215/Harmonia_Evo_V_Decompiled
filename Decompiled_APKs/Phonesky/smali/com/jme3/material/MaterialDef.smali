.class public Lcom/jme3/material/MaterialDef;
.super Ljava/lang/Object;
.source "MaterialDef.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private assetName:Ljava/lang/String;

.field private defaultTechs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jme3/material/TechniqueDef;",
            ">;"
        }
    .end annotation
.end field

.field private matParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/MatParam;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private techniques:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/TechniqueDef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/material/MaterialDef;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V
    .locals 3
    .parameter "assetManager"
    .parameter "name"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/jme3/material/MaterialDef;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 72
    iput-object p2, p0, Lcom/jme3/material/MaterialDef;->name:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/MaterialDef;->techniques:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/MaterialDef;->matParams:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/MaterialDef;->defaultTechs:Ljava/util/List;

    .line 76
    sget-object v0, Lcom/jme3/material/MaterialDef;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Loaded material definition: {0}"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method


# virtual methods
.method public addMaterialParam(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;Lcom/jme3/material/FixedFuncBinding;)V
    .locals 2
    .parameter "type"
    .parameter "name"
    .parameter "value"
    .parameter "ffBinding"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->matParams:Ljava/util/Map;

    new-instance v1, Lcom/jme3/material/MatParam;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/jme3/material/MatParam;-><init>(Lcom/jme3/shader/VarType;Ljava/lang/String;Ljava/lang/Object;Lcom/jme3/material/FixedFuncBinding;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public addTechniqueDef(Lcom/jme3/material/TechniqueDef;)V
    .locals 2
    .parameter "technique"

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->defaultTechs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->techniques:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAssetManager()Lcom/jme3/asset/AssetManager;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->assetManager:Lcom/jme3/asset/AssetManager;

    return-object v0
.end method

.method public getDefaultTechniques()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/material/TechniqueDef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->defaultTechs:Ljava/util/List;

    return-object v0
.end method

.method public getMaterialParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;
    .locals 1
    .parameter "name"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->matParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/MatParam;

    return-object v0
.end method

.method public getMaterialParams()Ljava/util/Collection;
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
    .line 149
    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->matParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTechniqueDef(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef;
    .locals 1
    .parameter "name"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/jme3/material/MaterialDef;->techniques:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/TechniqueDef;

    return-object v0
.end method

.method public setAssetName(Ljava/lang/String;)V
    .locals 0
    .parameter "assetName"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jme3/material/MaterialDef;->assetName:Ljava/lang/String;

    .line 96
    return-void
.end method
