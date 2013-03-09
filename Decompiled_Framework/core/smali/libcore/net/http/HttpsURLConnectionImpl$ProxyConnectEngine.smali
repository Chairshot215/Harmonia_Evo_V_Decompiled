.class Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;
.super Llibcore/net/http/HttpEngine;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyConnectEngine"
.end annotation


# direct methods
.method public constructor <init>(Llibcore/net/http/HttpURLConnectionImpl;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v2, "CONNECT"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Llibcore/net/http/HttpEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)V

    return-void
.end method


# virtual methods
.method protected getNetworkRequestHeaders()Llibcore/net/http/RawHeaders;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->getRequestHeaders()Llibcore/net/http/RequestHeaders;

    move-result-object v1

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v6}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v4

    new-instance v3, Llibcore/net/http/RawHeaders;

    invoke-direct {v3}, Llibcore/net/http/RawHeaders;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONNECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URL;->getEffectivePort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HTTP/1.1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    invoke-virtual {v1}, Llibcore/net/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v6, "Host"

    invoke-virtual {v3, v6, v0}, Llibcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Llibcore/net/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v6, "User-Agent"

    invoke-virtual {v3, v6, v5}, Llibcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Llibcore/net/http/RequestHeaders;->getProxyAuthorization()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v6, "Proxy-Authorization"

    invoke-virtual {v3, v6, v2}, Llibcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v6, "Proxy-Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v3, v6, v7}, Llibcore/net/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method protected requiresTunnel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
