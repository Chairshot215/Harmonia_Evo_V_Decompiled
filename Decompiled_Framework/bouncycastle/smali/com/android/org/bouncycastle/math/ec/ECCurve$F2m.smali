.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private h:Ljava/math/BigInteger;

.field private infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private mu:B

.field private n:Ljava/math/BigInteger;

.field private si:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iput-object p7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    iput-object p8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k1 must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k3 must be 0 if k2 == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gt p3, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be > k1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gt p4, p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k3 must be > k2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, p5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p0, p6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method private decompressPoint([BI)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 12

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v9, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v8, 0x0

    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_4

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->solveQuadradicEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    if-nez v10, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid point compression"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v11, 0x1

    :cond_2
    if-eq v11, p2, :cond_3

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    sget-object v6, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-virtual {v10, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    :cond_3
    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    :cond_4
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v1, p0, v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1
.end method

.method private solveQuadradicEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 14

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    sget-object v5, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v12, 0x0

    move-object v7, v0

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v6, Ljava/math/BigInteger;

    iget v13, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    invoke-direct {v6, v13, v9}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    move-object v12, v0

    move-object v10, p1

    const/4 v8, 0x1

    :goto_1
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v2, v2, -0x1

    if-gt v8, v2, :cond_2

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v12

    goto :goto_0
.end method


# virtual methods
.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    aget-byte v0, p1, v11

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid point encoding 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    array-length v0, p1

    if-le v0, v12, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid point encoding"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    :goto_0
    return-object v8

    :pswitch_2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [B

    array-length v0, v7

    invoke-static {p1, v12, v7, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v0, p1, v11

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v7, v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->decompressPoint([BI)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    goto :goto_0

    :cond_1
    invoke-direct {p0, v7, v12}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->decompressPoint([BI)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    goto :goto_0

    :pswitch_3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    new-array v9, v0, [B

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    new-array v10, v0, [B

    array-length v0, v9

    invoke-static {p1, v12, v9, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v9

    add-int/lit8 v0, v0, 0x1

    array-length v1, v10

    invoke-static {p1, v0, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v8, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v12, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v12, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {v8, p0, v0, v1, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
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
    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method declared-synchronized getMu()B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)B

    move-result v0

    iput-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    :cond_0
    iget-byte v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->mu:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method declared-synchronized getSi()[Ljava/math/BigInteger;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isKoblitz()Z
    .locals 2

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrinomial()Z
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
