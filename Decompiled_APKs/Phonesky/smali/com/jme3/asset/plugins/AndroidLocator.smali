.class public Lcom/jme3/asset/plugins/AndroidLocator;
.super Ljava/lang/Object;
.source "AndroidLocator.java"

# interfaces
.implements Lcom/jme3/asset/AssetLocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private androidManager:Landroid/content/res/AssetManager;

.field private rootPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/jme3/asset/plugins/AndroidLocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/asset/plugins/AndroidLocator;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/jme3/asset/plugins/AndroidLocator;->rootPath:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/jme3/system/android/JmeAndroidSystem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/asset/plugins/AndroidLocator;->androidManager:Landroid/content/res/AssetManager;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/jme3/asset/plugins/AndroidLocator;)Landroid/content/res/AssetManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/jme3/asset/plugins/AndroidLocator;->androidManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method private create(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/lang/String;)Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;
    .locals 8
    .parameter "assetManager"
    .parameter "key"
    .parameter "assetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/jme3/asset/plugins/AndroidLocator;->androidManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 48
    .local v5, in:Ljava/io/InputStream;
    if-nez v5, :cond_0

    move-object v0, v7

    .line 56
    .end local v5           #in:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 51
    .restart local v5       #in:Ljava/io/InputStream;
    :cond_0
    new-instance v0, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;-><init>(Lcom/jme3/asset/plugins/AndroidLocator;Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v5           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/io/IOException;
    move-object v0, v7

    .line 56
    goto :goto_0
.end method


# virtual methods
.method public locate(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)Lcom/jme3/asset/AssetInfo;
    .locals 5
    .parameter "manager"
    .parameter "key"

    .prologue
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/asset/plugins/AndroidLocator;->rootPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, assetPath:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_0
    const-string v2, "//"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/asset/plugins/AndroidLocator;->create(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/lang/String;)Lcom/jme3/asset/plugins/AndroidLocator$AndroidAssetInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 80
    :catch_0
    move-exception v1

    .line 84
    .local v1, ex:Ljava/io/IOException;
    new-instance v2, Lcom/jme3/asset/AssetLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setRootPath(Ljava/lang/String;)V
    .locals 0
    .parameter "rootPath"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/jme3/asset/plugins/AndroidLocator;->rootPath:Ljava/lang/String;

    .line 66
    return-void
.end method
