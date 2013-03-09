.class public final Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
.super Ljava/lang/Object;
.source "TrustManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v10, "PKIX"

    invoke-static {v10}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v9

    const-string v10, "X509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    const-string v10, "AndroidCAStore"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v4, p1

    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v8}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-direct {v6}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    move-object v7, v8

    :goto_0
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    iput-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {v6, v10}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v7, v8

    goto :goto_1
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .locals 6

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    :goto_1
    return-object v5

    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v6, p1

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "null or zero-length parameter"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-eqz v6, :cond_2

    new-instance v6, Ljava/security/cert/CertificateException;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v5}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->cleanupCertChainAndFindTrustAnchors([Ljava/security/cert/X509Certificate;Ljava/util/Set;)[Ljava/security/cert/X509Certificate;

    move-result-object v3

    array-length v6, v3

    if-nez v6, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/security/cert/CertificateException;

    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v8, "Trust anchor for certification path not found."

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct {v7, v8, v9, v0, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_5
    :try_start_0
    new-instance v4, Ljava/security/cert/PKIXParameters;

    invoke-direct {v4, v5}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v6, v0, v4}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    const/4 v2, 0x1

    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/security/cert/CertificateException;

    invoke-direct {v6, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v1

    new-instance v6, Ljava/security/cert/CertificateException;

    invoke-direct {v6, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private cleanupCertChainAndFindTrustAnchors([Ljava/security/cert/X509Certificate;Ljava/util/Set;)[Ljava/security/cert/X509Certificate;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    move-object v5, p1

    const/4 v1, 0x0

    :goto_0
    array-length v8, p1

    if-ge v1, v8, :cond_0

    aget-object v8, p1, v1

    invoke-direct {p0, v8}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    array-length v8, p1

    if-ne v0, v8, :cond_6

    move-object v3, p1

    :goto_1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, v0, -0x1

    aget-object v8, v3, v8

    invoke-direct {p0, v8}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v3

    :cond_2
    const/4 v2, 0x0

    add-int/lit8 v4, v1, 0x1

    :goto_2
    array-length v8, p1

    if-ge v4, v8, :cond_4

    aget-object v8, p1, v1

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    aget-object v9, p1, v4

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    add-int/lit8 v8, v1, 0x1

    if-eq v4, v8, :cond_4

    if-ne p1, v5, :cond_3

    invoke-virtual {v5}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    :cond_3
    aget-object v6, p1, v4

    add-int/lit8 v8, v1, 0x1

    aget-object v8, p1, v8

    aput-object v8, p1, v4

    add-int/lit8 v8, v1, 0x1

    aput-object v6, p1, v8

    :cond_4
    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/security/cert/X509Certificate;

    move-object v3, v8

    goto :goto_1
.end method

.method private findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    if-nez v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->isTrustAnchor(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->trustedCertificateIndex:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    new-instance v5, Ljava/security/cert/TrustAnchor;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_0
.end method
