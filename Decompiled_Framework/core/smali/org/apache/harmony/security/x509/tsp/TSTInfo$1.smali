.class final Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TSTInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TSTInfo;
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

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x3

    iget-object v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    new-array v0, v5, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v3, v2, v1

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v3

    aput v3, v0, v1

    if-lez v1, :cond_1

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v1

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time-stamp accuracy value is incorrect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5

    check-cast p1, [I

    move-object v0, p1

    check-cast v0, [I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    aget v2, v0, v1

    if-ltz v2, :cond_0

    aget v2, v0, v1

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time-stamp accuracy value is incorrect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    aget v2, v0, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
