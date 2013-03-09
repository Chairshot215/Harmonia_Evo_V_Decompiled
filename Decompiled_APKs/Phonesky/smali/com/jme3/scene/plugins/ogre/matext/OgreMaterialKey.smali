.class public Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;
.super Lcom/jme3/asset/AssetKey;
.source "OgreMaterialKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey",
        "<",
        "Lcom/jme3/material/MaterialList;",
        ">;"
    }
.end annotation


# instance fields
.field private matExts:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/jme3/asset/AssetKey;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getMaterialExtensionSet()Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/matext/OgreMaterialKey;->matExts:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;

    return-object v0
.end method
