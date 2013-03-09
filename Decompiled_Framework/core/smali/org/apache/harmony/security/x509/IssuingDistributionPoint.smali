.class public final Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "IssuingDistributionPoint.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

.field private indirectCRL:Z

.field private onlyContainsAttributeCerts:Z

.field private onlyContainsCACerts:Z

.field private onlyContainsUserCerts:Z

.field private onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/x509/DistributionPointName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/ReasonFlags;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    iput-object p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    iput-object p2, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    iput-object p0, v0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Issuing Distribution Point: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  onlyContainsUserCerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  onlyContainsCACerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/ReasonFlags;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  indirectCRL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  onlyContainsAttributeCerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    return-object v0
.end method

.method public setIndirectCRL(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    return-void
.end method

.method public setOnlyContainsAttributeCerts(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return-void
.end method

.method public setOnlyContainsCACerts(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return-void
.end method

.method public setOnlyContainsUserCerts(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return-void
.end method
