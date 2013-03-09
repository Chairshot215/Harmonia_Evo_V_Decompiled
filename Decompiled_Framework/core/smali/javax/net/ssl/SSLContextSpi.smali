.class public abstract Ljavax/net/ssl/SSLContextSpi;
.super Ljava/lang/Object;
.source "SSLContextSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createSSLParameters(Z)Ljavax/net/ssl/SSLParameters;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    new-instance v2, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v2}, Ljavax/net/ssl/SSLParameters;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v0}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    return-object v2

    :cond_0
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Could not access supported SSL parameters"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method protected abstract engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/net/ssl/SSLContextSpi;->createSSLParameters(Z)Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method protected abstract engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected abstract engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
.end method

.method protected abstract engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method protected engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljavax/net/ssl/SSLContextSpi;->createSSLParameters(Z)Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method protected abstract engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method
