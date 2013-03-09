.class public Lcom/android/org/bouncycastle/asn1/x9/X9Curve;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X9Curve.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private seed:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getIdentifier()Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v8, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v14

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v14, v7}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v6, v14, v7}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v7, v14, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const/4 v7, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v8, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/DERSequence;

    const/4 v7, 0x0

    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    check-cast v17, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->tpBasis:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    :goto_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(IIIILcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getValue()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v16

    check-cast v16, Lcom/android/org/bouncycastle/asn1/DERSequence;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    const/4 v7, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    return-void
.end method

.method private setFieldIdentifier()V
    .locals 2

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    instance-of v0, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    instance-of v0, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->prime_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldElement;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0
.end method
