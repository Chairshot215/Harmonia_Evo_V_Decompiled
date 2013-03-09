.class public Lcom/google/android/common/http/TestHttpServer;
.super Ljava/lang/Object;
.source "TestHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/http/TestHttpServer$WorkerThread;
    }
.end annotation


# instance fields
.field private final connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

.field private final httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

.field private listener:Ljava/lang/Thread;

.field private final params:Lorg/apache/http/params/HttpParams;

.field private final reqistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

.field private final responseFactory:Lorg/apache/http/HttpResponseFactory;

.field private final serversocket:Ljava/net/ServerSocket;

.field private volatile shutdown:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/common/http/TestHttpServer;-><init>(I)V

    .line 105
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->params:Lorg/apache/http/params/HttpParams;

    .line 86
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.socket.timeout"

    const/16 v2, 0x4e20

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.buffer-size"

    const/16 v2, 0x2000

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.stalecheck"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.tcp.nodelay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.origin-server"

    const-string v2, "TEST-SERVER/1.1"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 92
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    .line 93
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseServer;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseServer;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    new-instance v1, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 97
    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 98
    new-instance v0, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    .line 99
    new-instance v0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->reqistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    .line 100
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->serversocket:Ljava/net/ServerSocket;

    .line 101
    return-void
.end method

.method private acceptConnection()Lorg/apache/http/HttpServerConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v2, p0, Lcom/google/android/common/http/TestHttpServer;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 119
    .local v1, socket:Ljava/net/Socket;
    new-instance v0, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    .line 120
    .local v0, conn:Lorg/apache/http/impl/DefaultHttpServerConnection;
    iget-object v2, p0, Lcom/google/android/common/http/TestHttpServer;->params:Lorg/apache/http/params/HttpParams;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 121
    return-object v0
.end method

.method static synthetic access$000(Lcom/google/android/common/http/TestHttpServer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/common/http/TestHttpServer;->shutdown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/HttpServerConnection;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/common/http/TestHttpServer;->acceptConnection()Lorg/apache/http/HttpServerConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/ConnectionReuseStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/HttpResponseFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/params/HttpParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/protocol/HttpExpectationVerifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->reqistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    return-object v0
.end method


# virtual methods
.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public registerHandler(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V
    .locals 1
    .parameter "pattern"
    .parameter "handler"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->reqistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 111
    return-void
.end method

.method public setExpectationVerifier(Lorg/apache/http/protocol/HttpExpectationVerifier;)V
    .locals 0
    .parameter "expectationVerifier"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/common/http/TestHttpServer;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;

    .line 115
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/common/http/TestHttpServer;->shutdown:Z

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/http/TestHttpServer;->shutdown:Z

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->serversocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :goto_1
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->listener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 178
    :try_start_1
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->listener:Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0

    .line 175
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->listener:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Listener already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/common/http/TestHttpServer$1;

    invoke-direct {v1, p0}, Lcom/google/android/common/http/TestHttpServer$1;-><init>(Lcom/google/android/common/http/TestHttpServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->listener:Ljava/lang/Thread;

    .line 165
    iget-object v0, p0, Lcom/google/android/common/http/TestHttpServer;->listener:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method
