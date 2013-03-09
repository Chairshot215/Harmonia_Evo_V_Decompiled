.class public Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    :cond_3
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    return-void
.end method

.method private static checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .locals 2

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only points on the same curve can be added or subtracted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 9

    move-object v1, p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-boolean v8, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {v6, v7, v3, v5, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0
.end method

.method declared-synchronized assertECMultiplier()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WNafMultiplier;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WNafMultiplier;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEncoded()[B
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_0

    new-array v0, v7, [B

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->access$000()Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)I

    move-result v3

    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->access$000()Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    new-array v0, v4, [B

    const/4 v4, 0x2

    aput-byte v4, v0, v6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    aput-byte v4, v0, v6

    :cond_1
    invoke-static {v1, v6, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->access$000()Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v2

    add-int v4, v3, v3

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    const/4 v4, 0x4

    aput-byte v4, v0, v6

    invoke-static {v1, v6, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v6, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 5

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->checkPoints(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    goto :goto_0
.end method

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 7

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    sget-object v5, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v4

    goto :goto_0
.end method
