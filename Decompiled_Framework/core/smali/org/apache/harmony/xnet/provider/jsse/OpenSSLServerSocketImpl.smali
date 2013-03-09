.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;
.super Ljavax/net/ssl/SSLServerSocket;
.source "OpenSSLServerSocketImpl.java"


# instance fields
.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledCompressionMethods:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

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

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

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

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

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

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

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

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-void
.end method

.method private checkEnabledCipherSuites()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_9

    aget-object v1, v0, v2

    const-string v5, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_1
    return-void

    :cond_2
    const-string v5, "RSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "DH_RSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const-class v5, Ljava/security/interfaces/RSAPrivateKey;

    invoke-direct {p0, v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->checkForPrivateKey(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_4
    const-string v5, "DSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "DH_DSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const-class v5, Ljava/security/interfaces/DSAPrivateKey;

    invoke-direct {p0, v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->checkForPrivateKey(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_6
    const-string v5, "EC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "EC_RSA"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "EC_EC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const-class v5, Ljava/security/interfaces/ECPrivateKey;

    invoke-direct {p0, v3, v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->checkForPrivateKey(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown key type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "Could not find any key store entries to support the enabled cipher suites."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private checkForPrivateKey(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    invoke-interface {v3, p1, v4, v4}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    invoke-interface {v3, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->checkEnabledCipherSuites()V

    :cond_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->implAccept(Ljava/net/Socket;)V

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledCompressionMethods()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCompressionMethods()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCompressionMethods()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledCompressionMethods([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCompressionMethods([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledCompressionMethods:[Ljava/lang/String;

    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->enabledProtocols:[Ljava/lang/String;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    return-void
.end method
