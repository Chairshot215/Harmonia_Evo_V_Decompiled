.class Lcom/android/org/bouncycastle/math/ec/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# instance fields
.field private m_ints:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(Ljava/math/BigInteger;I)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Only positive Integers allowed"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v13, 0x0

    aget-byte v13, v1, v13

    if-nez v13, :cond_3

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v13, v5, 0x3

    div-int/lit8 v10, v13, 0x4

    move/from16 v0, p2

    if-ge v10, v0, :cond_5

    move/from16 v0, p2

    new-array v13, v0, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    :goto_0
    add-int/lit8 v8, v10, -0x1

    rem-int/lit8 v13, v5, 0x4

    add-int v11, v13, v6

    const/4 v12, 0x0

    move v3, v6

    if-ge v6, v11, :cond_7

    :goto_1
    if-ge v3, v11, :cond_6

    shl-int/lit8 v12, v12, 0x8

    aget-byte v2, v1, v3

    if-gez v2, :cond_4

    add-int/lit16 v2, v2, 0x100

    :cond_4
    or-int/2addr v12, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-array v13, v10, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v9, v8, -0x1

    aput v12, v13, v8

    move v8, v9

    :cond_7
    :goto_2
    if-ltz v8, :cond_1

    const/4 v12, 0x0

    const/4 v7, 0x0

    move v4, v3

    :goto_3
    const/4 v13, 0x4

    if-ge v7, v13, :cond_9

    shl-int/lit8 v12, v12, 0x8

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v1, v4

    if-gez v2, :cond_8

    add-int/lit16 v2, v2, 0x100

    :cond_8
    or-int/2addr v12, v2

    add-int/lit8 v7, v7, 0x1

    move v4, v3

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aput v12, v13, v8

    add-int/lit8 v8, v8, -0x1

    move v3, v4

    goto :goto_2
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void
.end method

