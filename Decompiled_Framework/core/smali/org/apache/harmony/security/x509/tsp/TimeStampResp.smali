.class public Lorg/apache/harmony/security/x509/tsp/TimeStampResp;
.super Ljava/lang/Object;
.source "TimeStampResp.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

.field private final timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampResp$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;Lorg/apache/harmony/security/pkcs7/ContentInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    iput-object p2, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/tsp/TimeStampResp;)Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/tsp/TimeStampResp;)Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    return-object v0
.end method


# virtual methods
.method public getStatus()Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    return-object v0
.end method

.method public getTimeStampToken()Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- TimeStampResp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nstatus:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ntimeStampToken:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/TimeStampResp;->timeStampToken:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n-- TimeStampResp End\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
