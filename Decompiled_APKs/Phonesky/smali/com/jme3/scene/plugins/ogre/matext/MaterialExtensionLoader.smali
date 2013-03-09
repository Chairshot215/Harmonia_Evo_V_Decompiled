.class public Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;
.super Ljava/lang/Object;
.source "MaterialExtensionLoader.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private key:Lcom/jme3/asset/AssetKey;

.field private list:Lcom/jme3/material/MaterialList;

.field private matExt:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;

.field private matExts:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;

.field private matName:Ljava/lang/String;

.field private material:Lcom/jme3/material/Material;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readExtendingMaterial(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/material/Material;
    .locals 10
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 94
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, split:[Ljava/lang/String;
    aget-object v6, v3, v9

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, subsplit:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->matName:Ljava/lang/String;

    .line 97
    aget-object v6, v4, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, extendedMat:Ljava/lang/String;
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->matExts:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;

    invoke-virtual {v6, v1}, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;->getMaterialExtension(Ljava/lang/String;)Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;

    move-result-object v6

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->matExt:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;

    .line 100
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->matExt:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;

    if-nez v6, :cond_0

    .line 101
    sget-object v6, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Cannot find MaterialExtension for: {0}. Ignoring material."

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iput-object v5, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->matExt:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;

    .line 110
    :goto_0
    return-object v5

    .line 106
    :cond_0
    new-instance v5, Lcom/jme3/material/Material;

    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->matExt:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;

    invoke-virtual {v7}, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;->getJmeMatDefName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->material:Lcom/jme3/material/Material;

    .line 107
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    .line 108
    .local v0, extMatStat:Lcom/jme3/util/blockparser/Statement;
    invoke-direct {p0, v0}, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->readExtendingMaterialStatement(Lcom/jme3/util/blockparser/Statement;)V

    goto :goto_1

    .line 110
    .end local v0           #extMatStat:Lcom/jme3/util/blockparser/Statement;
    :cond_1
    iget-object v5, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->material:Lcom/jme3/material/Material;

    goto :goto_0
.end method

.method private readExtendingMaterialStatement(Lcom/jme3/util/blockparser/Statement;)V
    .locals 13
    .parameter "statement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, "set_texture_alias"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, split:[Ljava/lang/String;
    aget-object v0, v3, v12

    .line 72
    .local v0, aliasName:Ljava/lang/String;
    aget-object v6, v3, v10

    .line 74
    .local v6, texturePath:Ljava/lang/String;
    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->matExt:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;

    invoke-virtual {v7, v0}, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtension;->getTextureMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, jmeParamName:Ljava/lang/String;
    new-instance v5, Lcom/jme3/asset/TextureKey;

    invoke-direct {v5, v6, v11}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    .line 77
    .local v5, texKey:Lcom/jme3/asset/TextureKey;
    invoke-virtual {v5, v12}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    .line 78
    invoke-virtual {v5, v11}, Lcom/jme3/asset/TextureKey;->setAsCube(Z)V

    .line 82
    :try_start_0
    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v7, v5}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object v4

    .line 83
    .local v4, tex:Lcom/jme3/texture/Texture;
    sget-object v7, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v4, v7}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->material:Lcom/jme3/material/Material;

    invoke-virtual {v7, v2, v4}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 91
    .end local v0           #aliasName:Ljava/lang/String;
    .end local v2           #jmeParamName:Ljava/lang/String;
    .end local v3           #split:[Ljava/lang/String;
    .end local v4           #tex:Lcom/jme3/texture/Texture;
    .end local v5           #texKey:Lcom/jme3/asset/TextureKey;
    .end local v6           #texturePath:Ljava/lang/String;
    :cond_0
    return-void

    .line 84
    .restart local v0       #aliasName:Ljava/lang/String;
    .restart local v2       #jmeParamName:Ljava/lang/String;
    .restart local v3       #split:[Ljava/lang/String;
    .restart local v5       #texKey:Lcom/jme3/asset/TextureKey;
    .restart local v6       #texturePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 85
    .local v1, ex:Lcom/jme3/asset/AssetNotFoundException;
    sget-object v7, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "Cannot locate {0} for material {1}"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v11

    iget-object v11, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->key:Lcom/jme3/asset/AssetKey;

    aput-object v11, v10, v12

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    new-instance v4, Lcom/jme3/texture/Texture2D;

    invoke-static {}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderImage()Lcom/jme3/texture/Image;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/jme3/texture/Texture2D;-><init>(Lcom/jme3/texture/Image;)V

    .restart local v4       #tex:Lcom/jme3/texture/Texture;
    goto :goto_0
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;Ljava/util/List;)Lcom/jme3/material/MaterialList;
    .locals 8
    .parameter "assetManager"
    .parameter "key"
    .parameter "matExts"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetManager;",
            "Lcom/jme3/asset/AssetKey;",
            "Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;",
            "Ljava/util/List",
            "<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)",
            "Lcom/jme3/material/MaterialList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    .local p4, statements:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/util/blockparser/Statement;>;"
    iput-object p1, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 116
    iput-object p3, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->matExts:Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;

    .line 117
    iput-object p2, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->key:Lcom/jme3/asset/AssetKey;

    .line 119
    new-instance v6, Lcom/jme3/material/MaterialList;

    invoke-direct {v6}, Lcom/jme3/material/MaterialList;-><init>()V

    iput-object v6, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->list:Lcom/jme3/material/MaterialList;

    .line 121
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/util/blockparser/Statement;

    .line 122
    .local v4, statement:Lcom/jme3/util/blockparser/Statement;
    invoke-virtual {v4}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "import"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 125
    invoke-virtual {v4}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "material"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    invoke-direct {p0, v4}, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->readExtendingMaterial(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/material/Material;

    move-result-object v3

    .line 127
    .local v3, material:Lcom/jme3/material/Material;
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->list:Lcom/jme3/material/MaterialList;

    iget-object v7, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->matName:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Lcom/jme3/material/MaterialList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->matName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionSet;->getNameMappings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 129
    .local v2, matAliases:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 130
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 131
    .local v5, string:Ljava/lang/String;
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->list:Lcom/jme3/material/MaterialList;

    invoke-virtual {v6, v5, v3}, Lcom/jme3/material/MaterialList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #matAliases:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #material:Lcom/jme3/material/Material;
    .end local v4           #statement:Lcom/jme3/util/blockparser/Statement;
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/jme3/scene/plugins/ogre/matext/MaterialExtensionLoader;->list:Lcom/jme3/material/MaterialList;

    return-object v6
.end method
