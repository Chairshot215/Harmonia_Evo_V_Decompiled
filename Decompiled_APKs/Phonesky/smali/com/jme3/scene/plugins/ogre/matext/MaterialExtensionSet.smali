.class public Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;
.super Ljava/lang/Object;
.source "MaterialExtensionSet.java"


# instance fields
.field private extensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;",
            ">;"
        }
    .end annotation
.end field

.field private nameMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;->extensions:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;->nameMappings:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getMaterialExtension(Ljava/lang/String;)Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;
    .locals 1
    .parameter "baseMatName"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;

    return-object v0
.end method

.method public getNameMappings(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;->nameMappings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
