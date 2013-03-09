.class public final Lorg/apache/harmony/security/x509/TBSCertificate;
.super Ljava/lang/Object;
.source "TBSCertificate.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final issuer:Lorg/apache/harmony/security/x501/Name;

.field private final issuerUniqueID:[Z

.field private final serialNumber:Ljava/math/BigInteger;

.field private final signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final subject:Lorg/apache/harmony/security/x501/Name;

.field private final subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

.field private final subjectUniqueID:[Z

.field private final validity:Lorg/apache/harmony/security/x509/Validity;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertificate$1;

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v2, v1, v7

    const/4 v2, 0x4

    sget-object v3, Lorg/apache/harmony/security/x509/Validity;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertificate$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    iput-object p8, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    iput-object p9, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    iput-object p10, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-void
.end method

.method private constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[B)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V

    iput-object p11, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    return-void
.end method

.method synthetic constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertificate$1;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/TBSCertificate;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    return v0
.end method

.method static synthetic access$1000(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/TBSCertificate;)Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Validity;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;)V
    .locals 9

    const/16 v5, 0x31

    const/16 v6, 0x30

    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\n  Version: V"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n  Subject: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    const-string v8, "RFC2253"

    invoke-virtual {v7, v8}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  Signature Algorithm: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v4, p1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuilder;)V

    const-string v4, "\n  Key: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v7}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  Validity: [From: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    invoke-virtual {v7}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n               To: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    invoke-virtual {v7}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x5d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "\n  Issuer: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    const-string v8, "RFC2253"

    invoke-virtual {v7, v8}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  Serial Number: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    if-eqz v4, :cond_1

    const-string v4, "\n  Issuer Id: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, v0, v2

    if-eqz v1, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    if-eqz v4, :cond_3

    const-string v4, "\n  Subject Id: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-boolean v1, v0, v2

    if-eqz v1, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v4, v6

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v4, :cond_4

    const-string v4, "\n\n  Extensions: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    const-string v5, "    "

    invoke-virtual {v4, p1, v5}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string v4, "  ]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v4, "\n]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    return-object v0
.end method

.method public getExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSubject()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    return-object v0
.end method

.method public getValidity()Lorg/apache/harmony/security/x509/Validity;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    return v0
.end method
