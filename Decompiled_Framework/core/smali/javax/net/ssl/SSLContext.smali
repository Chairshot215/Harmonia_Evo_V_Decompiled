.class public Ljavax/net/ssl/SSLContext;
.super Ljava/lang/Object;
.source "SSLContext.java"


# static fields
.field private static DEFAULT:Ljavax/net/ssl/SSLContext; = null

.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final SERVICE:Ljava/lang/String; = "SSLContext"


# instance fields
.field private final protocol:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/net/ssl/SSLContextSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "SSLContext"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    iput-object p1, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    return-void
.end method

.method public static getDefault()Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v1, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    const-string v0, "Default"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sput-object v0, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "protocol is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v0

    new-instance v2, Ljavax/net/ssl/SSLContext;

    iget-object v1, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/net/ssl/SSLContextSpi;

    iget-object v3, v0, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0, v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "provider is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p0, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "protocol is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v1, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljavax/net/ssl/SSLContext;

    check-cast v0, Ljavax/net/ssl/SSLContextSpi;

    invoke-direct {v1, v0, p1, p0}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v1
.end method

.method public static setDefault(Ljavax/net/ssl/SSLContext;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslContext == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Ljavax/net/ssl/SSLContext;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    :try_start_0
    sput-object p0, Ljavax/net/ssl/SSLContext;->DEFAULT:Ljavax/net/ssl/SSLContext;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final createSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public final createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLContextSpi;->engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method

.method public final getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetDefaultSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public final getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContextSpi;->engineGetSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    return-object v0
.end method

.method public final init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/net/ssl/SSLContext;->spiImpl:Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLContextSpi;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method
