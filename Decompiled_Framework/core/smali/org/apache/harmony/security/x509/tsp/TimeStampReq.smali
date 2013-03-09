.class public Lorg/apache/harmony/security/x509/tsp/TimeStampReq;
.super Ljava/lang/Object;
.source "TimeStampReq.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final certReq:Ljava/lang/Boolean;

.field private encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

.field private final nonce:Ljava/math/BigInteger;

.field private final reqPolicy:Ljava/lang/String;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I

    iput-object p2, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    iput-object p3, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;

    iput-object p6, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;)V

    iput-object p7, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->encoding:[B

    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/tsp/TimeStampReq$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method


# virtual methods
.method public getCertReq()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->encoding:[B

    return-object v0
.end method

.method public getExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getMessageImprint()Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getReqPolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- TimeStampReq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nversion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmessageImprint:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nreqPolicy:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nnonce:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ncertReq:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nextensions:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n-- TimeStampReq End\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
