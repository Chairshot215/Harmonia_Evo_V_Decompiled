.class Ljava/math/BitLevel;
.super Ljava/lang/Object;
.source "BitLevel.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitCount(Ljava/math/BigInteger;)I
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    const/4 v0, 0x0

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-lez v2, :cond_1

    :goto_1
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    :goto_2
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v1

    xor-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v2, v2, 0x5

    sub-int v0, v2, v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method static bitLength(Ljava/math/BigInteger;)I
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v0, v3, 0x5

    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v4, v4, -0x1

    aget v1, v3, v4

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    if-gez v3, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method static flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 13

    const/4 v8, 0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    iget v9, p0, Ljava/math/BigInteger;->sign:I

    if-nez v9, :cond_1

    move v7, v8

    :goto_0
    shr-int/lit8 v4, p1, 0x5

    and-int/lit8 v0, p1, 0x1f

    add-int/lit8 v9, v4, 0x1

    iget v10, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v6, v9, 0x1

    new-array v5, v6, [I

    shl-int v1, v8, v0

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    iget v9, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v8, v11, v5, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, p0, Ljava/math/BigInteger;->sign:I

    if-gez v8, :cond_7

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v4, v8, :cond_2

    aput v1, v5, v4

    :cond_0
    :goto_1
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v7, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v8

    :cond_1
    iget v7, p0, Ljava/math/BigInteger;->sign:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    if-le v4, v2, :cond_3

    aget v8, v5, v4

    xor-int/2addr v8, v1

    aput v8, v5, v4

    goto :goto_1

    :cond_3
    if-ge v4, v2, :cond_5

    neg-int v8, v1

    aput v8, v5, v4

    add-int/lit8 v3, v4, 0x1

    :goto_2
    if-ge v3, v2, :cond_4

    aput v12, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    aget v8, v5, v3

    add-int/lit8 v9, v8, -0x1

    aput v9, v5, v3

    aput v8, v5, v3

    goto :goto_1

    :cond_5
    move v3, v4

    aget v8, v5, v4

    neg-int v8, v8

    xor-int/2addr v8, v1

    neg-int v8, v8

    aput v8, v5, v3

    aget v8, v5, v3

    if-nez v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    :goto_3
    aget v8, v5, v3

    if-ne v8, v12, :cond_6

    aput v11, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    aget v8, v5, v3

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v3

    goto :goto_1

    :cond_7
    aget v8, v5, v4

    xor-int/2addr v8, v1

    aput v8, v5, v4

    goto :goto_1
.end method

.method static nonZeroDroppedBits(I[I)Z
    .locals 5

    shr-int/lit8 v2, p0, 0x5

    and-int/lit8 v0, p0, 0x1f

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    aget v3, p1, v1

    rsub-int/lit8 v4, v0, 0x20

    shl-int/2addr v3, v4

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static shiftLeftOneBit(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v1, v2, 0x1

    new-array v0, v1, [I

    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v0, v3, v2}, Ljava/math/BitLevel;->shiftLeftOneBit([I[II)V

    new-instance v3, Ljava/math/BigInteger;

    iget v4, p0, Ljava/math/BigInteger;->sign:I

    invoke-direct {v3, v4, v1, v0}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method

.method static shiftLeftOneBit([I[II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p1, v1

    shl-int/lit8 v3, v2, 0x1

    or-int/2addr v3, v0

    aput v3, p0, v1

    ushr-int/lit8 v0, v2, 0x1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    aput v0, p0, p2

    :cond_1
    return-void
.end method

.method static shiftRight(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 6

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v4, :cond_1

    iget v4, p0, Ljava/math/BigInteger;->sign:I

    if-gez v4, :cond_0

    sget-object v4, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    iget v4, p0, Ljava/math/BigInteger;->numberLength:I

    sub-int v3, v4, v1

    add-int/lit8 v4, v3, 0x1

    new-array v2, v4, [I

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v2, v3, v4, v1, p1}, Ljava/math/BitLevel;->shiftRight([II[III)Z

    iget v4, p0, Ljava/math/BigInteger;->sign:I

    if-gez v4, :cond_6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    if-nez v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-lt v0, v1, :cond_3

    if-lez p1, :cond_6

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    rsub-int/lit8 v5, p1, 0x20

    shl-int/2addr v4, v5

    if-eqz v4, :cond_6

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    aget v4, v2, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    aget v4, v2, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v0

    :cond_6
    new-instance v4, Ljava/math/BigInteger;

    iget v5, p0, Ljava/math/BigInteger;->sign:I

    invoke-direct {v4, v5, v3, v2}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_0
.end method

.method static shiftRight([II[III)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v3, p2, v1

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    and-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    if-nez p4, :cond_2

    invoke-static {p2, p3, p0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, p1

    :goto_2
    return v0

    :cond_2
    rsub-int/lit8 v2, p4, 0x20

    aget v3, p2, v1

    shl-int/2addr v3, v2

    if-nez v3, :cond_3

    :goto_3
    and-int/2addr v0, v4

    const/4 v1, 0x0

    :goto_4
    add-int/lit8 v3, p1, -0x1

    if-ge v1, v3, :cond_4

    add-int v3, v1, p3

    aget v3, p2, v3

    ushr-int/2addr v3, p4

    add-int v4, v1, p3

    add-int/lit8 v4, v4, 0x1

    aget v4, p2, v4

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    aput v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    move v4, v5

    goto :goto_3

    :cond_4
    add-int v3, v1, p3

    aget v3, p2, v3

    ushr-int/2addr v3, p4

    aput v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static testBit(Ljava/math/BigInteger;I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
