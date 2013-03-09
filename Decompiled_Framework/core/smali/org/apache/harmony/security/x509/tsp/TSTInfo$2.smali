.class final Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;
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
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setDefault(Ljava/lang/Object;I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$2;->setOptional(I)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 12

    const/4 v1, 0x7

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, [Ljava/lang/Object;

    aget-object v0, v11, v1

    if-nez v0, :cond_0

    const/4 v8, 0x0

    :goto_0
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;

    const/4 v1, 0x0

    aget-object v1, v11, v1

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v11, v2

    check-cast v2, [I

    check-cast v2, [I

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v11, v3

    check-cast v3, Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x3

    aget-object v5, v11, v5

    check-cast v5, [B

    check-cast v5, [B

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>([B)V

    const/4 v5, 0x4

    aget-object v5, v11, v5

    check-cast v5, Ljava/util/Date;

    const/4 v6, 0x5

    aget-object v6, v11, v6

    check-cast v6, [I

    check-cast v6, [I

    const/4 v7, 0x6

    aget-object v7, v11, v7

    check-cast v7, Ljava/lang/Boolean;

    const/16 v9, 0x8

    aget-object v9, v11, v9

    check-cast v9, Lorg/apache/harmony/security/x509/GeneralName;

    const/16 v10, 0x9

    aget-object v10, v11, v10

    check-cast v10, Lorg/apache/harmony/security/x509/Extensions;

    invoke-direct/range {v0 .. v10}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;-><init>(ILjava/lang/String;Lorg/apache/harmony/security/x509/tsp/MessageImprint;Ljava/math/BigInteger;Ljava/util/Date;[ILjava/lang/Boolean;Ljava/math/BigInteger;Lorg/apache/harmony/security/x509/GeneralName;Lorg/apache/harmony/security/x509/Extensions;)V

    return-object v0

    :cond_0
    new-instance v8, Ljava/math/BigInteger;

    aget-object v0, v11, v1

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v8, v0}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/TSTInfo;

    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->version:I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$000(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)I

    move-result v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->policy:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$100(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->messageImprint:Lorg/apache/harmony/security/x509/tsp/MessageImprint;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$200(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/tsp/MessageImprint;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x3

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->serialNumber:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$300(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x4

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->genTime:Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$400(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x5

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->accuracy:[I
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$500(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)[I

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x6

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->ordering:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$600(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v2, 0x7

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$700(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    aput-object v1, p2, v2

    const/16 v1, 0x8

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->tsa:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$800(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v2

    aput-object v2, p2, v1

    const/16 v1, 0x9

    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$900(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v2

    aput-object v2, p2, v1

    return-void

    :cond_0
    #getter for: Lorg/apache/harmony/security/x509/tsp/TSTInfo;->nonce:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo;->access$700(Lorg/apache/harmony/security/x509/tsp/TSTInfo;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method
