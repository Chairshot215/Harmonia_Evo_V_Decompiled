.class public Lcom/jme3/asset/AndroidAssetManager;
.super Lcom/jme3/asset/DesktopAssetManager;
.source "AndroidAssetManager.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/jme3/asset/AndroidAssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/asset/AndroidAssetManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/asset/AndroidAssetManager;-><init>(Ljava/net/URL;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Lcom/jme3/asset/DesktopAssetManager;-><init>()V

    .line 76
    const-string v0, "org.xml.sax.driver"

    const-string v1, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    const-string v0, ""

    const-class v1, Lcom/jme3/asset/plugins/AndroidLocator;

    invoke-virtual {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLocator(Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    const-string v0, ""

    const-class v1, Lcom/jme3/asset/plugins/ClasspathLocator;

    invoke-virtual {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLocator(Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    const-class v0, Lcom/jme3/texture/plugins/AndroidImageLoader;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "jpg"

    aput-object v2, v1, v3

    const-string v2, "bmp"

    aput-object v2, v1, v4

    const-string v2, "gif"

    aput-object v2, v1, v5

    const-string v2, "png"

    aput-object v2, v1, v6

    const-string v2, "jpeg"

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 83
    const-class v0, Lcom/jme3/audio/plugins/AndroidAudioLoader;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ogg"

    aput-object v2, v1, v3

    const-string v2, "mp3"

    aput-object v2, v1, v4

    const-string v2, "wav"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 84
    const-class v0, Lcom/jme3/material/plugins/J3MLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "j3m"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 85
    const-class v0, Lcom/jme3/material/plugins/J3MLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "j3md"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 86
    const-class v0, Lcom/jme3/shader/plugins/GLSLLoader;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "vert"

    aput-object v2, v1, v3

    const-string v2, "frag"

    aput-object v2, v1, v4

    const-string v2, "glsl"

    aput-object v2, v1, v5

    const-string v2, "glsllib"

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 87
    const-class v0, Lcom/jme3/export/binary/BinaryImporter;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "j3o"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 88
    const-class v0, Lcom/jme3/font/plugins/BitmapFontLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "fnt"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 91
    const-class v0, Lcom/jme3/texture/plugins/DDSLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "dds"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 92
    const-class v0, Lcom/jme3/texture/plugins/PFMLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "pfm"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 93
    const-class v0, Lcom/jme3/texture/plugins/HDRLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "hdr"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 94
    const-class v0, Lcom/jme3/texture/plugins/TGALoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "tga"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 95
    const-class v0, Lcom/jme3/scene/plugins/OBJLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "obj"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 96
    const-class v0, Lcom/jme3/scene/plugins/MTLLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "mtl"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 97
    const-class v0, Lcom/jme3/scene/plugins/ogre/MeshLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "mesh.xml"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 98
    const-class v0, Lcom/jme3/scene/plugins/ogre/SkeletonLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "skeleton.xml"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 99
    const-class v0, Lcom/jme3/scene/plugins/ogre/MaterialLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "material"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 100
    const-class v0, Lcom/jme3/scene/plugins/ogre/SceneLoader;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "scene"

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/jme3/asset/AndroidAssetManager;->registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/jme3/asset/AndroidAssetManager;->logger:Ljava/util/logging/Logger;

    const-string v1, "AndroidAssetManager created."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private varargs registerLoaderSafe(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "extensions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jme3/asset/AssetLoader;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, loaderClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jme3/asset/AssetLoader;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/jme3/asset/AndroidAssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/jme3/asset/AndroidAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed to load AssetLoader"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;
    .locals 2
    .parameter "key"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/jme3/asset/AndroidAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture;

    .line 119
    .local v0, tex:Lcom/jme3/texture/Texture;
    sget-object v1, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setAnisotropicFilter(I)V

    .line 121
    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->usesMipMapLevels()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    .line 126
    :goto_0
    return-object v0

    .line 124
    :cond_0
    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    goto :goto_0
.end method
