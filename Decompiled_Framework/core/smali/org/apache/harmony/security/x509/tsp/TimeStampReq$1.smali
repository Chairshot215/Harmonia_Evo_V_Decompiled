.class final Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TimeStampReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TimeStampReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setDefault(Ljava/lang/Object;I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq$1;->setOptional(I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    const/4 v0, 0x2

    aget-object v0, v9, v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x3

    aget-object v0, v9, v0

    if-nez v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    const/4 v0, 0x5

    aget-object v0, v9, v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    const/4 v1, 0x0

    aget-object v1, v9, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v9, v2

    check-cast v2, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    const/4 v5, 0x4

    aget-object v5, v9, v5

    check-cast v5, Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/tsp/TimeStampReq$1;)V

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x2

    aget-object v0, v9, v0

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/math/BigInteger;

    const/4 v0, 0x3

    aget-object v0, v9, v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    const/4 v1, 0x0

    aget-object v1, v9, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v9, v2

    check-cast v2, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    const/4 v5, 0x4

    aget-object v5, v9, v5

    check-cast v5, Ljava/lang/Boolean;

    const/4 v6, 0x5

    aget-object v6, v9, v6

    check-cast v6, Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;-><init>(ILorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/Boolean;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/tsp/TimeStampReq$1;)V

    goto :goto_2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;

    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->version:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$100(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)I

    move-result v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v1

    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$200(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    move-result-object v3

    aput-object v3, p2, v1

    const/4 v3, 0x2

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$300(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    aput-object v1, p2, v3

    const/4 v1, 0x3

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$400(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/math/BigInteger;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    aput-object v2, p2, v1

    const/4 v2, 0x4

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$500(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    aput-object v1, p2, v2

    const/4 v1, 0x5

    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$600(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v2

    aput-object v2, p2, v1

    return-void

    :cond_0
    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->reqPolicy:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$300(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_0

    :cond_1
    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->nonce:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$400(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    goto :goto_1

    :cond_2
    #getter for: Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->certReq:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TimeStampReq;->access$500(Lorg/apache/harmony/security/x509/tsp/TimeStampReq;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2
.end method
