.class final Llibcore/net/http/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "HttpsURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpsURLConnectionImpl$1;,
        Llibcore/net/http/HttpsURLConnectionImpl$ProxyConnectEngine;,
        Llibcore/net/http/HttpsURLConnectionImpl$HttpsEngine;,
        Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;
    }
.end annotation


# instance fields
.field private final delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 2

    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILlibcore/net/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 6

    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    new-instance v0, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Llibcore/net/http/HttpsURLConnectionImpl;Ljava/net/URL;ILjava/net/Proxy;Llibcore/net/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    return-void
.end method

.method private checkConnected()V
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->disconnect()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectTimeout()I
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2, p3}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getHttpEngine()Llibcore/net/http/HttpEngine;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHttpEngine()Llibcore/net/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    goto :goto_0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v1

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    iget-object v1, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v1

    goto :goto_0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Llibcore/net/http/HttpsURLConnectionImpl;->checkConnected()V

    iget-object v2, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    goto :goto_0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpsURLConnectionImpl;->delegate:Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Llibcore/net/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->usingProxy()Z

    move-result v0

    return v0
.end method
