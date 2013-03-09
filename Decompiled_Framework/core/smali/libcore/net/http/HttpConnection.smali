.class final Llibcore/net/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpConnection$1;,
        Llibcore/net/http/HttpConnection$Address;
    }
.end annotation


# instance fields
.field private final address:Llibcore/net/http/HttpConnection$Address;

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field private final socket:Ljava/net/Socket;

.field private sslInputStream:Ljava/io/InputStream;

.field private sslOutputStream:Ljava/io/OutputStream;

.field private sslSocket:Ljavax/net/ssl/SSLSocket;

.field private unverifiedSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method private constructor <init>(Llibcore/net/http/HttpConnection$Address;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    const/4 v3, 0x0

    #getter for: Llibcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;
    invoke-static {p1}, Llibcore/net/http/HttpConnection$Address;->access$000(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    #getter for: Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;
    invoke-static {p1}, Llibcore/net/http/HttpConnection$Address;->access$100(Llibcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;
    invoke-static {p1}, Llibcore/net/http/HttpConnection$Address;->access$100(Llibcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v4, v5, :cond_1

    new-instance v3, Ljava/net/Socket;

    #getter for: Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;
    invoke-static {p1}, Llibcore/net/http/HttpConnection$Address;->access$100(Llibcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    :goto_1
    :try_start_0
    new-instance v4, Ljava/net/InetSocketAddress;

    aget-object v5, v0, v2

    #getter for: Llibcore/net/http/HttpConnection$Address;->socketPort:I
    invoke-static {p1}, Llibcore/net/http/HttpConnection$Address;->access$200(Llibcore/net/http/HttpConnection$Address;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iput-object v3, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    return-void

    :cond_1
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    goto :goto_1

    :catch_0
    move-exception v1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_2

    throw v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Llibcore/net/http/HttpConnection$Address;ILlibcore/net/http/HttpConnection$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Llibcore/net/http/HttpConnection;-><init>(Llibcore/net/http/HttpConnection$Address;I)V

    return-void
.end method

.method public static connect(Ljava/net/URI;Ljava/net/Proxy;ZI)Llibcore/net/http/HttpConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_0

    new-instance v0, Llibcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0}, Llibcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;)V

    :goto_0
    sget-object v6, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    invoke-virtual {v6, v0, p3}, Llibcore/net/http/HttpConnectionPool;->get(Llibcore/net/http/HttpConnection$Address;I)Llibcore/net/http/HttpConnection;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_0
    new-instance v0, Llibcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0, p1, p2}, Llibcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljava/net/Proxy;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Proxy;

    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v6, v7, :cond_2

    :try_start_0
    new-instance v0, Llibcore/net/http/HttpConnection$Address;

    invoke-direct {v0, p0, v4, p2}, Llibcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljava/net/Proxy;Z)V

    sget-object v6, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    invoke-virtual {v6, v0, p3}, Llibcore/net/http/HttpConnectionPool;->get(Llibcore/net/http/HttpConnection$Address;I)Llibcore/net/http/HttpConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v4}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v5, p0, v6, v1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_2

    :cond_3
    sget-object v6, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    new-instance v7, Llibcore/net/http/HttpConnection$Address;

    invoke-direct {v7, p0}, Llibcore/net/http/HttpConnection$Address;-><init>(Ljava/net/URI;)V

    invoke-virtual {v6, v7, p3}, Llibcore/net/http/HttpConnectionPool;->get(Llibcore/net/http/HttpConnection$Address;I)Llibcore/net/http/HttpConnection;

    move-result-object v6

    goto :goto_1
.end method


# virtual methods
.method public closeSocketAndStreams()V
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public getAddress()Llibcore/net/http/HttpConnection$Address;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    :cond_0
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->sslInputStream:Ljava/io/InputStream;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_2

    const/16 v0, 0x80

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z
    invoke-static {v1}, Llibcore/net/http/HttpConnection$Address;->access$300(Llibcore/net/http/HttpConnection$Address;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Llibcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    :cond_2
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->inputStream:Ljava/io/InputStream;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslOutputStream:Ljava/io/OutputStream;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    :cond_2
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->outputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method public getSecureSocketIfConnected()Ljavax/net/ssl/SSLSocket;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    goto :goto_0
.end method

.method protected isEligibleForRecycling()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStale()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Llibcore/net/http/HttpConnection;->isEligibleForRecycling()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0}, Llibcore/net/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lez v7, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Llibcore/net/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I

    move-result v3

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v4, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/io/InputStream;->mark(I)V

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_2

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, v6

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v5
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public setupSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;
    invoke-static {v2}, Llibcore/net/http/HttpConnection$Address;->access$400(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->uriPort:I
    invoke-static {v3}, Llibcore/net/http/HttpConnection$Address;->access$500(Llibcore/net/http/HttpConnection$Address;)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    iput-object v1, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_0

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    instance-of v1, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ZLIB"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setEnabledCompressionMethods([Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setUseSessionTickets(Z)V

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;
    invoke-static {v1}, Llibcore/net/http/HttpConnection$Address;->access$000(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHostname(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    return-void

    :cond_0
    iget-object v1, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "SSLv3"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verifySecureSocketHostname(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;
    invoke-static {v0}, Llibcore/net/http/HttpConnection$Address;->access$400(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/http/HttpConnection;->address:Llibcore/net/http/HttpConnection$Address;

    #getter for: Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;
    invoke-static {v2}, Llibcore/net/http/HttpConnection$Address;->access$400(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' was not verified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpConnection;->unverifiedSocket:Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    iget-object v0, p0, Llibcore/net/http/HttpConnection;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method
