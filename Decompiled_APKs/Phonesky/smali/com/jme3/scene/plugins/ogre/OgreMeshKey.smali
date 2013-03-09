.class public Lcom/jme3/scene/plugins/ogre/OgreMeshKey;
.super Lcom/jme3/asset/ModelKey;
.source "OgreMeshKey.java"


# instance fields
.field private materialList:Lcom/jme3/material/MaterialList;

.field private materialName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/jme3/asset/ModelKey;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/jme3/asset/ModelKey;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/material/MaterialList;)V
    .locals 0
    .parameter "name"
    .parameter "materialList"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/jme3/asset/ModelKey;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p2, p0, Lcom/jme3/scene/plugins/ogre/OgreMeshKey;->materialList:Lcom/jme3/material/MaterialList;

    .line 62
    return-void
.end method


# virtual methods
.method public getMaterialList()Lcom/jme3/material/MaterialList;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/OgreMeshKey;->materialList:Lcom/jme3/material/MaterialList;

    return-object v0
.end method

.method public getMaterialName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/OgreMeshKey;->materialName:Ljava/lang/String;

    return-object v0
.end method
