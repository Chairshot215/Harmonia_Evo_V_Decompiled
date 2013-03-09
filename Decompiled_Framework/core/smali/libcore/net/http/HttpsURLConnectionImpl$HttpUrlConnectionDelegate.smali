.class final Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;
.super Llibcore/net/http/HttpURLConnectionImpl;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HttpUrlConnectionDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/net/http/HttpsURLConnectionImpl;


# direct methods
.method private constructor <init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;I)V
    .locals 0

    iput-object p1, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Llibcore/net/http/HttpsURLConnectionImpl;

    invoke-direct {p0, p2, p3}, Llibcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    return-void
.end method

.method private constructor <init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Llibcore/net/http/HttpsURLConnectionImpl;

    invoke-direct {p0, p2, p3, p4}, Llibcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;ILjava/net/Proxy;)V

    return-void
.end method

.method synthetic constructor <init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;Llibcore/net/http/HttpsURLConnectionImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;)V

    return-void
.end method

.method synthetic constructor <init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILlibcore/net/http/HttpsURLConnectionImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;I)V

    return-void
.end method


# virtual methods
.method public getCacheResponse()Ljava/net/SecureCacheResponse;
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    check-cast v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->getCacheResponse()Ljava/net/CacheResponse;

    move-result-object v1

    check-cast v1, Ljava/net/SecureCacheResponse;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSSLSocket()Ljavax/net/ssl/SSLSocket;
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpURLConnectionImpl;->httpEngine:Llibcore/net/http/HttpEngine;

    check-cast v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;

    if-eqz v0, :cond_0

    #getter for: Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;
    invoke-static {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->access$300(Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;)Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHttpEngine(Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)Llibcore/net/http/HttpEngine;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;

    iget-object v6, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Llibcore/net/http/HttpsURLConnectionImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;Llibcore/net/http/HttpsURLConnectionImpl;Llibcore/net/http/HttpsURLConnectionImpl$1;)V

    return-object v0
.end method
