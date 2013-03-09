.class public Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;
.super Ljava/lang/Object;
.source "MaterialExtension.java"


# instance fields
.field private jmeMatDefName:Ljava/lang/String;

.field private textureMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getJmeMatDefName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;->jmeMatDefName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ogreTexAlias"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;->textureMappings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
