.class final Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "IssuingDistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setOptional(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setOptional(I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    new-instance v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/security/x509/DistributionPointName;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    check-cast v3, Lorg/apache/harmony/security/x509/ReasonFlags;

    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;-><init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;)V

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/harmony/security/x509/ExtensionValue;->encoding:[B

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsUserCerts(Z)V

    :cond_0
    aget-object v2, v1, v5

    if-eqz v2, :cond_1

    aget-object v2, v1, v5

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsCACerts(Z)V

    :cond_1
    aget-object v2, v1, v6

    if-eqz v2, :cond_2

    aget-object v2, v1, v6

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setIndirectCRL(Z)V

    :cond_2
    aget-object v2, v1, v7

    if-eqz v2, :cond_3

    aget-object v2, v1, v7

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsAttributeCerts(Z)V

    :cond_3
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$000(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;

    move-result-object v3

    aput-object v3, p2, v1

    const/4 v3, 0x1

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$100(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v1, p2, v3

    const/4 v3, 0x2

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$200(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    aput-object v1, p2, v3

    const/4 v1, 0x3

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$300(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;

    move-result-object v3

    aput-object v3, p2, v1

    const/4 v3, 0x4

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$400(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v1, p2, v3

    const/4 v1, 0x5

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$500(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    aput-object v2, p2, v1

    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method
