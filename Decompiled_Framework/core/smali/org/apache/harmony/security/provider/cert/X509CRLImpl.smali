.class public Lorg/apache/harmony/security/provider/cert/X509CRLImpl;
.super Ljava/security/cert/X509CRL;
.source "X509CRLImpl.java"


# instance fields
.field private final crl:Lorg/apache/harmony/security/x509/CertificateList;

.field private encoding:[B

.field private entries:Ljava/util/ArrayList;

.field private entriesRetrieved:Z

.field private entriesSize:I

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private isIndirectCRL:Z

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private nonIndirectEntriesSize:I

.field private nullSigAlgParams:Z

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgOID:Ljava/lang/String;

.field private sigAlgParams:[B

.field private signature:[B

.field private final tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

.field private tbsCertListEncoding:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/CertificateList;

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateList;->getTbsCertList()Lorg/apache/harmony/security/x509/TBSCertList;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/CertificateList;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/CertificateList;->getTbsCertList()Lorg/apache/harmony/security/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/CertificateList;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Lorg/apache/harmony/security/x509/CertificateList;)V

    return-void
.end method

.method private retrieveEntries()V
    .locals 8

    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/TBSCertList;->getRevokedCertificates()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    new-instance v5, Ljava/util/ArrayList;

    iget v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    if-ge v0, v5, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v3, v1

    iput-boolean v7, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->isIndirectCRL:Z

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nonIndirectEntriesSize:I

    :cond_2
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;

    invoke-direct {v6, v2, v3}, Lorg/apache/harmony/security/provider/cert/X509CRLEntryImpl;-><init>(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateList;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 4

    const/4 v2, 0x0

    iget-boolean v3, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->retrieveEntries()V

    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nonIndirectEntriesSize:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLEntry;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 7

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    iget-boolean v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    if-nez v6, :cond_1

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->retrieveEntries()V

    :cond_1
    iget-object v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    move-object v1, v5

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    iget-boolean v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->isIndirectCRL:Z

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iget v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    if-ge v2, v6, :cond_8

    iget-object v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-nez v3, :cond_5

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_2
    iget v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesSize:I

    if-ge v2, v6, :cond_8

    iget-object v6, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRLEntry;

    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move-object v1, v5

    goto :goto_0
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entriesRetrieved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->retrieveEntries()V

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->entries:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgOID:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nullSigAlgParams:Z

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->nullSigAlgParams:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->sigAlgParams:[B

    goto :goto_0
.end method

.method public getSignature()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/CertificateList;->getSignatureValue()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertListEncoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getThisUpdate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertList;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_0
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/CertificateList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertList;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/CertificateList;->getSignatureValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Signature was not verified"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertList;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->crl:Lorg/apache/harmony/security/x509/CertificateList;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/CertificateList;->getSignatureValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Signature was not verified"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-void
.end method
