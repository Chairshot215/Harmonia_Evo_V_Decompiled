.class public Lcom/jme3/asset/plugins/UrlAssetInfo;
.super Lcom/jme3/asset/AssetInfo;
.source "UrlAssetInfo.java"


# instance fields
.field private in:Ljava/io/InputStream;

.field private url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/net/URL;Ljava/io/InputStream;)V
    .locals 0
    .parameter "assetManager"
    .parameter "key"
    .parameter "url"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/jme3/asset/AssetInfo;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;)V

    .line 39
    iput-object p3, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->url:Ljava/net/URL;

    .line 40
    iput-object p4, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->in:Ljava/io/InputStream;

    .line 41
    return-void
.end method

.method public static create(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/net/URL;)Lcom/jme3/asset/plugins/UrlAssetInfo;
    .locals 3
    .parameter "assetManager"
    .parameter "key"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 26
    .local v0, conn:Ljava/net/URLConnection;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 27
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 30
    .local v1, in:Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 31
    const/4 v2, 0x0

    .line 33
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/jme3/asset/plugins/UrlAssetInfo;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/jme3/asset/plugins/UrlAssetInfo;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/asset/AssetKey;Ljava/net/URL;Ljava/io/InputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public openStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 49
    iget-object v3, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->in:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 51
    iget-object v2, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->in:Ljava/io/InputStream;

    .line 52
    .local v2, in2:Ljava/io/InputStream;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->in:Ljava/io/InputStream;

    .line 59
    .end local v2           #in2:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 57
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 58
    .local v0, conn:Ljava/net/URLConnection;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 59
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 60
    .end local v0           #conn:Ljava/net/URLConnection;
    :catch_0
    move-exception v1

    .line 61
    .local v1, ex:Ljava/io/IOException;
    new-instance v3, Lcom/jme3/asset/AssetLoadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/asset/plugins/UrlAssetInfo;->url:Ljava/net/URL;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/jme3/asset/AssetLoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
