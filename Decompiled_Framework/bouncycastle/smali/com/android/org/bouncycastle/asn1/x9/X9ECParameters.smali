.class public Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X9ECParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

.field private g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad version in X9ECParameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v2, v3, v1}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;->getSeed()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 6

    sget-object v4, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK2()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK3()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    goto :goto_0
.end method


# virtual methods
.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    goto :goto_0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 4

    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/org/bouncycastle/asn1/x9/X9FieldID;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
