.class public Lcom/android/volley/toolbox/HttpClientStack;
.super Ljava/lang/Object;
.source "HttpClientStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# instance fields
.field protected final mClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    .line 47
    return-void
.end method

.method private static addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .parameter "httpRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    .local v1, key:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 68
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    .local p2, additionalHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v3

    .line 69
    .local v3, postBody:[B
    if-eqz v3, :cond_0

    .line 70
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 71
    .local v4, postRequest:Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "Content-Type"

    invoke-virtual {p1}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 74
    .local v0, entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 75
    move-object v2, v4

    .line 79
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #postRequest:Lorg/apache/http/client/methods/HttpPost;
    .local v2, httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    invoke-static {v2, p2}, Lcom/android/volley/toolbox/HttpClientStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 80
    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/volley/toolbox/HttpClientStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/volley/toolbox/HttpClientStack;->onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 82
    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 83
    .local v1, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v5

    .line 86
    .local v5, timeoutMs:I
    const/16 v6, 0x1388

    invoke-static {v1, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 87
    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 88
    iget-object v6, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v6, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    return-object v6

    .line 77
    .end local v1           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v2           #httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v5           #timeoutMs:I
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v2       #httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0
.end method
