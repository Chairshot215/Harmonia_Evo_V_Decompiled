.class public final Lcom/google/android/volley/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/volley/AndroidHttpClient$CurlLogger;,
        Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J

.field private static final sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private volatile curlConfiguration:Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;

.field private final delegate:Lorg/apache/http/client/HttpClient;

.field private mLeakedException:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    const-wide/16 v0, 0x100

    sput-wide v0, Lcom/google/android/volley/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    .line 104
    new-instance v0, Lcom/google/android/volley/AndroidHttpClient$1;

    invoke-direct {v0}, Lcom/google/android/volley/AndroidHttpClient$1;-><init>()V

    sput-object v0, Lcom/google/android/volley/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .parameter "ccm"
    .parameter "params"

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 179
    new-instance v0, Lcom/google/android/volley/AndroidHttpClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/volley/AndroidHttpClient$2;-><init>(Lcom/google/android/volley/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    .line 237
    return-void
.end method

.method static synthetic access$000()Lorg/apache/http/HttpRequestInterceptor;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/google/android/volley/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/volley/AndroidHttpClient;)Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->curlConfiguration:Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/google/android/volley/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/volley/AndroidHttpClient;
    .locals 9
    .parameter "userAgent"
    .parameter "context"

    .prologue
    const/16 v5, 0x4e20

    const/4 v6, 0x0

    .line 123
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 127
    .local v2, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 130
    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 131
    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 132
    const/16 v5, 0x2000

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 136
    invoke-static {v2, v6}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 139
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 142
    .local v4, sessionCache:Landroid/net/SSLSessionCache;
    :goto_0
    invoke-static {v2, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 143
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 144
    .local v3, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->getSocketFactory()Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 146
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    const/16 v7, 0x1388

    invoke-static {v7, v4}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    const/16 v8, 0x1bb

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 152
    new-instance v0, Lorg/apache/http/conn/params/ConnManagerParamBean;

    invoke-direct {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 153
    .local v0, brillant:Lorg/apache/http/conn/params/ConnManagerParamBean;
    new-instance v5, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-virtual {v0, v5}, Lorg/apache/http/conn/params/ConnManagerParamBean;->setConnectionsPerRoute(Lorg/apache/http/conn/params/ConnPerRouteBean;)V

    .line 154
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lorg/apache/http/conn/params/ConnManagerParamBean;->setMaxTotalConnections(I)V

    .line 156
    new-instance v1, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;

    invoke-direct {v1, v2, v3}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 161
    .local v1, manager:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lcom/google/android/volley/AndroidHttpClient;

    invoke-direct {v5, v1, v2}, Lcom/google/android/volley/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v5

    .line 139
    .end local v0           #brillant:Lorg/apache/http/conn/params/ConnManagerParamBean;
    .end local v1           #manager:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v3           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4           #sessionCache:Landroid/net/SSLSessionCache;
    :cond_0
    new-instance v4, Landroid/net/SSLSessionCache;

    invoke-direct {v4, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 15
    .parameter "request"
    .parameter "logAuthToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v11, "curl "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v5, v0, v6

    .line 464
    .local v5, header:Lorg/apache/http/Header;
    if-nez p1, :cond_1

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Authorization"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Cookie"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 463
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 469
    :cond_1
    const-string v11, "--header \""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v11, "\" "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 474
    .end local v5           #header:Lorg/apache/http/Header;
    :cond_2
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    .line 479
    .local v10, uri:Ljava/net/URI;
    instance-of v11, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v11, :cond_3

    move-object v11, p0

    .line 480
    check-cast v11, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v11}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v8

    .line 481
    .local v8, original:Lorg/apache/http/HttpRequest;
    instance-of v11, v8, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v11, :cond_3

    .line 482
    check-cast v8, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v8           #original:Lorg/apache/http/HttpRequest;
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    .line 486
    :cond_3
    const-string v11, "\""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    const-string v11, "\""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    instance-of v11, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v11, :cond_4

    move-object v3, p0

    .line 491
    check-cast v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 493
    .local v3, entityRequest:Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 494
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 495
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    cmp-long v11, v11, v13

    if-gez v11, :cond_5

    .line 496
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 497
    .local v9, stream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v2, v9}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 498
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, entityString:Ljava/lang/String;
    const-string v11, " --data-ascii \""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #entityRequest:Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v4           #entityString:Ljava/lang/String;
    .end local v9           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 505
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v3       #entityRequest:Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_5
    const-string v11, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "level"

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 423
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/4 v0, 0x7

    if-le p2, v0, :cond_2

    .line 426
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level is out of range [2..7]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_2
    new-instance v0, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILcom/google/android/volley/AndroidHttpClient$1;)V

    iput-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->curlConfiguration:Lcom/google/android/volley/AndroidHttpClient$LoggingConfiguration;

    .line 431
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 341
    .local p3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 348
    .local p3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 327
    .local p2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 334
    .local p2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "target"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 241
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 242
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "AndroidHttpClient"

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/google/android/volley/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 246
    :cond_0
    return-void
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/volley/AndroidHttpClient;->delegate:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
