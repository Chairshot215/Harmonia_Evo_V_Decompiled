.class Lcom/gracenote/mmid/MobileSDK/SyncWebService;
.super Ljava/lang/Object;
.source "SyncWebService.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getDataFromHttpGetURL(Ljava/lang/String;)[B
    .locals 12
    .parameter "urlString"

    .prologue
    const/4 v10, 0x0

    .line 46
    move-object v6, v10

    check-cast v6, [B

    .line 49
    .local v6, imageData:[B
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 51
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v7, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v7}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 52
    .local v7, parameters:Lorg/apache/http/params/BasicHttpParams;
    const/16 v1, 0x28

    .line 53
    .local v1, connectTimeoutSeconds:I
    const/16 v9, 0x3c

    .line 54
    .local v9, socketTimeoutSeconds:I
    const v11, 0x9c40

    invoke-static {v7, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    const v11, 0xea60

    invoke-static {v7, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 57
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 58
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 59
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 61
    .local v5, httpStatusCode:I
    const/16 v11, 0xc8

    if-eq v5, v11, :cond_1

    .line 74
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #connectTimeoutSeconds:I
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #httpStatusCode:I
    .end local v7           #parameters:Lorg/apache/http/params/BasicHttpParams;
    .end local v9           #socketTimeoutSeconds:I
    :cond_0
    :goto_0
    return-object v10

    .line 65
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #connectTimeoutSeconds:I
    .restart local v3       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #httpStatusCode:I
    .restart local v7       #parameters:Lorg/apache/http/params/BasicHttpParams;
    .restart local v9       #socketTimeoutSeconds:I
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 66
    .local v8, responseEntity:Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_0

    .line 67
    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v10, v6

    .line 68
    goto :goto_0

    .line 72
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #connectTimeoutSeconds:I
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #httpStatusCode:I
    .end local v7           #parameters:Lorg/apache/http/params/BasicHttpParams;
    .end local v8           #responseEntity:Lorg/apache/http/HttpEntity;
    .end local v9           #socketTimeoutSeconds:I
    :catch_0
    move-exception v2

    .line 73
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getStringFromHttpGetURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "urlString"

    .prologue
    const/4 v9, 0x0

    .line 17
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 19
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 20
    .local v6, parameters:Lorg/apache/http/params/BasicHttpParams;
    const/16 v1, 0x28

    .line 21
    .local v1, connectTimeoutSeconds:I
    const/16 v8, 0x3c

    .line 22
    .local v8, socketTimeoutSeconds:I
    const v10, 0x9c40

    invoke-static {v6, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 23
    const v10, 0xea60

    invoke-static {v6, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 25
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 26
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 27
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 29
    .local v5, httpStatusCode:I
    const/16 v10, 0xc8

    if-eq v5, v10, :cond_1

    .line 41
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #connectTimeoutSeconds:I
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #httpStatusCode:I
    .end local v6           #parameters:Lorg/apache/http/params/BasicHttpParams;
    .end local v8           #socketTimeoutSeconds:I
    :cond_0
    :goto_0
    return-object v9

    .line 33
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v1       #connectTimeoutSeconds:I
    .restart local v3       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #httpStatusCode:I
    .restart local v6       #parameters:Lorg/apache/http/params/BasicHttpParams;
    .restart local v8       #socketTimeoutSeconds:I
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 34
    .local v7, responseEntity:Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_0

    .line 35
    const-string v10, "UTF8"

    invoke-static {v7, v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 39
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v1           #connectTimeoutSeconds:I
    .end local v3           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #httpStatusCode:I
    .end local v6           #parameters:Lorg/apache/http/params/BasicHttpParams;
    .end local v7           #responseEntity:Lorg/apache/http/HttpEntity;
    .end local v8           #socketTimeoutSeconds:I
    :catch_0
    move-exception v2

    .line 40
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
