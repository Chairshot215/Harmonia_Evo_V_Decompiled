.class public Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field final form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V

    return-void
.end method

.method private getNames()[Ljava/lang/Object;
    .locals 7

    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v4

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-eq v1, v5, :cond_2

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    :try_start_0
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "badly formed Name object"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 5

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-eq v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v4, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :catch_0
    move-exception v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 4

    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getNames()[Ljava/lang/Object;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_1

    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Principal;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/Principal;

    check-cast v3, [Ljava/security/Principal;

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0
.end method
