.class public Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
.super Ljava/lang/Object;
.source "PKIStatusInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field private final status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field private final statusString:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/tsp/PKIStatus;Ljava/util/List;Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    iput-object p2, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    iput-object p3, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    return-object v0
.end method


# virtual methods
.method public getFailInfo()Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    return-object v0
.end method

.method public getStatus()Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    return-object v0
.end method

.method public getStatusString()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- PKIStatusInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nPKIStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nstatusString:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nfailInfo:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n-- PKIStatusInfo End\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
