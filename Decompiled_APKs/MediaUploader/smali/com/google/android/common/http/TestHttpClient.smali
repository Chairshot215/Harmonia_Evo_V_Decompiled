.class public Lcom/google/android/common/http/TestHttpClient;
.super Ljava/lang/Object;
.source "TestHttpClient.java"


# instance fields
.field private final connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private final httpexecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

.field private final params:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->params:Lorg/apache/http/params/HttpParams;

    .line 71
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.socket.timeout"

    const/16 v2, 0x1388

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.stalecheck"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.version"

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.useragent"

    const-string v2, "TEST-CLIENT/1.1"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 77
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 79
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/RequestConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/RequestExpectContinue;

    invoke-direct {v1}, Lorg/apache/http/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 86
    new-instance v0, Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->httpexecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 87
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 88
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->context:Lorg/apache/http/protocol/HttpContext;

    .line 89
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->context:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.request"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->context:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.target_host"

    invoke-interface {v0, v1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->context:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.connection"

    invoke-interface {v0, v1, p3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    new-instance v0, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/common/http/TestHttpClient;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->httpexecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lcom/google/android/common/http/TestHttpClient;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    iget-object v2, p0, Lcom/google/android/common/http/TestHttpClient;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->httpexecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lcom/google/android/common/http/TestHttpClient;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, p1, p3, v1}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 106
    new-instance v1, Lorg/apache/http/params/DefaultedHttpParams;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/common/http/TestHttpClient;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 108
    iget-object v1, p0, Lcom/google/android/common/http/TestHttpClient;->httpexecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lcom/google/android/common/http/TestHttpClient;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    iget-object v3, p0, Lcom/google/android/common/http/TestHttpClient;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/http/protocol/HttpRequestExecutor;->postProcess(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 109
    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public keepAlive(Lorg/apache/http/HttpResponse;)Z
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpClient;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    iget-object v1, p0, Lcom/google/android/common/http/TestHttpClient;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v0, p1, v1}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    return v0
.end method
