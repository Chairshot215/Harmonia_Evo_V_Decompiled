.class public Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
.super Ljava/security/cert/X509CertSelector;
.source "X509CertStoreSelector.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Selector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;
    .locals 5

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cannot create from null selector"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getAuthorityKeyIdentifier()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setAuthorityKeyIdentifier([B)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setBasicConstraints(I)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificateValid()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setCertificateValid(Ljava/util/Date;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getMatchAllSubjectAltNames()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setMatchAllSubjectAltNames(Z)V

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPathToNames()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setPathToNames(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getExtendedKeyUsage()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setExtendedKeyUsage(Ljava/util/Set;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getNameConstraints()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setNameConstraints([B)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPolicy()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setPolicy(Ljava/util/Set;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKeyAlgID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectPublicKeyAlgID(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectAlternativeNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getKeyUsage()[Z

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setKeyUsage([Z)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPrivateKeyValid()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setPrivateKeyValid(Ljava/util/Date;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectKeyIdentifier([B)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->setSubjectPublicKey(Ljava/security/PublicKey;)V

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in passed in selector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 2

    instance-of v1, p1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-super {p0, v0}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    goto :goto_0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
