.class final Lorg/apache/harmony/security/x509/DistributionPoint$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "DistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/DistributionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    new-instance v4, Lorg/apache/harmony/security/x509/DistributionPoint;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lorg/apache/harmony/security/x509/DistributionPointName;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lorg/apache/harmony/security/x509/ReasonFlags;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-direct {v4, v1, v2, v3}, Lorg/apache/harmony/security/x509/DistributionPoint;-><init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;Lorg/apache/harmony/security/x509/GeneralNames;)V

    return-object v4
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPoint;

    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPoint;->access$000(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPoint;->access$100(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPoint;->access$200(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v2

    aput-object v2, p2, v1

    return-void
.end method
