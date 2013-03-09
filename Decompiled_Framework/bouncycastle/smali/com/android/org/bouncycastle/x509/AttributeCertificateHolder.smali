.class public Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;
.super Ljava/lang/Object;
.source "AttributeCertificateHolder.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field final holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v2, p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-direct {v1, p1, p3, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;-><init>(ILjava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Holder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v4, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v3, p2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/DERInteger;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/Holder;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;Lcom/android/org/bouncycastle/asn1/DERInteger;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/Holder;-><init>(Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;)V
    .locals 1

    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509Util;->convertPrincipal(Ljavax/security/auth/x500/X500Principal;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;Ljava/math/BigInteger;)V

    return-void
.end method

.method private generateGeneralNames(Lcom/android/org/bouncycastle/jce/X509Principal;)Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method private getNames([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-eq v1, v3, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "badly formed Name object"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;
    .locals 4

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getNames([Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)[Ljava/lang/Object;

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

.method private matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z
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
    new-instance v4, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z
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

    new-instance v1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDigestedObjectType()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getDigestedObjectType()Lcom/android/org/bouncycastle/asn1/DEREnumerated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEntityNames()[Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIssuer()[Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getPrincipals(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)[Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectDigest()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getObjectDigest()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOtherObjectTypeID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;->getOtherObjectTypeID()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->hashCode()I

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

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    :try_start_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

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

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v2}, Lcom/android/org/bouncycastle/jce/PrincipalUtil;->getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/jce/X509Principal;

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getEntityName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->matchesDN(Lcom/android/org/bouncycastle/jce/X509Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->holder:Lcom/android/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/Holder;->getObjectDigestInfo()Lcom/android/org/bouncycastle/asn1/x509/ObjectDigestInfo;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BC"

    invoke-static {v3, v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :try_start_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getDigestedObjectType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateHolder;->getObjectDigest()[B

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
