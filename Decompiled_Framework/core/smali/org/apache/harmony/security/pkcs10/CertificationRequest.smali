.class public final Lorg/apache/harmony/security/pkcs10/CertificationRequest;
.super Ljava/lang/Object;
.source "CertificationRequest.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private encoding:[B

.field private info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

.field private signature:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    iput-object p2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;-><init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    iput-object p4, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/pkcs10/CertificationRequest$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;-><init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    return-object v0
.end method

.method public getInfo()Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    iget-object v2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
