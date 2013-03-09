.class final Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PKIStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;->setOptional(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;->setOptional(I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8

    const/4 v5, 0x2

    iget-object v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    const/4 v1, -0x1

    aget-object v4, v3, v5

    if-eqz v4, :cond_0

    aget-object v4, v3, v5

    check-cast v4, Lorg/apache/harmony/security/asn1/BitString;

    invoke-virtual {v4}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    aget-boolean v4, v0, v2

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    new-instance v5, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    move-result-object v6

    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, Ljava/util/List;

    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;-><init>(Lorg/apache/harmony/security/x509/tsp/PKIStatus;Ljava/util/List;Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;)V

    return-object v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    move-object v1, p1

    check-cast v1, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    const/4 v2, 0x0

    #getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$000(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->getStatus()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, p2, v2

    #getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$100(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Ljava/util/List;

    move-result-object v2

    aput-object v2, p2, v5

    #getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$200(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getMaxValue()I

    move-result v2

    new-array v0, v2, [Z

    #getter for: Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    invoke-static {v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$200(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getValue()I

    move-result v2

    aput-boolean v5, v0, v2

    new-instance v2, Lorg/apache/harmony/security/asn1/BitString;

    invoke-direct {v2, v0}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    aput-object v2, p2, v6

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    aput-object v2, p2, v6

    goto :goto_0
.end method
