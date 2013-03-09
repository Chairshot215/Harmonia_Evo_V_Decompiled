.class public Lcom/jme3/asset/plugins/ClasspathLocator;
.super Ljava/lang/Object;
.source "ClasspathLocator.java"

# interfaces
.implements Lcom/jme3/asset/AssetLocator;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private root:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/jme3/asset/plugins/ClasspathLocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/asset/plugins/ClasspathLocator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public locate(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x5c

    .line 70
    invoke-virtual {p2}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {}, Lcom/jme3/system/JmeSystem;->isLowPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-class v0, Lcom/jme3/asset/plugins/ClasspathLocator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move-object v1, v0

    .line 84
    :goto_0
    if-nez v1, :cond_2

    .line 85
    const/4 v0, 0x0

    .line 109
    :goto_1
    return-object v0

    .line 82
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 92
    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v3, v4, :cond_3

    .line 93
    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 98
    new-instance v3, Lcom/jme3/asset/AssetNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset name doesn\'t match requirements.\n\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\" doesn\'t match \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/jme3/asset/AssetNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Lcom/jme3/asset/AssetLoadException;

    const-string v2, "Error converting URL to URI"

    invoke-direct {v1, v2, v0}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :catch_1
    move-exception v0

    .line 104
    new-instance v2, Lcom/jme3/asset/AssetLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get canonical path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 109
    :cond_4
    :try_start_1
    invoke-static {p1, p2, v1}, Lcom/jme3/asset/plugins/UrlAssetInfo;->create(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/net/URL;)Lcom/jme3/asset/plugins/UrlAssetInfo;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto/16 :goto_1

    .line 110
    :catch_2
    move-exception v0

    .line 114
    new-instance v2, Lcom/jme3/asset/AssetLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setRootPath(Ljava/lang/String;)V
    .locals 3
    .parameter "rootPath"

    .prologue
    const/4 v2, 0x1

    .line 56
    iput-object p1, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/plugins/ClasspathLocator;->root:Ljava/lang/String;

    goto :goto_0
.end method