.method private resizedInts(I)[I
    .locals 5

    const/4 v4, 0x0

    new-array v1, p1, [I

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v2, v3

    if-ge v2, p1, :cond_0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    move v0, p1

    goto :goto_0
.end method


# virtual methods
.method public addShifted(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    add-int v1, v2, p2

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v3, v3

    if-le v1, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v4, v0, p2

    aget v5, v3, v4

    iget-object v6, p1, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v0

    xor-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bitLength()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v3, v2, -0x1

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v4, v3

    shl-int/lit8 v4, v3, 0x5

    add-int/lit8 v0, v4, 0x1

    const/high16 v4, -0x1

    and-int/2addr v4, v1

    if-eqz v4, :cond_4

    const/high16 v4, -0x100

    and-int/2addr v4, v1

    if-eqz v4, :cond_3

    add-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v1, v1, 0x18

    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x10

    ushr-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_4
    const/16 v4, 0xff

    if-le v1, v4, :cond_2

    add-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>([I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    instance-of v4, p1, Lcom/android/org/bouncycastle/math/ec/IntArray;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    iget-object v5, v1, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v0

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public flipBit(I)V
    .locals 5

    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    const/4 v3, 0x1

    shl-int v0, v3, v1

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    xor-int/2addr v4, v0

    aput v4, v3, v2

    return-void
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v0

    return v0
.end method

.method public getUsedLength()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v0, v2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v2, v2, v1

    if-eqz v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v2, v0

    if-eqz v2, :cond_3

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_3
    if-gtz v0, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isZero()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/IntArray;I)Lcom/android/org/bouncycastle/math/ec/IntArray;
    .locals 7

    add-int/lit8 v6, p2, 0x1f

    shr-int/lit8 v4, v6, 0x5

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v6, v6

    if-ge v6, v4, :cond_0

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p1, v6}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>([I)V

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/IntArray;

    add-int v6, p2, p2

    add-int/lit8 v6, v6, 0x1f

    shr-int/lit8 v6, v6, 0x5

    invoke-direct {v1, v6}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    const/4 v5, 0x1

    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x20

    if-ge v3, v6, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v6, v6, v2

    and-int/2addr v6, v5

    if-eqz v6, :cond_1

    invoke-virtual {v1, v0, v2}, Lcom/android/org/bouncycastle/math/ec/IntArray;->addShifted(Lcom/android/org/bouncycastle/math/ec/IntArray;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    shl-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->shiftLeft()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public reduce(I[I)V
    .locals 4

    add-int v3, p1, p1

    add-int/lit8 v1, v3, -0x2

    :goto_0
    if-lt v1, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sub-int v0, v1, p1

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->flipBit(I)V

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;->flipBit(I)V

    array-length v2, p2

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    aget v3, p2, v2

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->flipBit(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v3, v3, 0x5

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    return-void
.end method

.method public setBit(I)V
    .locals 5

    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    const/4 v3, 0x1

    shl-int v0, v3, v1

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v3, v2

    or-int/2addr v4, v0

    aput v4, v3, v2

    return-void
.end method

.method public shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/IntArray;
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_0

    const/16 v4, 0x1f

    if-le p1, v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shiftLeft() for max 31 bits , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "bit shift is not possible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    add-int/lit8 v4, v3, 0x1

    new-array v1, v4, [I

    rsub-int/lit8 v2, p1, 0x20

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v5

    shl-int/2addr v4, p1

    aput v4, v1, v5

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v3, :cond_3

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v0

    shl-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    ushr-int/2addr v5, v2

    or-int/2addr v4, v5

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    ushr-int/2addr v4, v2

    aput v4, v1, v3

    new-instance p0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>([I)V

    goto :goto_0
.end method

.method public shiftLeft()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    if-gez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v4, v4

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v1

    if-gez v4, :cond_4

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v4, v1

    shl-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v4, v1

    or-int/lit8 v5, v5, 0x1

    aput v5, v4, v1

    :cond_3
    move v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public square(I)Lcom/android/org/bouncycastle/math/ec/IntArray;
    .locals 12

    const/4 v11, 0x4

    const/16 v9, 0x10

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    add-int/lit8 v9, p1, 0x1f

    shr-int/lit8 v3, v9, 0x5

    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    array-length v9, v9

    if-ge v9, v3, :cond_0

    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/math/ec/IntArray;->resizedInts(I)[I

    move-result-object v9

    iput-object v9, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/IntArray;

    add-int v9, v3, v3

    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/math/ec/IntArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v11, :cond_1

    ushr-int/lit8 v7, v7, 0x8

    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v9, v9, v1

    mul-int/lit8 v10, v2, 0x4

    ushr-int/2addr v9, v10

    and-int/lit8 v5, v9, 0xf

    aget v9, v4, v5

    shl-int/lit8 v8, v9, 0x18

    or-int/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v9, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v10, v1, v1

    aput v7, v9, v10

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v9, v9, v1

    ushr-int/lit8 v6, v9, 0x10

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v11, :cond_2

    ushr-int/lit8 v7, v7, 0x8

    mul-int/lit8 v9, v2, 0x4

    ushr-int v9, v6, v9

    and-int/lit8 v5, v9, 0xf

    aget v9, v4, v5

    shl-int/lit8 v8, v9, 0x18

    or-int/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v9, v0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int v10, v1, v1

    add-int/lit8 v10, v10, 0x1

    aput v7, v9, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public testBit(I)Z
    .locals 5

    const/4 v3, 0x1

    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    shl-int v0, v3, v1

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v4, v4, v2

    and-int/2addr v4, v0

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 13

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v10

    if-nez v10, :cond_0

    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    :goto_0
    return-object v11

    :cond_0
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v12, v10, -0x1

    aget v4, v11, v12

    const/4 v11, 0x4

    new-array v7, v11, [B

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x3

    move v2, v1

    :goto_1
    if-ltz v6, :cond_2

    mul-int/lit8 v11, v6, 0x8

    ushr-int v11, v4, v11

    int-to-byte v8, v11

    if-nez v9, :cond_1

    if-eqz v8, :cond_6

    :cond_1
    const/4 v9, 0x1

    add-int/lit8 v1, v2, 0x1

    aput-byte v8, v7, v2

    :goto_2
    add-int/lit8 v6, v6, -0x1

    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v10, -0x1

    mul-int/lit8 v11, v11, 0x4

    add-int v3, v11, v2

    new-array v0, v3, [B

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_3

    aget-byte v11, v7, v6

    aput-byte v11, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v10, -0x2

    move v1, v2

    :goto_4
    if-ltz v5, :cond_5

    const/4 v6, 0x3

    move v2, v1

    :goto_5
    if-ltz v6, :cond_4

    add-int/lit8 v1, v2, 0x1

    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v11, v11, v5

    mul-int/lit8 v12, v6, 0x8

    ushr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v2

    add-int/lit8 v6, v6, -0x1

    move v2, v1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, -0x1

    move v1, v2

    goto :goto_4

    :cond_5
    new-instance v11, Ljava/math/BigInteger;

    const/4 v12, 0x1

    invoke-direct {v11, v12, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/IntArray;->getUsedLength()I

    move-result v4

    if-nez v4, :cond_0

    const-string v5, "0"

    :goto_0
    return-object v5

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    add-int/lit8 v6, v4, -0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v4, -0x2

    :goto_1
    if-ltz v2, :cond_2

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/IntArray;->m_ints:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_2
    const/16 v5, 0x8

    if-ge v1, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
