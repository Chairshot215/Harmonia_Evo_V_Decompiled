.class public Lorg/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "HTTP request may not be null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_0
    if-nez p2, :cond_1

    new-instance v22, Ljava/lang/IllegalArgumentException;

    const-string v23, "HTTP context may not be null"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_1
    const-string v22, "http.cookie-store"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/client/CookieStore;

    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    const-string v23, "Cookie store not available in HTTP context"

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    const-string v22, "http.cookiespec-registry"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/http/cookie/CookieSpecRegistry;

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    const-string v23, "CookieSpec registry not available in HTTP context"

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v22, "http.target_host"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/http/HttpHost;

    if-nez v20, :cond_4

    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "Target host not specified in HTTP context"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_4
    const-string v22, "http.connection"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/conn/ManagedClientConnection;

    if-nez v3, :cond_5

    new-instance v22, Ljava/lang/IllegalStateException;

    const-string v23, "Client connection not specified in HTTP context"

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/apache/http/client/params/HttpClientParams;->getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CookieSpec selected: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v22, p1

    check-cast v22, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v19

    :goto_1
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v17

    if-gez v17, :cond_7

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v17

    :cond_7
    new-instance v5, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-interface {v3}, Lorg/apache/http/conn/ManagedClientConnection;->isSecure()Z

    move-result v23

    move/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v5, v12, v0, v1, v2}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v6, v4, v5}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cookie "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " match "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_9
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    :try_start_0
    new-instance v19, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v9

    new-instance v22, Lorg/apache/http/ProtocolException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid request URI: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v22

    :cond_b
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_c

    invoke-interface {v6, v14}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/Header;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_3

    :cond_c
    invoke-interface {v6}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v21

    if-lez v21, :cond_f

    const/4 v15, 0x0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v4}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    const/4 v15, 0x1

    goto :goto_4

    :cond_e
    if-eqz v15, :cond_f

    invoke-interface {v6}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v10

    if-eqz v10, :cond_f

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    :cond_f
    const-string v22, "http.cookie-spec"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v22, "http.cookie-origin"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
