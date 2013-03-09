.class public abstract Ljavax/net/ssl/SSLSocket;
.super Ljava/net/Socket;
.source "SSLSocket.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    return-void
.end method


# virtual methods
.method public abstract addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
.end method

.method public abstract getEnableSessionCreation()Z
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getEnabledProtocols()[Ljava/lang/String;
.end method

.method public abstract getNeedClientAuth()Z
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    return-object v0
.end method

.method public abstract getSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract getUseClientMode()Z
.end method

.method public abstract getWantClientAuth()Z
.end method

.method public abstract removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
.end method

.method public abstract setEnableSessionCreation(Z)V
.end method

.method public abstract setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract setEnabledProtocols([Ljava/lang/String;)V
.end method

.method public abstract setNeedClientAuth(Z)V
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    goto :goto_0
.end method

.method public abstract setUseClientMode(Z)V
.end method

.method public abstract setWantClientAuth(Z)V
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract startHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
