.class public Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "SSLContextImpl.java"


# static fields
.field private static DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;


# instance fields
.field private final clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

.field private final serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

.field protected sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    const-class v7, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    monitor-enter v7

    :try_start_0
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;-><init>()V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    move-object v1, v0

    sput-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    :goto_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    monitor-exit v7

    return-void

    :cond_0
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/DefaultSSLContextImpl;->engineGetServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 3

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SSLContext is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 3

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SSLContext is not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;-><init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v1
.end method

.method public bridge synthetic engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    return-object v0
.end method

.method public bridge synthetic engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineGetServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    return-object v0
.end method

.method public engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    return-object v0
.end method

.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    return-void
.end method
