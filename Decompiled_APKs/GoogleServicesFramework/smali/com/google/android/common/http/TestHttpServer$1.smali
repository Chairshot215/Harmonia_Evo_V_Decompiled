.class Lcom/google/android/common/http/TestHttpServer$1;
.super Ljava/lang/Object;
.source "TestHttpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/http/TestHttpServer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/http/TestHttpServer;


# direct methods
.method constructor <init>(Lcom/google/android/common/http/TestHttpServer;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/common/http/TestHttpServer$1;->this$0:Lcom/google/android/common/http/TestHttpServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 139
    :goto_0
    iget-object v5, p0, Lcom/google/android/common/http/TestHttpServer$1;->this$0:Lcom/google/android/common/http/TestHttpServer;

    #getter for: Lcom/google/android/common/http/TestHttpServer;->shutdown:Z
    invoke-static {v5}, Lcom/google/android/common/http/TestHttpServer;->access$000(Lcom/google/android/common/http/TestHttpServer;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 142
    :try_start_0
    iget-object v5, p0, Lcom/google/android/common/http/TestHttpServer$1;->this$0:Lcom/google/android/common/http/TestHttpServer;

    #calls: Lcom/google/android/common/http/TestHttpServer;->acceptConnection()Lorg/apache/http/HttpServerConnection;
    invoke-static {v5}, Lcom/google/android/common/http/TestHttpServer;->access$100(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/HttpServerConnection;

    move-result-object v0

    .line 144
    .local v0, conn:Lorg/apache/http/HttpServerConnection;
    new-instance v3, Lorg/apache/http/protocol/HttpService;

    iget-object v5, p0, Lcom/google/android/common/http/TestHttpServer$1;->this$0:Lcom/google/android/common/http/TestHttpServer;

    #getter for: Lcom/google/android/common/http/TestHttpServer;->httpproc:Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-static {v5}, Lcom/google/android/common/http/TestHttpServer;->access$200(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/common/http/TestHttpServer$1;->this$0:Lcom/google/android/common/http/TestHttpServer;

    #getter for: Lcom/google/android/common/http/TestHttpServer;->connStrategy:Lorg/apache/http/ConnectionReuseStrategy;
    invoke-static {v6}, Lcom/google/android/common/http/TestHttpServer;->access$300(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/ConnectionReuseStrategy;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/common/http/TestHttpServer$1;->this$0:Lcom/google/android/common/http/TestHttpServer;

    #getter for: Lcom/google/android/common/http/TestHttpServer;->responseFactory:Lorg/apache/http/HttpResponseFactory;
    invoke-static {v7}, Lcom/google/android/common/http/TestHttpServer;->access$400(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/HttpResponseFactory;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    .line 148
    .local v3, httpService:Lorg/apache/http/protocol/HttpService;
    iget-object v5, p0, Lcom/google/android/common/http/TestHttpServer$1;->this$0:Lcom/google/android/common/http/TestHttpServer;

    #getter for: Lcom/google/android/common/http/TestHttpServer;->params:Lorg/apache/http/params/HttpParams;
    invoke-static {v5}, Lcom/google/android/common/http/TestHttpServer;->access$500(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/params/HttpParams;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/http/protocol/HttpService;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 149
    iget-object v5, p0, Lcom/google/android/common/http/TestHttpServer$1;->this$0:Lcom/google/android/common/http/TestHttpServer;

    #getter for: Lcom/google/android/common/http/TestHttpServer;->expectationVerifier:Lorg/apache/http/protocol/HttpExpectationVerifier;
    invoke-static {v5}, Lcom/google/android/common/http/TestHttpServer;->access$600(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/protocol/HttpExpectationVerifier;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/http/protocol/HttpService;->setExpectationVerifier(Lorg/apache/http/protocol/HttpExpectationVerifier;)V

    .line 150
    iget-object v5, p0, Lcom/google/android/common/http/TestHttpServer$1;->this$0:Lcom/google/android/common/http/TestHttpServer;

    #getter for: Lcom/google/android/common/http/TestHttpServer;->reqistry:Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
    invoke-static {v5}, Lcom/google/android/common/http/TestHttpServer;->access$700(Lcom/google/android/common/http/TestHttpServer;)Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    .line 153
    new-instance v4, Lcom/google/android/common/http/TestHttpServer$WorkerThread;

    invoke-direct {v4, v3, v0}, Lcom/google/android/common/http/TestHttpServer$WorkerThread;-><init>(Lorg/apache/http/protocol/HttpService;Lorg/apache/http/HttpServerConnection;)V

    .line 154
    .local v4, t:Ljava/lang/Thread;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 155
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 156
    .end local v0           #conn:Lorg/apache/http/HttpServerConnection;
    .end local v3           #httpService:Lorg/apache/http/protocol/HttpService;
    .end local v4           #t:Ljava/lang/Thread;
    :catch_0
    move-exception v2

    .line 162
    :cond_0
    :goto_1
    return-void

    .line 158
    :catch_1
    move-exception v1

    .line 159
    .local v1, e:Ljava/io/IOException;
    goto :goto_1
.end method
