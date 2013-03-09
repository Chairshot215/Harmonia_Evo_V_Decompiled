.class public Lorg/apache/http/impl/client/naf/ciphersuite/CiperSuiteFilterInstaller;
.super Ljava/lang/Object;
.source "CiperSuiteFilterInstaller.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CiperSuiteFilterInstaller;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public setUpFilterWrapper(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 8

    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_0

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CiperSuiteFilterInstaller;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "setUpFilterWrapper()#started"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "connectionManager can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-interface {p1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "schemeRegistry can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const-string v6, "https"

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "httpsScheme can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "socketFactory can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    instance-of v6, v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v6, :cond_9

    move-object v5, v4

    check-cast v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-virtual {v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "hostnameVerifier can\'t be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    instance-of v6, v0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;

    if-nez v6, :cond_8

    new-instance v1, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;-><init>(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    invoke-virtual {v5, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_6

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CiperSuiteFilterInstaller;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "CipherSuiteFilterX509HostnameVerifierWrapper was successfully installed."

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_6
    :goto_0
    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_7

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CiperSuiteFilterInstaller;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "setUpFilterWrapper()#finished"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    sget v6, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_6

    iget-object v6, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CiperSuiteFilterInstaller;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "CipherSuiteFilterX509HostnameVerifierWrapper was already on place."

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "We have incompatible type of SocketFactory for TLS, it should be SSLSocketFactory compatible."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
