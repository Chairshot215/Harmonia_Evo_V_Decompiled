.class public Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
.super Ljava/security/cert/X509CRLSelector;
.source "X509CRLStoreSelector.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field private attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    .locals 4

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cannot create from null selector"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuers(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    return-object v0
.end method

.method public getAttrCertificateChecking()Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getIssuingDistributionPoint()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isCompleteCRLEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public isDeltaCRLIndicatorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public isIssuingDistributionPointEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x0

    instance-of v6, p1, Ljava/security/cert/X509CRL;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/security/cert/X509CRL;

    const/4 v2, 0x0

    :try_start_0
    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v2, :cond_0

    :cond_4
    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    :cond_5
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v6, :cond_7

    if-nez v4, :cond_0

    :cond_6
    check-cast p1, Ljava/security/cert/X509CRL;

    invoke-super {p0, p1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v4, v6}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttrCertificateChecking(Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    return-void
.end method

.method public setCompleteCRLEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    return-void
.end method

.method public setDeltaCRLIndicatorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    return-void
.end method

.method public setIssuingDistributionPoint([B)V
    .locals 1

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-void
.end method
