.class public Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;
.super Ljava/security/spec/ECParameterSpec;
.source "ECNamedCurveSpec.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p3}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p3}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 3

    invoke-static {p2, p6}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p3}, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->convertPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    return-void
.end method

.method private static convertCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/security/spec/EllipticCurve;

    new-instance v4, Ljava/security/spec/ECFieldFp;

    move-object v2, p0

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v1, v4, [I

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v2

    aput v2, v1, v3

    new-instance v2, Ljava/security/spec/EllipticCurve;

    new-instance v3, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v4

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    new-array v1, v2, [I

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK3()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK2()I

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v3

    aput v3, v1, v2

    new-instance v2, Ljava/security/spec/EllipticCurve;

    new-instance v3, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v4

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0
.end method

.method private static convertPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;
    .locals 3

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    return-object v0
.end method
