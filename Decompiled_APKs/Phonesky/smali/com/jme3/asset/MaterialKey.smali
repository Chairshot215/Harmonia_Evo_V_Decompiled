.class public Lcom/jme3/asset/MaterialKey;
.super Lcom/jme3/asset/AssetKey;
.source "MaterialKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/jme3/asset/AssetKey;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public createClonedInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "asset"

    .prologue
    .line 26
    move-object v0, p1

    check-cast v0, Lcom/jme3/material/Material;

    .line 27
    .local v0, mat:Lcom/jme3/material/Material;
    invoke-virtual {v0}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v1

    return-object v1
.end method

.method public useSmartCache()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
