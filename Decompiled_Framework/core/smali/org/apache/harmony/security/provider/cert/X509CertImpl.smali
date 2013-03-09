.class public final Lorg/apache/harmony/security/provider/cert/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"


# static fields
.field private static final serialVersionUID:J = 0x293f8c78c6c7611aL


# instance fields
.field private final certificate:Lorg/apache/harmony/security/x509/Certificate;

.field private volatile encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private volatile issuer:Ljavax/security/auth/x500/X500Principal;

.field private volatile notAfter:J

.field private volatile notBefore:J

.field private volatile nullSigAlgParams:Z

.field private volatile publicKey:Ljava/security/PublicKey;

.field private volatile serialNumber:Ljava/math/BigInteger;

.field private volatile sigAlgName:Ljava/lang/String;

.field private volatile sigAlgOID:Ljava/lang/String;

.field private volatile sigAlgParams:[B

.field private volatile signature:[B

.field private volatile subject:Ljavax/security/auth/x500/X500Principal;

.field private final tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

.field private volatile tbsCertificate:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    iput-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    iput-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/Certificate;

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/Certificate;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Certificate;->getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    return-void
.end method

.method private checkValidity(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", validation time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expiration time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private getEncodedInternal()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    :cond_0
    return-object v0
.end method

.method private getNotAfterInternal()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    :cond_0
    return-wide v0
.end method

.method private getNotBeforeInternal()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    :cond_0
    return-wide v0
.end method

.method private getSignatureInternal()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    :cond_0
    return-object v0
.end method

.method private getTbsCertificateInternal()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkValidity()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->checkValidity(J)V

    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->checkValidity(J)V

    return-void
.end method

.method public getBasicConstraints()I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->valueOfBasicConstrains()I

    move-result v0

    goto :goto_0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfExtendedKeyUsage()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfIssuerAlternativeName()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuerUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    :cond_0
    return-object v0
.end method

.method public getKeyUsage()[Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->valueOfKeyUsage()[Z

    move-result-object v0

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotAfterInternal()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getNotBeforeInternal()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    :cond_0
    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    :cond_0
    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    goto :goto_0
.end method

.method public getSignature()[B
    .locals 1

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSignatureInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfSubjectAlternativeName()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubjectUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubject()Lorg/apache/harmony/security/x501/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    :cond_0
    return-object v0
.end method

.method public getTBSCertificate()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getVersion()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/Signature;->update([BII)V

    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Signature was not verified"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getTbsCertificateInternal()[B

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/Signature;->update([BII)V

    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Signature was not verified"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-void
.end method
