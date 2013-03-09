.class public final Lorg/apache/harmony/security/x509/PolicyConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "PolicyConstraints.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final inhibitPolicyMapping:Ljava/math/BigInteger;

.field private final requireExplicitPolicy:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/harmony/security/x509/PolicyConstraints$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p3, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLorg/apache/harmony/security/x509/PolicyConstraints$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    sget-object v1, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    iget-object v1, v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    iget-object v1, v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PolicyConstraints: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  requireExplicitPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  inhibitPolicyMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    return-object v0
.end method
