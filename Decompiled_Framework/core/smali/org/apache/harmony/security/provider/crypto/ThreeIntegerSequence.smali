.class Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
.super Ljava/lang/Object;
.source "ThreeIntegerSequence.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field g:[B

.field p:[B

.field q:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method constructor <init>([B[B[B)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->p:[B

    iput-object p2, p0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->q:[B

    iput-object p3, p0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->g:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->encoding:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->encoding:[B

    return-object v0
.end method
