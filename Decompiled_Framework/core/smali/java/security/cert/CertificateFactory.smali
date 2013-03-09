.class public Ljava/security/cert/CertificateFactory;
.super Ljava/lang/Object;
.source "CertificateFactory.java"


# static fields
.field private static final ENGINE:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static final SERVICE:Ljava/lang/String; = "CertificateFactory"


# instance fields
.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/cert/CertificateFactorySpi;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "CertificateFactory"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/cert/CertificateFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/security/cert/CertificateFactory;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/cert/CertificateFactory;->type:Ljava/lang/String;

    iput-object p1, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    :try_start_0
    sget-object v2, Ljava/security/cert/CertificateFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;

    move-result-object v1

    new-instance v3, Ljava/security/cert/CertificateFactory;

    iget-object v2, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertificateFactorySpi;

    iget-object v4, v1, Lorg/apache/harmony/security/fortress/Engine$SpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v3, v2, v4, p0}, Ljava/security/cert/CertificateFactory;-><init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    if-nez p0, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_1
    :try_start_0
    sget-object v2, Ljava/security/cert/CertificateFactory;->ENGINE:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/security/cert/CertificateFactory;

    check-cast v1, Ljava/security/cert/CertificateFactorySpi;

    invoke-direct {v2, v1, p1, p0}, Ljava/security/cert/CertificateFactory;-><init>(Ljava/security/cert/CertificateFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    return-object v0
.end method

.method public final generateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/CertificateFactory;->getCertPathEncodings()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "There are no CertPath encodings"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v1

    return-object v1
.end method

.method public final generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public final generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public final generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertificateFactorySpi;->engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getCertPathEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->spiImpl:Ljava/security/cert/CertificateFactorySpi;

    invoke-virtual {v0}, Ljava/security/cert/CertificateFactorySpi;->engineGetCertPathEncodings()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/CertificateFactory;->type:Ljava/lang/String;

    return-object v0
.end method
