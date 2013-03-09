.class Lcom/android/org/bouncycastle/math/ec/WNafMultiplier;
.super Ljava/lang/Object;
.source "WNafMultiplier.java"

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
    .locals 15

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    instance-of v13, v0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v13, :cond_1

    move-object/from16 v12, p3

    check-cast v12, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v13, 0xd

    if-ge v3, v13, :cond_2

    const/4 v10, 0x2

    const/4 v8, 0x1

    :goto_1
    const/4 v6, 0x1

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwiceP()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    if-nez v5, :cond_8

    const/4 v13, 0x1

    new-array v5, v13, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    const/4 v13, 0x0

    aput-object p1, v5, v13

    :goto_2
    if-nez v9, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    :cond_0
    if-ge v6, v8, :cond_9

    move-object v4, v5

    new-array v5, v8, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v4, v13, v5, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v6

    :goto_3
    if-ge v1, v8, :cond_9

    add-int/lit8 v13, v1, -0x1

    aget-object v13, v5, v13

    invoke-virtual {v9, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    new-instance v12, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v12}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v13, 0x29

    if-ge v3, v13, :cond_3

    const/4 v10, 0x3

    const/4 v8, 0x2

    goto :goto_1

    :cond_3
    const/16 v13, 0x79

    if-ge v3, v13, :cond_4

    const/4 v10, 0x4

    const/4 v8, 0x4

    goto :goto_1

    :cond_4
    const/16 v13, 0x151

    if-ge v3, v13, :cond_5

    const/4 v10, 0x5

    const/16 v8, 0x8

    goto :goto_1

    :cond_5
    const/16 v13, 0x381

    if-ge v3, v13, :cond_6

    const/4 v10, 0x6

    const/16 v8, 0x10

    goto :goto_1

    :cond_6
    const/16 v13, 0x901

    if-ge v3, v13, :cond_7

    const/4 v10, 0x7

    const/16 v8, 0x20

    goto :goto_1

    :cond_7
    const/16 v10, 0x8

    const/16 v8, 0x7f

    goto :goto_1

    :cond_8
    array-length v6, v5

    goto :goto_2

    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0}, Lcom/android/org/bouncycastle/math/ec/WNafMultiplier;->windowNaf(BLjava/math/BigInteger;)[B

    move-result-object v11

    array-length v2, v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    add-int/lit8 v1, v2, -0x1

    :goto_4
    if-ltz v1, :cond_c

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    aget-byte v13, v11, v1

    if-eqz v13, :cond_a

    aget-byte v13, v11, v1

    if-lez v13, :cond_b

    aget-byte v13, v11, v1

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x2

    aget-object v13, v5, v13

    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    :cond_a
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_b
    aget-byte v13, v11, v1

    neg-int v13, v13

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x2

    aget-object v13, v5, v13

    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    goto :goto_5

    :cond_c
    invoke-virtual {v12, v5}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v12, v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwiceP(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    return-object v7
.end method

.method public windowNaf(BLjava/math/BigInteger;)[B
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [B

    shl-int v7, v10, p1

    int-to-short v2, v7

    int-to-long v7, v2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {p2, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    sub-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    :goto_1
    aget-byte v7, v5, v0

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    move v1, v0

    :goto_2
    invoke-virtual {p2, v10}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    goto :goto_1

    :cond_1
    aput-byte v9, v5, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    new-array v6, v1, [B

    invoke-static {v5, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v6
.end method
