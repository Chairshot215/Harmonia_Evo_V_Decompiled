.class public Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private representation:I

.field private t:I

.field private x:Lcom/android/org/bouncycastle/math/ec/IntArray;


# direct methods
.method private constructor <init>(IIIILcom/android/org/bouncycastle/math/ec/IntArray;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    goto :goto_0
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v0, p5, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    :goto_0
    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-lt p3, p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-void
.end method

.method public static checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 4

    instance-of v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-eq v2, v3, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not elements of the same field F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-eq v2, v3, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "One of the field elements are not elements has incorrect representation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 7

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object v6, p1

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v0, v6, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShifted(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
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
    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/IntArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "F2m"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getK1()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getRepresentation()I
    .locals 1

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/math/ec/IntArray;

    new-instance v15, Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v15, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v15, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    invoke-virtual {v15, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    invoke-virtual {v15, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-virtual {v15, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    :cond_0
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v7, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->setBit(I)V

    new-instance v6, Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v6, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    :goto_0
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/IntArray;->isZero()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/IntArray;->bitLength()I

    move-result v1

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/IntArray;->bitLength()I

    move-result v2

    sub-int v10, v1, v2

    if-gez v10, :cond_1

    move-object v14, v13

    move-object v13, v15

    move-object v15, v14

    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    neg-int v10, v10

    :cond_1
    shr-int/lit8 v12, v10, 0x5

    and-int/lit8 v11, v10, 0x1f

    invoke-virtual {v15, v11}, Lcom/android/org/bouncycastle/math/ec/IntArray;->shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v12}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShifted(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    invoke-virtual {v6, v11}, Lcom/android/org/bouncycastle/math/ec/IntArray;->shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-result-object v9

    invoke-virtual {v7, v9, v12}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShifted(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/IntArray;)V

    return-object v1
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 7

    move-object v6, p1

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget-object v1, v6, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/IntArray;->multiply(Lcom/android/org/bouncycastle/math/ec/IntArray;I)Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-result-object v5

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    aput v3, v1, v2

    invoke-virtual {v5, v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->reduce(I[I)V

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 6

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->square(I)Lcom/android/org/bouncycastle/math/ec/IntArray;

    move-result-object v5

    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    aput v3, v1, v2

    invoke-virtual {v5, v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->reduce(I[I)V

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
