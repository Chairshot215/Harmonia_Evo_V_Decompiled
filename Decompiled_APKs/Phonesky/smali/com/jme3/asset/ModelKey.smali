.class public Lcom/jme3/asset/ModelKey;
.super Lcom/jme3/asset/AssetKey;
.source "ModelKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey",
        "<",
        "Lcom/jme3/scene/Spatial;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jme3/asset/AssetKey;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public createClonedInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "asset"

    .prologue
    .line 57
    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Spatial;

    .line 58
    .local v0, model:Lcom/jme3/scene/Spatial;
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->clone()Lcom/jme3/scene/Spatial;

    move-result-object v1

    return-object v1
.end method

.method public useSmartCache()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method
