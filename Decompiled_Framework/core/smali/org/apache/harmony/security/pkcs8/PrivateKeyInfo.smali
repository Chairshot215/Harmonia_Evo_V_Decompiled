.class public final Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
.super Ljava/lang/Object;
.source "PrivateKeyInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private encoding:[B

.field private final privateKey:[B

.field private final privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->version:I

    iput-object p2, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKey:[B

    iput-object p4, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->attributes:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V

    iput-object p5, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;[BLorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->version:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKey:[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->attributes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKey:[B

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->version:I

    return v0
.end method
