.class public Lcom/htc/dlnamiddlelayer/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "aURL"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, theBitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/htc/dlnamiddlelayer/ImageDownloader;->getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 46
    .local v1, theInputStream:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 47
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 49
    :cond_0
    return-object v0
.end method

.method public static getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "aURL"

    .prologue
    .line 21
    const/4 v5, 0x0

    .line 23
    .local v5, theInputStream:Ljava/io/InputStream;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 24
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, request:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 30
    .local v4, theEntity:Lorg/apache/http/HttpEntity;
    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v3, v4}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 32
    .local v3, theBufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v3}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 38
    .end local v3           #theBufHttpEntity:Lorg/apache/http/entity/BufferedHttpEntity;
    .end local v4           #theEntity:Lorg/apache/http/HttpEntity;
    :goto_0
    return-object v5

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
