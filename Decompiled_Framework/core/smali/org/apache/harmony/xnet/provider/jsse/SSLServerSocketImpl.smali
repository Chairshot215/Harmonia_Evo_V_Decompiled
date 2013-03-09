.class public Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;
.super Ljavax/net/ssl/SSLServerSocket;
.source "SSLServerSocketImpl.java"


# instance fields
.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private final sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method protected constructor <init>(IILjava/net/InetAddress;Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    const-string v0, "ssocket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(IILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    const-string v0, "ssocket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLServerSocket;-><init>(I)V

    const-string v0, "ssocket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    const-string v0, "ssocket"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v2, "SSLServerSocketImpl.accept .."

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->implAccept(Ljava/net/Socket;)V

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;->init()V

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v2, "SSLServerSocketImpl: accepted, initialized"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[SSLServerSocketImpl]"

    return-object v0
.end method
