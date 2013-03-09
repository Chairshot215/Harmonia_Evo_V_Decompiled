.class public Lcom/google/android/common/http/GoogleHttpClient;
.super Ljava/lang/Object;
.source "GoogleHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/http/GoogleHttpClient$1;,
        Lcom/google/android/common/http/GoogleHttpClient$WrappedLayeredSocketFactory;,
        Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;,
        Lcom/google/android/common/http/GoogleHttpClient$BlockedRequestException;
    }
.end annotation


# instance fields
.field private final mAppName:Ljava/lang/String;

.field private final mClient:Landroid/net/http/AndroidHttpClient;

.field private final mConnectionAllocated:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 10
    .parameter "context"
    .parameter "appAndVersion"
    .parameter "gzipCapable"

    .prologue
    const/4 v9, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v7, p0, Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, userAgent:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; gzip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    :cond_0
    invoke-static {v6, p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/common/http/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    .line 111
    iput-object p2, p0, Lcom/google/android/common/http/GoogleHttpClient;->mAppName:Ljava/lang/String;

    .line 112
    iput-object v6, p0, Lcom/google/android/common/http/GoogleHttpClient;->mUserAgent:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/common/http/GoogleHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 118
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getSchemeNames()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->unregister(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v3

    .line 120
    .local v3, scheme:Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v4

    .line 121
    .local v4, sf:Lorg/apache/http/conn/scheme/SocketFactory;
    instance-of v7, v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v7, :cond_1

    .line 122
    new-instance v5, Lcom/google/android/common/http/GoogleHttpClient$WrappedLayeredSocketFactory;

    check-cast v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .end local v4           #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    invoke-direct {v5, p0, v4, v9}, Lcom/google/android/common/http/GoogleHttpClient$WrappedLayeredSocketFactory;-><init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/LayeredSocketFactory;Lcom/google/android/common/http/GoogleHttpClient$1;)V

    .local v5, sf:Lorg/apache/http/conn/scheme/SocketFactory;
    move-object v4, v5

    .line 126
    .end local v5           #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v4       #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    :goto_1
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    invoke-virtual {v3}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v8

    invoke-direct {v7, v1, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0

    .line 124
    :cond_1
    new-instance v5, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;

    invoke-direct {v5, p0, v4, v9}, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;-><init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;Lcom/google/android/common/http/GoogleHttpClient$1;)V

    .end local v4           #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v5       #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    move-object v4, v5

    .end local v5           #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v4       #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    goto :goto_1

    .line 128
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #scheme:Lorg/apache/http/conn/scheme/Scheme;
    .end local v4           #sf:Lorg/apache/http/conn/scheme/SocketFactory;
    :cond_2
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/common/http/GoogleHttpClient;)Ljava/lang/ThreadLocal;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method private static wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    instance-of v2, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_0

    .line 272
    new-instance v1, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p0
    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 279
    .local v1, wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 281
    return-object v1

    .line 275
    .end local v1           #wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    .restart local p0
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    goto :goto_0

    .line 282
    .end local v1           #wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    .end local p0
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Lorg/apache/http/ProtocolException;
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v2, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 169
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "level"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 357
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
    .line 340
    .local p3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

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
    .line 346
    .local p3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

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
    .line 328
    .local p2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

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
    .line 317
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

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
    .line 322
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

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
    .line 312
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 10
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    .line 235
    .local v5, uri:Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, original:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/common/http/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v4

    .line 237
    .local v4, rules:Lcom/google/android/common/http/UrlRules;
    invoke-virtual {v4, v1}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v3

    .line 238
    .local v3, rule:Lcom/google/android/common/http/UrlRules$Rule;
    invoke-virtual {v3, v1}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, rewritten:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 241
    const-string v7, "GoogleHttpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Blocked by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v7, Lcom/google/android/common/http/GoogleHttpClient$BlockedRequestException;

    invoke-direct {v7, v3}, Lcom/google/android/common/http/GoogleHttpClient$BlockedRequestException;-><init>(Lcom/google/android/common/http/UrlRules$Rule;)V

    throw v7

    .line 243
    :cond_0
    if-ne v2, v1, :cond_1

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/google/android/common/http/GoogleHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 259
    :goto_0
    return-object v7

    .line 248
    :cond_1
    :try_start_0
    new-instance v5, Ljava/net/URI;

    .end local v5           #uri:Ljava/net/URI;
    invoke-direct {v5, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .restart local v5       #uri:Ljava/net/URI;
    invoke-static {p1}, Lcom/google/android/common/http/GoogleHttpClient;->wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v6

    .line 255
    .local v6, wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v6, v5}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 256
    move-object p1, v6

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/google/android/common/http/GoogleHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    goto :goto_0

    .line 249
    .end local v5           #uri:Ljava/net/URI;
    .end local v6           #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad URL from rule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 24
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v14, -0x1

    .line 176
    .local v14, code:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 179
    .local v18, start:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/common/http/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    const-string v20, "http_stats"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 186
    .local v5, uid:I
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    .line 187
    .local v6, startTx:J
    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 189
    .local v8, startRx:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 190
    .local v16, response:Lorg/apache/http/HttpResponse;
    if-nez v16, :cond_1

    const/4 v3, 0x0

    .line 191
    .local v3, origEntity:Lorg/apache/http/HttpEntity;
    :goto_0
    if-eqz v3, :cond_0

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 195
    .local v12, now:J
    sub-long v10, v12, v18

    .line 196
    .local v10, elapsed:J
    new-instance v2, Lcom/google/android/common/http/NetworkStatsEntity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/common/http/GoogleHttpClient;->mAppName:Ljava/lang/String;

    invoke-direct/range {v2 .. v13}, Lcom/google/android/common/http/NetworkStatsEntity;-><init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V

    .line 199
    .local v2, entity:Lcom/google/android/common/http/NetworkStatsEntity;
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 205
    .end local v2           #entity:Lcom/google/android/common/http/NetworkStatsEntity;
    .end local v3           #origEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #uid:I
    .end local v6           #startTx:J
    .end local v8           #startRx:J
    .end local v10           #elapsed:J
    .end local v12           #now:J
    :cond_0
    :goto_1
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .line 213
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v10, v20, v18

    .line 216
    .restart local v10       #elapsed:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    if-ltz v14, :cond_3

    const/16 v17, 0x1

    .line 217
    .local v17, reused:I
    :goto_2
    const v4, 0x318fa

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    .end local v10           #elapsed:J
    .end local v17           #reused:I
    :goto_3
    return-object v16

    .line 190
    .restart local v5       #uid:I
    .restart local v6       #startTx:J
    .restart local v8       #startRx:J
    :cond_1
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    goto :goto_0

    .line 202
    .end local v5           #uid:I
    .end local v6           #startTx:J
    .end local v8           #startRx:J
    .end local v16           #response:Lorg/apache/http/HttpResponse;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    .restart local v16       #response:Lorg/apache/http/HttpResponse;
    goto :goto_1

    .line 216
    .restart local v10       #elapsed:J
    :cond_3
    const/16 v17, 0x0

    goto :goto_2

    .line 219
    .end local v10           #elapsed:J
    :catch_0
    move-exception v15

    .line 220
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "GoogleHttpClient"

    const-string v20, "Error recording stats"

    move-object/from16 v0, v20

    invoke-static {v4, v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 212
    .end local v15           #e:Ljava/lang/Exception;
    .end local v16           #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v4

    .line 213
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v10, v20, v18

    .line 216
    .restart local v10       #elapsed:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_4

    if-ltz v14, :cond_4

    const/16 v17, 0x1

    .line 217
    .restart local v17       #reused:I
    :goto_4
    const v20, 0x318fa

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 221
    .end local v10           #elapsed:J
    .end local v17           #reused:I
    :goto_5
    throw v4

    .line 216
    .restart local v10       #elapsed:J
    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    .line 219
    .end local v10           #elapsed:J
    :catch_1
    move-exception v15

    .line 220
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v20, "GoogleHttpClient"

    const-string v21, "Error recording stats"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
