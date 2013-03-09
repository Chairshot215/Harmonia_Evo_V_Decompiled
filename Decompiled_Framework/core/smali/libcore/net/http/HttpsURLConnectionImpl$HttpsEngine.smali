.class Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;
.super Llibcore/net/http/HttpEngine;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpsURLConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpsEngine"
.end annotation


# instance fields
.field private final enclosing:Llibcore/net/http/HttpsURLConnectionImpl;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method private constructor <init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;Llibcore/net/http/HttpsURLConnectionImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Llibcore/net/http/HttpEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Llibcore/net/http/HttpConnection;->getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    iput-object p6, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Llibcore/net/http/HttpsURLConnectionImpl;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;Llibcore/net/http/HttpsURLConnectionImpl;Llibcore/net/http/HttpsURLConnectionImpl$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;Llibcore/net/http/HttpsURLConnectionImpl;)V

    return-void
.end method

.method static synthetic access$300(Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;)Ljavax/net/ssl/SSLSocket;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method private makeSslConnection(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->openSocketConnection()Llibcore/net/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getAddress()Llibcore/net/http/HttpConnection$Address;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection$Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {p0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->getRequestHeaders()Llibcore/net/http/RequestHeaders;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeTunnel(Llibcore/net/http/HttpURLConnectionImpl;Llibcore/net/http/HttpConnection;Llibcore/net/http/RequestHeaders;)V

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Llibcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Llibcore/net/http/HttpConnection;->setupSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeTunnel(Llibcore/net/http/HttpURLConnectionImpl;Llibcore/net/http/HttpConnection;Llibcore/net/http/RequestHeaders;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v2

    :goto_0
    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;

    invoke-direct {v0, p1, v2, p2}, Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;-><init>(Llibcore/net/http/HttpURLConnectionImpl;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;)V

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->sendRequest()V

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->readResponse()V

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseCode()I

    move-result v4

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected response code for CONNECT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_0
    new-instance v3, Llibcore/net/http/RawHeaders;

    invoke-direct {v3, v2}, Llibcore/net/http/RawHeaders;-><init>(Llibcore/net/http/RawHeaders;)V

    const/16 v5, 0x197

    invoke-virtual {v0}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v3}, Llibcore/net/http/HttpURLConnectionImpl;->processAuthHeader(ILlibcore/net/http/ResponseHeaders;Llibcore/net/http/RawHeaders;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to authenticate with proxy"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1

    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method protected connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeSslConnection(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    iget-object v3, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Llibcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {v3}, Llibcore/net/http/HttpsURLConnectionImpl;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Llibcore/net/http/HttpConnection;->verifySecureSocketHostname(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    :cond_0
    return-void

    :catch_0
    move-exception v1

    instance-of v2, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_1

    throw v1

    :cond_1
    invoke-virtual {p0, v3}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->release(Z)V

    invoke-direct {p0, v3}, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->makeSslConnection(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;->enclosing:Llibcore/net/http/HttpsURLConnectionImpl;

    return-object v0
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
