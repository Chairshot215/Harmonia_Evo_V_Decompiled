.class public Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "JDKX509CertificateFactory.java"


# static fields
.field private static final PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

.field private static final PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;


# instance fields
.field private currentCrlStream:Ljava/io/InputStream;

.field private currentStream:Ljava/io/InputStream;

.field private sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private sCrlDataObjectCount:I

.field private sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    const-string v1, "CERTIFICATE"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    const-string v1, "CRL"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    return-void
.end method

.method private getCRL()Ljava/security/cert/CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v0

    goto :goto_0
.end method

.method private getCertificate()Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iget v2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;)V

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readDERCRL(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getCRLs()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->getCRL()Ljava/security/cert/CRL;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v1

    goto :goto_0
.end method

.method private readDERCertificate(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;)V

    goto :goto_0
.end method

.method private readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->PEM_CRL_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    sget-object v1, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->PEM_CERT_PARSER:Lcom/android/org/bouncycastle/jce/provider/PEMUtil;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jce/provider/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509CertificateStructure;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createCRL(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)Ljava/security/cert/CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jce/provider/X509CRLObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/CertificateList;)V

    return-object v0
.end method

.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    if-nez v5, :cond_2

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->getCRL()Ljava/security/cert/CRL;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    if-eq v5, p1, :cond_0

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :try_start_1
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :cond_4
    :try_start_2
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getReadLimit(Ljava/io/InputStream;)I

    move-result v1

    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v4

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCRL(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    :try_end_2
    .catch Ljava/security/cert/CRLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v4, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;

    invoke-direct {v0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_0

    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list contains non X509Certificate object while creating CertPath\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-nez v5, :cond_2

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-direct {p0}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->getCertificate()Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    iget-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-eq v5, p1, :cond_0

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    iput-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    iput v6, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :try_start_1
    iput-object v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lcom/android/org/bouncycastle/asn1/ASN1Set;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_4
    :try_start_2
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/ProviderUtil;->getReadLimit(Ljava/io/InputStream;)I

    move-result v1

    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    const/16 v4, 0x30

    if-eq v3, v4, :cond_5

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCertificate(Lcom/android/org/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
