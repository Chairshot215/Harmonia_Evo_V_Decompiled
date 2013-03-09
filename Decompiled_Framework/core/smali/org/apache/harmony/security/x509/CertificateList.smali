.class public final Lorg/apache/harmony/security/x509/CertificateList;
.super Ljava/lang/Object;
.source "CertificateList.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final signatureValue:[B

.field private final tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/harmony/security/x509/CertificateList$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateList$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    iput-object p2, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/CertificateList;-><init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    iput-object p4, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/x509/CertificateList$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/x509/CertificateList;-><init>(Lorg/apache/harmony/security/x509/TBSCertList;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/CertificateList;)Lorg/apache/harmony/security/x509/TBSCertList;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/CertificateList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/CertificateList;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->encoding:[B

    return-object v0
.end method

.method public getSignatureValue()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    iget-object v2, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getTbsCertList()Lorg/apache/harmony/security/x509/TBSCertList;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->tbsCertList:Lorg/apache/harmony/security/x509/TBSCertList;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/x509/TBSCertList;->dumpValue(Ljava/lang/StringBuilder;)V

    const-string v1, "\nSignature Value:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificateList;->signatureValue:[B

    const-string v2, ""

    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
