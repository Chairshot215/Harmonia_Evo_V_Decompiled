.class Lcom/android/org/bouncycastle/math/ec/FpNafMultiplier;
.super Ljava/lang/Object;
.source "FpNafMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 9

    move-object v1, p2

    const-wide/16 v7, 0x3

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    move-object v0, p1

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    add-int/lit8 v5, v7, -0x2

    :goto_0
    if-lez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eq v4, v2, :cond_0

    if-eqz v4, :cond_1

    move-object v7, p1

    :goto_1
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    move-object v7, v6

    goto :goto_1

    :cond_2
    return-object v0
.end method
