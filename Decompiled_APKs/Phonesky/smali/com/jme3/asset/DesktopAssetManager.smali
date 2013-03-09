.class public Lcom/jme3/asset/DesktopAssetManager;
.super Ljava/lang/Object;
.source "DesktopAssetManager.java"

# interfaces
.implements Lcom/jme3/asset/AssetManager;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final cache:Lcom/jme3/asset/AssetCache;

.field private classLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private eventListener:Lcom/jme3/asset/AssetEventListener;

.field private final handler:Lcom/jme3/asset/ImplHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/jme3/asset/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/asset/DesktopAssetManager;-><init>(Ljava/net/URL;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 6
    .parameter "configFile"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v3, Lcom/jme3/asset/AssetCache;

    invoke-direct {v3}, Lcom/jme3/asset/AssetCache;-><init>()V

    iput-object v3, p0, Lcom/jme3/asset/DesktopAssetManager;->cache:Lcom/jme3/asset/AssetCache;

    .line 65
    new-instance v3, Lcom/jme3/asset/ImplHandler;

    invoke-direct {v3, p0}, Lcom/jme3/asset/ImplHandler;-><init>(Lcom/jme3/asset/AssetManager;)V

    iput-object v3, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    .line 67
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListener:Lcom/jme3/asset/AssetEventListener;

    .line 83
    if-eqz p1, :cond_0

    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Lcom/jme3/asset/AssetConfig;

    invoke-direct {v0, p0}, Lcom/jme3/asset/AssetConfig;-><init>(Lcom/jme3/asset/AssetManager;)V

    .line 87
    .local v0, cfg:Lcom/jme3/asset/AssetConfig;
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 88
    invoke-virtual {v0, v2}, Lcom/jme3/asset/AssetConfig;->loadText(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    if-eqz v2, :cond_0

    .line 94
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    .end local v0           #cfg:Lcom/jme3/asset/AssetConfig;
    .end local v2           #stream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    sget-object v3, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    const-string v4, "DesktopAssetManager created."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 100
    return-void

    .line 89
    .restart local v2       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 90
    .local v1, ex:Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Failed to load asset config"

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    if-eqz v2, :cond_0

    .line 94
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 95
    :catch_1
    move-exception v3

    goto :goto_0

    .line 92
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 94
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 96
    :cond_1
    :goto_1
    throw v3

    .line 95
    .restart local v0       #cfg:Lcom/jme3/asset/AssetConfig;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v0           #cfg:Lcom/jme3/asset/AssetConfig;
    :catch_3
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public getClassLoaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->classLoaders:Ljava/util/List;

    return-object v0
.end method

.method public loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/jme3/asset/AssetKey",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, key:Lcom/jme3/asset/AssetKey;,"Lcom/jme3/asset/AssetKey<TT;>;"
    if-nez p1, :cond_0

    .line 225
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "key cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 227
    :cond_0
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListener:Lcom/jme3/asset/AssetEventListener;

    if-eqz v7, :cond_1

    .line 228
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListener:Lcom/jme3/asset/AssetEventListener;

    invoke-interface {v7, p1}, Lcom/jme3/asset/AssetEventListener;->assetRequested(Lcom/jme3/asset/AssetKey;)V

    .line 230
    :cond_1
    const/4 v6, 0x0

    .line 231
    .local v6, smartKey:Lcom/jme3/asset/AssetKey;
    const/4 v4, 0x0

    .line 232
    .local v4, o:Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->shouldCache()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 233
    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->useSmartCache()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 234
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->cache:Lcom/jme3/asset/AssetCache;

    invoke-virtual {v7, p1}, Lcom/jme3/asset/AssetCache;->getFromSmartCache(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetCache$SmartAssetInfo;

    move-result-object v5

    .line 235
    .local v5, smartInfo:Lcom/jme3/asset/AssetCache$SmartAssetInfo;
    if-eqz v5, :cond_2

    .line 236
    iget-object v7, v5, Lcom/jme3/asset/AssetCache$SmartAssetInfo;->smartKey:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #smartKey:Lcom/jme3/asset/AssetKey;
    check-cast v6, Lcom/jme3/asset/AssetKey;

    .line 237
    .restart local v6       #smartKey:Lcom/jme3/asset/AssetKey;
    if-eqz v6, :cond_2

    .line 238
    iget-object v4, v5, Lcom/jme3/asset/AssetCache$SmartAssetInfo;->asset:Lcom/jme3/asset/Asset;

    .line 245
    .end local v4           #o:Ljava/lang/Object;
    .end local v5           #smartInfo:Lcom/jme3/asset/AssetCache$SmartAssetInfo;
    :cond_2
    :goto_0
    if-nez v4, :cond_b

    .line 246
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v7, p1}, Lcom/jme3/asset/ImplHandler;->aquireLoader(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetLoader;

    move-result-object v3

    .line 247
    .local v3, loader:Lcom/jme3/asset/AssetLoader;
    if-nez v3, :cond_4

    .line 248
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No loader registered for type \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getExtension()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 242
    .end local v3           #loader:Lcom/jme3/asset/AssetLoader;
    .restart local v4       #o:Ljava/lang/Object;
    :cond_3
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->cache:Lcom/jme3/asset/AssetCache;

    invoke-virtual {v7, p1}, Lcom/jme3/asset/AssetCache;->getFromCache(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 252
    .end local v4           #o:Ljava/lang/Object;
    .restart local v3       #loader:Lcom/jme3/asset/AssetLoader;
    :cond_4
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v7}, Lcom/jme3/asset/ImplHandler;->getLocatorCount()I

    move-result v7

    if-nez v7, :cond_5

    .line 253
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "There are no locators currently registered. Use AssetManager.registerLocator() to register a locator."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 259
    :cond_5
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v7, p1}, Lcom/jme3/asset/ImplHandler;->tryLocate(Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;

    move-result-object v2

    .line 260
    .local v2, info:Lcom/jme3/asset/AssetInfo;
    if-nez v2, :cond_7

    .line 261
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v7}, Lcom/jme3/asset/ImplHandler;->getParentKey()Lcom/jme3/asset/AssetKey;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListener:Lcom/jme3/asset/AssetEventListener;

    if-eqz v7, :cond_6

    .line 266
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListener:Lcom/jme3/asset/AssetEventListener;

    iget-object v8, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v8}, Lcom/jme3/asset/ImplHandler;->getParentKey()Lcom/jme3/asset/AssetKey;

    move-result-object v8

    invoke-interface {v7, v8, p1}, Lcom/jme3/asset/AssetEventListener;->assetDependencyNotFound(Lcom/jme3/asset/AssetKey;Lcom/jme3/asset/AssetKey;)V

    .line 268
    :cond_6
    new-instance v7, Lcom/jme3/asset/AssetNotFoundException;

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jme3/asset/AssetNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 272
    :cond_7
    :try_start_0
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v7, p1}, Lcom/jme3/asset/ImplHandler;->establishParentKey(Lcom/jme3/asset/AssetKey;)V

    .line 273
    invoke-interface {v3, v2}, Lcom/jme3/asset/AssetLoader;->load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 277
    .restart local v4       #o:Ljava/lang/Object;
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v7, p1}, Lcom/jme3/asset/ImplHandler;->releaseParentKey(Lcom/jme3/asset/AssetKey;)V

    .line 279
    if-nez v4, :cond_8

    .line 280
    new-instance v7, Lcom/jme3/asset/AssetLoadException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error occured while loading asset \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" using"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 274
    .end local v4           #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 275
    .local v1, ex:Ljava/io/IOException;
    :try_start_1
    new-instance v7, Lcom/jme3/asset/AssetLoadException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "An exception has occured while loading asset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v8, p1}, Lcom/jme3/asset/ImplHandler;->releaseParentKey(Lcom/jme3/asset/AssetKey;)V

    throw v7

    .line 282
    .restart local v4       #o:Ljava/lang/Object;
    :cond_8
    sget-object v7, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 283
    sget-object v7, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v9, "Loaded {0} with {1}"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :cond_9
    invoke-virtual {p1, v4}, Lcom/jme3/asset/AssetKey;->postProcess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 290
    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->shouldCache()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 291
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->cache:Lcom/jme3/asset/AssetCache;

    invoke-virtual {v7, p1, v4}, Lcom/jme3/asset/AssetCache;->addToCache(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V

    .line 293
    :cond_a
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListener:Lcom/jme3/asset/AssetEventListener;

    if-eqz v7, :cond_b

    .line 294
    iget-object v7, p0, Lcom/jme3/asset/DesktopAssetManager;->eventListener:Lcom/jme3/asset/AssetEventListener;

    invoke-interface {v7, p1}, Lcom/jme3/asset/AssetEventListener;->assetLoaded(Lcom/jme3/asset/AssetKey;)V

    .line 300
    .end local v2           #info:Lcom/jme3/asset/AssetInfo;
    .end local v3           #loader:Lcom/jme3/asset/AssetLoader;
    .end local v4           #o:Ljava/lang/Object;
    :cond_b
    invoke-virtual {p1, v4}, Lcom/jme3/asset/AssetKey;->createClonedInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    .local v0, clone:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->useSmartCache()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 303
    if-eqz v6, :cond_d

    move-object v7, v0

    .line 305
    check-cast v7, Lcom/jme3/asset/Asset;

    invoke-interface {v7, v6}, Lcom/jme3/asset/Asset;->setKey(Lcom/jme3/asset/AssetKey;)V

    .line 312
    :cond_c
    :goto_1
    return-object v0

    :cond_d
    move-object v7, v0

    .line 308
    check-cast v7, Lcom/jme3/asset/Asset;

    invoke-interface {v7, p1}, Lcom/jme3/asset/Asset;->setKey(Lcom/jme3/asset/AssetKey;)V

    goto :goto_1
.end method

.method public loadAudio(Lcom/jme3/audio/AudioKey;)Lcom/jme3/audio/AudioData;
    .locals 1
    .parameter "key"

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/AudioData;

    return-object v0
.end method

.method public loadMaterial(Ljava/lang/String;)Lcom/jme3/material/Material;
    .locals 1
    .parameter "name"

    .prologue
    .line 329
    new-instance v0, Lcom/jme3/asset/MaterialKey;

    invoke-direct {v0, p1}, Lcom/jme3/asset/MaterialKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/Material;

    return-object v0
.end method

.method public loadModel(Lcom/jme3/asset/ModelKey;)Lcom/jme3/scene/Spatial;
    .locals 1
    .parameter "key"

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public loadShader(Lcom/jme3/shader/ShaderKey;)Lcom/jme3/shader/Shader;
    .locals 7
    .parameter "key"

    .prologue
    .line 390
    iget-object v5, p0, Lcom/jme3/asset/DesktopAssetManager;->cache:Lcom/jme3/asset/AssetCache;

    invoke-virtual {v5, p1}, Lcom/jme3/asset/AssetCache;->getFromCache(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/Shader;

    .line 391
    .local v2, s:Lcom/jme3/shader/Shader;
    if-nez v2, :cond_0

    .line 392
    invoke-virtual {p1}, Lcom/jme3/shader/ShaderKey;->getVertName()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, vertName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/jme3/shader/ShaderKey;->getFragName()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, fragName:Ljava/lang/String;
    new-instance v5, Lcom/jme3/asset/AssetKey;

    invoke-direct {v5, v3}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 396
    .local v4, vertSource:Ljava/lang/String;
    new-instance v5, Lcom/jme3/asset/AssetKey;

    invoke-direct {v5, v0}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 398
    .local v1, fragSource:Ljava/lang/String;
    new-instance v2, Lcom/jme3/shader/Shader;

    .end local v2           #s:Lcom/jme3/shader/Shader;
    invoke-virtual {p1}, Lcom/jme3/shader/ShaderKey;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/jme3/shader/Shader;-><init>(Ljava/lang/String;)V

    .line 399
    .restart local v2       #s:Lcom/jme3/shader/Shader;
    sget-object v5, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderKey;->getDefines()Lcom/jme3/shader/DefineList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/shader/DefineList;->getCompiled()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/jme3/shader/Shader;->addSource(Lcom/jme3/shader/Shader$ShaderType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v5, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderKey;->getDefines()Lcom/jme3/shader/DefineList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/shader/DefineList;->getCompiled()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v0, v1, v6}, Lcom/jme3/shader/Shader;->addSource(Lcom/jme3/shader/Shader$ShaderType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v5, p0, Lcom/jme3/asset/DesktopAssetManager;->cache:Lcom/jme3/asset/AssetCache;

    invoke-virtual {v5, p1, v2}, Lcom/jme3/asset/AssetCache;->addToCache(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)V

    .line 404
    .end local v0           #fragName:Ljava/lang/String;
    .end local v1           #fragSource:Ljava/lang/String;
    .end local v3           #vertName:Ljava/lang/String;
    .end local v4           #vertSource:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;
    .locals 1
    .parameter "key"

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/jme3/asset/DesktopAssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture;

    return-object v0
.end method

.method public varargs registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 6
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
    .line 125
    .local p1, loader:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jme3/asset/AssetLoader;>;"
    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/asset/ImplHandler;->addLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "Registered loader: {0} for extensions {1}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_0
    return-void
.end method

.method public varargs registerLoader(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "clsName"
    .parameter "extensions"

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jme3/asset/AssetLoader;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 141
    :goto_0
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0, v0, p2}, Lcom/jme3/asset/DesktopAssetManager;->registerLoader(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 139
    .local v1, ex:Ljava/lang/NoClassDefFoundError;
    sget-object v2, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public registerLocator(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .parameter "rootPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/jme3/asset/AssetLocator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, locatorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jme3/asset/AssetLocator;>;"
    iget-object v0, p0, Lcom/jme3/asset/DesktopAssetManager;->handler:Lcom/jme3/asset/ImplHandler;

    invoke-virtual {v0, p2, p1}, Lcom/jme3/asset/ImplHandler;->addLocator(Ljava/lang/Class;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "Registered locator: {0}"

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-void
.end method

.method public registerLocator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "rootPath"
    .parameter "clsName"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/jme3/asset/AssetLocator;>;"
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 163
    :goto_0
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0, p1, v0}, Lcom/jme3/asset/DesktopAssetManager;->registerLocator(Ljava/lang/String;Ljava/lang/Class;)V

    .line 166
    :cond_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find locator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 160
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 161
    .local v1, ex:Ljava/lang/NoClassDefFoundError;
    sget-object v2, Lcom/jme3/asset/DesktopAssetManager;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find loader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
