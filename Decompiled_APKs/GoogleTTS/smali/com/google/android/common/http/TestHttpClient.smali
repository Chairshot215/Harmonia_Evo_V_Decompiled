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
