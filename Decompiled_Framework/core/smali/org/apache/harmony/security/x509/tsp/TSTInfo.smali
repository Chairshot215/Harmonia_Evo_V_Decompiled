.class public Lorg/apache/harmony/security/x509/tsp/TSTInfo;
.super Ljava/lang/Object;
.source "TSTInfo.java"


# static fields
.field public static final ACCURACY:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final accuracy:[I

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final genTime:Ljava/util/Date;

.field private final messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

.field private final nonce:Ljava/math/BigInteger;

.field private final ordering:Ljava/lang/Boolean;

.field private final policy:Ljava/lang/String;

.field private final serialNumber:Ljava/math/BigInteger;

.field private final tsa:Lorg/apache/harmony/security/x509/GeneralName;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;

    new-array v1, v4, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ACCURACY:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/harmony/security/x509/tsp/MessageImprint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v3

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x4

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ACCURACY:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v4, Lorg/apache/harmony/security/x509/GeneralName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/math/BigInteger;Ljava/util/Date;[ILjava/lang/Boolean;Ljava/math/BigInteger;Lorg/apache/harmony/security/x509/GeneralName;Lorg/apache/harmony/security/x509/Extensions;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->version:I

    iput-object p2, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->policy:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    iput-object p4, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->serialNumber:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->genTime:Ljava/util/Date;

    iput-object p6, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    iput-object p7, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ordering:Ljava/lang/Boolean;

    iput-object p8, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;

    iput-object p9, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->tsa:Lorg/apache/harmony/security/x509/GeneralName;

    iput-object p10, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->version:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->policy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->genTime:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)[I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ordering:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->tsa:Lorg/apache/harmony/security/x509/GeneralName;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method


# virtual methods
.method public getAccuracy()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    return-object v0
.end method

.method public getExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getGenTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->genTime:Ljava/util/Date;

    return-object v0
.end method

.method public getMessageImprint()Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOrdering()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ordering:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTsa()Lorg/apache/harmony/security/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->tsa:Lorg/apache/harmony/security/x509/GeneralName;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->version:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- TSTInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nversion:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\npolicy:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->policy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmessageImprint:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nserialNumber:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ngenTime:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->genTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\naccuracy:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " millis, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " micros"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "\nordering:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ordering:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nnonce:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ntsa:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->tsa:Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nextensions:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n-- TSTInfo End\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
