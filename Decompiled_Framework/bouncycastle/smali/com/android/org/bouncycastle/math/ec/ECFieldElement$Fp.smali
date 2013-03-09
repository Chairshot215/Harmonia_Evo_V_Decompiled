.class public Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# instance fields
.field q:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value too large in field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    return-void
.end method

.method private static lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    invoke-virtual {p3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v7

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    move-object v3, p1

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v5, v6, -0x1

    :goto_0
    add-int/lit8 v8, v7, 0x1

    if-lt v5, v8, :cond_1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v5, 0x1

    :goto_2
    if-gt v5, v7, :cond_2

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/math/BigInteger;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    aput-object v4, v8, v10

    return-object v8
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "Fp"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "not done yet"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v12, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v15

    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :goto_0
    return-object v12

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    sget-object v14, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v13, v7, v14}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    const/4 v13, 0x2

    invoke-virtual {v8, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    :cond_4
    new-instance v1, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v13}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    invoke-direct {v1, v13, v9}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-gez v13, :cond_4

    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v13, v7, v14}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-static {v13, v1, v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v10

    const/4 v13, 0x0

    aget-object v3, v10, v13

    const/4 v13, 0x1

    aget-object v4, v10, v13

    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v4, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :cond_5
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    new-instance v12, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-direct {v12, v13, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :cond_6
    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    return-object v0
.end method
