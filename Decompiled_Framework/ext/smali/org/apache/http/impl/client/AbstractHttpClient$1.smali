.class Lorg/apache/http/impl/client/AbstractHttpClient$1;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/client/AbstractHttpClient;->execute4TMO(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

.field final synthetic val$context_:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->val$context_:Lorg/apache/http/protocol/HttpContext;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableRedirectionHandlingForGba()V
    .locals 0

    return-void
.end method

.method public executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpRequest()Lorg/apache/http/HttpRequest;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;->getCurrentHttpHost()Lorg/apache/http/HttpHost;

    move-result-object v18

    const/16 v22, 0x0

    const/16 v21, 0x0

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->createHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->val$context_:Lorg/apache/http/protocol/HttpContext;

    if-nez v4, :cond_1

    move-object/from16 v22, v20

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRequestExecutor()Lorg/apache/http/protocol/HttpRequestExecutor;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v7}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v8}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v9}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRoutePlanner()Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v10}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/http/protocol/BasicHttpProcessor;->copy()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v11}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v12}, Lorg/apache/http/impl/client/AbstractHttpClient;->getRedirectHandler()Lorg/apache/http/client/RedirectHandler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v13}, Lorg/apache/http/impl/client/AbstractHttpClient;->getTargetAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v14}, Lorg/apache/http/impl/client/AbstractHttpClient;->getProxyAuthenticationHandler()Lorg/apache/http/client/AuthenticationHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v15}, Lorg/apache/http/impl/client/AbstractHttpClient;->getUserTokenHandler()Lorg/apache/http/client/UserTokenHandler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->determineParams(Lorg/apache/http/HttpRequest;)Lorg/apache/http/params/HttpParams;

    move-result-object v16

    invoke-virtual/range {v4 .. v16}, Lorg/apache/http/impl/client/AbstractHttpClient;->createClientRequestDirector(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/HttpRequestRetryHandler;Lorg/apache/http/client/RedirectHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/AuthenticationHandler;Lorg/apache/http/client/UserTokenHandler;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/RequestDirector;

    move-result-object v21

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    #getter for: Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;
    invoke-static {v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->access$000(Lorg/apache/http/impl/client/AbstractHttpClient;)Lorg/apache/commons/logging/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeRequestSending()   director.getClass()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/client/RequestDirector;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v24

    const/16 v26, 0x0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {v21 .. v22}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;->createDefault(Lorg/apache/http/client/RequestDirector;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractorCompound;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/impl/client/naf/ciphersuite/extractors/CurrentCipherSuiteExtractor;->extractCurrentCipherSuiteName()Ljava/lang/String;

    move-result-object v26

    :cond_0
    new-instance v25, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->this$0:Lorg/apache/http/impl/client/AbstractHttpClient;

    #getter for: Lorg/apache/http/impl/client/AbstractHttpClient;->log:Lorg/apache/commons/logging/Log;
    invoke-static {v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->access$000(Lorg/apache/http/impl/client/AbstractHttpClient;)Lorg/apache/commons/logging/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeRequestSending()#finished   <<<<<   nafResponseWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    return-object v25

    :cond_1
    :try_start_1
    new-instance v23, Lorg/apache/http/protocol/DefaultedHttpContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/client/AbstractHttpClient$1;->val$context_:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lorg/apache/http/protocol/DefaultedHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/protocol/HttpContext;)V

    move-object/from16 v22, v23

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
