.class public Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;
.super Ljava/lang/Object;
.source "CipherSuiteFilterX509HostnameVerifierWrapper.java"

# interfaces
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final ENABLED_CIPHER_SUITES:[Ljava/lang/String;

.field private final log:Lorg/apache/commons/logging/Log;

.field private mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

.field private originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->log:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DES-CBC3-SHA"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->ENABLED_CIPHER_SUITES:[Ljava/lang/String;

    new-instance v0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;

    invoke-direct {v0}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapperDefault;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "originalVerifier must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-void
.end method


# virtual methods
.method filterEnabledCipherSuites(Ljavax/net/ssl/SSLSocket;)V
    .locals 5

    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterEnabledCipherSuites(SSLSocket createSocket)#started   sslSocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->mapper:Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;

    invoke-interface {v2, v1}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteMapper;->getEnabledAndroidCipherSuitesAfterFiltering([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    sget v2, Lorg/apache/http/impl/client/naf/util/Ll;->CURRENT:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "setEnabledCipherSuites(SSLSocket createSocket)#finished"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->filterEnabledCipherSuites(Ljavax/net/ssl/SSLSocket;)V

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/ciphersuite/CipherSuiteFilterX509HostnameVerifierWrapper;->originalVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p1, p2}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
