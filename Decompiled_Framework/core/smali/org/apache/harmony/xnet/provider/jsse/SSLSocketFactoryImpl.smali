.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLSocketFactoryImpl.java"


# instance fields
.field private final instantiationException:Ljava/io/IOException;

.field private final sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getDefault()Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v3, "Delayed instantiation exception:"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    :cond_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v1, p1, p4, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketWrapper;-><init>(Ljava/net/Socket;ZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getSupportedCipherSuiteNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
