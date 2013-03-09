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


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "GoogleHttpClient"


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
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz p3, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gzip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    invoke-static {v0, p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/common/http/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    .line 112
    iput-object p2, p0, Lcom/google/android/common/http/GoogleHttpClient;->mAppName:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mUserAgent:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/google/android/common/http/GoogleHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getSchemeNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->unregister(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    .line 122
    instance-of v5, v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v5, :cond_1

    .line 123
    new-instance v5, Lcom/google/android/common/http/GoogleHttpClient$WrappedLayeredSocketFactory;

    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-direct {v5, p0, v1, v6}, Lcom/google/android/common/http/GoogleHttpClient$WrappedLayeredSocketFactory;-><init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/LayeredSocketFactory;Lcom/google/android/common/http/GoogleHttpClient$1;)V

    move-object v1, v5

    .line 127
    :goto_1
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    invoke-virtual {v4}, Lorg/apache/http/conn/scheme/Scheme;->getDefaultPort()I

    move-result v4

    invoke-direct {v5, v0, v1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0

    .line 125
    :cond_1
    new-instance v5, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;

    invoke-direct {v5, p0, v1, v6}, Lcom/google/android/common/http/GoogleHttpClient$WrappedSocketFactory;-><init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;Lcom/google/android/common/http/GoogleHttpClient$1;)V

    move-object v1, v5

    goto :goto_1

    .line 129
    :cond_2
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/common/http/GoogleHttpClient;)Ljava/lang/ThreadLocal;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static getGzipCapableUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gzip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    :try_start_0
    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 280
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 282
    return-object v0

    .line 276
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 170
    return-void
.end method

.method public disableCurlLogging()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->disableCurlLogging()V

    .line 365
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 358
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
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
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 347
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter
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
    .line 329
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
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
    .line 335
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/google/android/common/http/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v0}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v1

    .line 239
    invoke-virtual {v1, v0}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    if-nez v2, :cond_0

    .line 242
    const-string v2, "GoogleHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blocked by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient$BlockedRequestException;

    invoke-direct {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient$BlockedRequestException;-><init>(Lcom/google/android/common/http/UrlRules$Rule;)V

    throw v0

    .line 244
    :cond_0
    if-ne v2, v0, :cond_1

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/google/android/common/http/GoogleHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 249
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    invoke-static {p1}, Lcom/google/android/common/http/GoogleHttpClient;->wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v1

    .line 256
    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 260
    invoke-virtual {p0, v1, p2}, Lcom/google/android/common/http/GoogleHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URL from rule: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/common/http/UrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 19
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v15, -0x1

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 180
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const-string v4, "http_stats"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 187
    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    .line 188
    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 191
    if-nez v18, :cond_1

    const/4 v3, 0x0

    move-object v4, v3

    .line 192
    :goto_0
    if-eqz v4, :cond_0

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 196
    sub-long v11, v13, v16

    .line 197
    new-instance v3, Lcom/google/android/common/http/NetworkStatsEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object v5, v0

    invoke-direct/range {v3 .. v14}, Lcom/google/android/common/http/NetworkStatsEntity;-><init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V

    .line 200
    move-object/from16 v0, v18

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    move-object/from16 v3, v18

    .line 206
    :goto_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 214
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v5, v16

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    if-ltz v4, :cond_3

    const/4 v7, 0x1

    .line 218
    :goto_2
    const v8, 0x318fa

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v10

    const/4 v5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v5

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object v5, v0

    aput-object v5, v9, v4

    const/4 v4, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    :goto_3
    return-object v3

    .line 191
    :cond_1
    :try_start_2
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    .line 203
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 217
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 220
    :catch_0
    move-exception v4

    .line 221
    const-string v5, "GoogleHttpClient"

    const-string v6, "Error recording stats"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 213
    :catchall_0
    move-exception v3

    .line 214
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v16

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mConnectionAllocated:Ljava/lang/ThreadLocal;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    if-ltz v15, :cond_4

    const/4 v6, 0x1

    .line 218
    :goto_4
    const v7, 0x318fa

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v9

    const/4 v4, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/http/GoogleHttpClient;->mAppName:Ljava/lang/String;

    move-object v5, v0

    aput-object v5, v8, v4

    const/4 v4, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 222
    :goto_5
    throw v3

    .line 217
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 220
    :catch_1
    move-exception v4

    .line 221
    const-string v5, "GoogleHttpClient"

    const-string v6, "Error recording stats"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public rewriteURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/common/http/GoogleHttpClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/google/android/common/http/UrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/google/android/common/http/UrlRules;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p1}, Lcom/google/android/common/http/UrlRules;->matchRule(Ljava/lang/String;)Lcom/google/android/common/http/UrlRules$Rule;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1}, Lcom/google/android/common/http/UrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
